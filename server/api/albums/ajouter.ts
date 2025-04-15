import { PrismaClient } from '@prisma/client'
import formidable from 'formidable'
import { writeFile, readFile } from 'fs/promises'
import { join } from 'path'

const prisma = new PrismaClient()

export const config = {
    api: {
        bodyParser: false,
    },
}

export default defineEventHandler(async (event) => {
    const form = formidable({ multiples: false, uploadDir: '/tmp', keepExtensions: true })

    const { fields, files } = await new Promise<{ fields: formidable.Fields; files: formidable.Files }>((resolve, reject) => {
        form.parse(event.node.req, (err, fields, files) => {
            if (err) reject(err)
            else resolve({ fields, files })
        })
    })

    const file = Array.isArray(files.photo) ? files.photo[0] : files.photo

    let photoPath = null
    if (file && file.filepath && file.originalFilename) {
        const fileData = await readFile(file.filepath)
        const fileName = Date.now() + '-' + file.originalFilename
        const destination = join(process.cwd(), 'public', 'uploads', fileName)
        await writeFile(destination, fileData)
        photoPath = `/uploads/${fileName}`
    }

    const nouvelAlbum = await prisma.album.create({
        data: {
            titre: String(fields.titre),
            dateSortie: new Date(String(fields.dateSortie)),
            artisteId: parseInt(String(fields.artisteId)),
            photo: photoPath,
        },
    })

    return { success: true, album: nouvelAlbum }
})
