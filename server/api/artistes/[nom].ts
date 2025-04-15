import  prisma from '~/server/utils/prisma'
import { defineEventHandler, createError } from 'h3'

export default defineEventHandler(async (event) => {
    const { nom } = event.context.params as { nom: string }

    const artiste = await prisma.artiste.findFirst({
        where: { nom: decodeURIComponent(nom) },
        include: { albums: true },
    })

    if (!artiste) {
        throw createError({
            statusCode: 404,
            statusMessage: `Artiste "${nom}" non trouvé`,
        })
    }

    return artiste
})
