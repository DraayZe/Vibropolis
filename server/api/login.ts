// server/api/login.ts
import { PrismaClient } from '@prisma/client'
import { compare } from 'bcrypt'
import jwt from 'jsonwebtoken'

const prisma = new PrismaClient()
const secret = 'vibropolis_secret'

export default defineEventHandler(async (event) => {
    const body = await readBody(event)

    const user = await prisma.utilisateur.findUnique({
        where: { email: body.email },
    })

    if (!user) {
        throw createError({ statusCode: 401, statusMessage: 'Email inconnu' })
    }

    const passwordValid = await compare(body.motDePasse, user.motDePasse)

    if (!passwordValid) {
        throw createError({ statusCode: 401, statusMessage: 'Mot de passe incorrect' })
    }

    const token = jwt.sign(
        { id: user.id, email: user.email, isAdmin: user.isAdmin || false },
        secret,
        { expiresIn: '2h' }
    )

    return {
        message: 'Connexion réussie',
        token,
        user: {
            id: user.id,
            nom: user.nom,
            email: user.email,
            isAdmin: user.isAdmin
        }
    }

})
