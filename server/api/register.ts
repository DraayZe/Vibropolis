import prisma from "~/server/utils/prisma";
import { hash } from 'bcrypt'
import jwt from 'jsonwebtoken'
const secret = 'vibropolis_secret'

export default defineEventHandler(async (event) => {
    const body = await readBody(event)

    // Hasher le mot de passe
    const hashedPassword = await hash(body.motDePasse, 10)

    // Créer l'utilisateur en base
    const user = await prisma.utilisateur.create({
        data: {
            nom: body.nom,
            prenom: body.prenom,
            email: body.email,
            motDePasse: hashedPassword,
        },
    })

    const token = jwt.sign(
        { id: user.id, email: user.email },
        secret,
        { expiresIn: '7d' }
    )

    return {
        message: 'Utilisateur créé',
        token,
        user: {
            id: user.id,
            nom: user.nom,
            email: user.email
        },
    }
})
