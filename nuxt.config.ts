// https://nuxt.com/docs/api/configuration/nuxt-config
export default defineNuxtConfig({
  compatibilityDate: '2024-11-01',
  devtools: { enabled: true },
  css: ['~/assets/css/main.css'],
  components: true,
  postcss: {
    plugins: {
      tailwindcss: {},
      autoprefixer: {},
    },
  },
  plugins: ['~/plugins/pinia.js'],
  modules: [
    '@vueuse/nuxt'
  ],
  build: {
    transpile: ['@motionone/vue']
  },

  // ✅ Ajout : configuration des variables d'environnement
  runtimeConfig: {
    // Accessible uniquement côté serveur
    DATABASE_URL: process.env.DATABASE_URL,
    JWT_SECRET: process.env.JWT_SECRET,

  }
})
