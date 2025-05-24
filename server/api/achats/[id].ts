import prisma from "~/server/utils/prisma";

export default defineEventHandler(async (event) => {
    const id = parseInt(event.context.params.id)

    if (isNaN(id)) {
        return sendError(event, createError({ statusCode: 400, statusMessage: 'ID invalide' }))
    }

    try {
        await prisma.achatPass.delete({
            where: { id },
        })
        return { success: true }
    } catch (error) {
        console.error(error)
        return sendError(event, createError({ statusCode: 500, statusMessage: 'Erreur serveur' }))
    }
})
