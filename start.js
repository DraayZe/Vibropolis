// start.js
import 'dotenv/config'
import('./.output/server/index.mjs')
console.log('DATABASE_URL:', process.env.DATABASE_URL)
