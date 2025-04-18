import { PrismaClient } from '@prisma/client'
const prisma = new PrismaClient()

export default defineEventHandler(async (event) => {
    const utilisateurId = event.context?.user?.id
    if (!utilisateurId) return []

    const achats = await prisma.achatPass.findMany({
        where: { utilisateurId },
        include: { pass: true },
        orderBy: { dateAchat: 'desc' }
    })

    return achats
})
