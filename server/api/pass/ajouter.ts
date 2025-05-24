import prisma from "~/server/utils/prisma";
import formidable from 'formidable'
import { writeFile, readFile } from 'fs/promises'
import { join } from 'path'

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

    const dates = String(fields.date)
        .split(',')
        .map(dateStr => new Date(dateStr.trim()))

    const nouveauPass = await prisma.pass.create({
        data: {
            nom: String(fields.nom),
            prix: parseFloat(String(fields.prix)),
            duree: parseInt(String(fields.duree)),
            photo: photoPath,
            dates: String(fields.dates),
        },
    })


    return { success: true, pass: nouveauPass }
})
