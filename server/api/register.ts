// server/api/register.ts
import { PrismaClient } from '@prisma/client'
import { hash } from 'bcrypt'

const prisma = new PrismaClient()

export default defineEventHandler(async (event) => {
    const body = await readBody(event)

    const hashedPassword = await hash(body.motDePasse, 10)

    const user = await prisma.utilisateur.create({
        data: {
            nom: body.nom,
            prenom: body.prenom,
            email: body.email,
            motDePasse: hashedPassword,
        },
    })

    return {
        message: 'Utilisateur créé',
        user: {
            id: user.id,
            nom: user.nom,
            email: user.email
        }
    }
})
