import { PrismaClient } from '@prisma/client'
const prisma = new PrismaClient()

export default defineEventHandler(async (event) => {
    const body = await readBody(event)
    const { passId } = body

    const utilisateurId = event.context?.user?.id
    if (!utilisateurId) {
        return { success: false, error: 'Non autorisé' }
    }

    const achat = await prisma.achatPass.create({
        data: {
            passId: passId,
            utilisateurId: utilisateurId,
        },
    })

    return { success: true, achat }
})
