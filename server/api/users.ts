// server/api/users.ts
import { PrismaClient } from '@prisma/client'

const prisma = new PrismaClient()

export default defineEventHandler(async (event) => {
    const utilisateurs = await prisma.utilisateur.findMany()
    return utilisateurs
})

