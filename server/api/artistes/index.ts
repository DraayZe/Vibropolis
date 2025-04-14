// server/api/artistes/index.ts
import { PrismaClient } from '@prisma/client'
import { getQuery } from 'h3'

const prisma = new PrismaClient()

export default defineEventHandler(async (event) => {
    const query = getQuery(event)
    const dateParam = query.date as string | undefined

    if (dateParam) {
        // Convertir la date passée en paramètre en un intervalle d'une journée.
        const startDate = new Date(dateParam)
        startDate.setHours(0, 0, 0, 0)

        const endDate = new Date(dateParam)
        endDate.setHours(23, 59, 59, 999)

        return await prisma.artiste.findMany({
            where: {
                datePerformance: {
                    gte: startDate,
                    lte: endDate,
                },
            },
        })
    }

    // Si aucun paramètre n'est fourni, retourne tous les artistes
    return await prisma.artiste.findMany()
})
