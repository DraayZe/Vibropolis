import { PrismaClient } from '@prisma/client'
const prisma = new PrismaClient()

export default defineEventHandler(async (event) => {
    const query = getQuery(event)
    const userId = parseInt(query.userId)

    if (!userId) {
        return { error: 'User ID manquant' }
    }

    const achats = await prisma.achatPass.findMany({
        where: {
            utilisateurId: userId,
        },
        include: {
            pass: true,
        },
        orderBy: {
            dateAchat: 'desc',
        },
    })

    return achats
})
