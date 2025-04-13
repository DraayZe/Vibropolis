// server/api/artistes/index.ts
import { PrismaClient } from '@prisma/client'

const prisma = new PrismaClient()

export default defineEventHandler(async () => {
    const artistes = await prisma.artiste.findMany()
    return artistes
})
