import { config } from 'dotenv'

export default defineNitroPlugin(() => {
    // Charge les variables du fichier .env
    config()
})
