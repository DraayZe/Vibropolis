<template>
  <form @submit.prevent="register" novalidate>
    <div class="mb-4">
      <label for="nom" class="block text-gray-700 mb-1">Nom</label>
      <input
          id="nom"
          v-model="nom"
          type="text"
          placeholder="Votre nom"
          class="w-full p-3 rounded-md border-gray-300 border text-[#1E1E1E] placeholder-gray-400 focus:outline-none focus:ring-2 focus:ring-purple-500"
          required
      />
    </div>
    <div class="mb-4">
      <label for="prenom" class="block text-gray-700 mb-1">Prénom</label>
      <input
          id="prenom"
          v-model="prenom"
          type="text"
          placeholder="Votre prénom"
          class="w-full p-3 rounded-md border-gray-300 border text-[#1E1E1E] placeholder-gray-400 focus:outline-none focus:ring-2 focus:ring-purple-500"
          required
      />
    </div>
    <div class="mb-4">
      <label for="email" class="block text-gray-700 mb-1">Email</label>
      <input
          id="email"
          v-model="email"
          type="email"
          placeholder="votre@email.com"
          class="w-full p-3 rounded-md border-gray-300 border text-[#1E1E1E] placeholder-gray-400 focus:outline-none focus:ring-2 focus:ring-purple-500"
          required
      />
    </div>
    <div class="mb-6">
      <label for="password" class="block text-gray-700 mb-1">Mot de passe</label>
      <input
          id="password"
          v-model="motDePasse"
          type="password"
          placeholder="••••••••"
          class="w-full p-3 rounded-md border-gray-300 border text-[#1E1E1E] placeholder-gray-400 focus:outline-none focus:ring-2 focus:ring-purple-500"
          required
      />
    </div>
    <button
        type="submit"
        class="w-full py-3 rounded-full bg-purple-600 hover:bg-purple-700 transition disabled:opacity-50 text-white font-medium"
    >
      S'inscrire
    </button>
  </form>
</template>

<script setup>
import { useUserStore } from '~/stores/user'
import { useRouter } from 'vue-router'

const nom = ref('')
const prenom = ref('')
const email = ref('')
const motDePasse = ref('')

const userStore = useUserStore()
const router = useRouter()

const register = async () => {
  try {
    const response = await $fetch('/api/register', {
      method: 'POST',
      body: {
        nom: nom.value,
        prenom: prenom.value,
        email: email.value,
        motDePasse: motDePasse.value
      }
    })

    // Sauvegarder l'utilisateur dans Pinia
    userStore.setUser({
      user: response.user,
      token: response.token,
    })

    // Sauvegarder le token dans le localStorage
    localStorage.setItem('token', response.token)

    // Rediriger vers la page mon compte
    router.push('/profile')

  } catch (error) {
    console.error('Erreur lors de l’inscription', error)
    alert(error?.data?.statusMessage || 'Erreur inconnue')
  }
}
</script>
