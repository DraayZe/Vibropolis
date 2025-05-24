import prisma from "~/server/utils/prisma";

export default defineEventHandler(async (event) => {
    const body = await readBody(event)
    const { userId, passId } = body

    if (!userId || !passId) {
        return { error: 'Missing userId or passId' }
    }

    const achat = await prisma.achatPass.create({
        data: {
            utilisateurId: userId,
            passId: passId,
        },
        include: {
            pass: true,
        },
    })

    return achat
})
