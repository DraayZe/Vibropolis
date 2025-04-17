import { PrismaClient } from '@prisma/client'
import formidable from 'formidable'
import { writeFile, readFile } from 'fs/promises'
import { join } from 'path'

const prisma = new PrismaClient()

// Désactive le body parser par défaut de Nuxt pour les uploads
export const config = {
    api: {
        bodyParser: false,
    },
}

export default defineEventHandler(async (event) => {
    const form = formidable({ multiples: false, uploadDir: '/tmp', keepExtensions: true })

    // On parse les données du formulaire
    const { fields, files } = await new Promise<{ fields: formidable.Fields; files: formidable.Files }>((resolve, reject) => {
        form.parse(event.node.req, (err, fields, files) => {
            if (err) reject(err)
            else resolve({ fields, files })
        })
    })

    // Récupération de la photo
    const file = Array.isArray(files.photo) ? files.photo[0] : files.photo

    if (!file || !file.filepath || !file.originalFilename) {
        throw createError({ statusCode: 400, statusMessage: 'Fichier image manquant' })
    }

    // Déplacement de la photo dans /public/uploads
    const fileData = await readFile(file.filepath)
    const fileName = Date.now() + '-' + file.originalFilename
    const destination = join(process.cwd(), 'public', 'uploads', fileName)
    await writeFile(destination, fileData)

    // Enregistrement en base
    const nouvelArtiste = await prisma.artiste.create({
        data: {
            nom: String(fields.nom),
            description: String(fields.description),
            photo: `/uploads/${fileName}`,
            datePerformance: new Date(String(fields.datePerformance)),
            couleur: String(fields.couleur),

        }
    })

    return { success: true, artiste: nouvelArtiste }
})
