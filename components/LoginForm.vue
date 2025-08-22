<template>
  <form @submit.prevent="login" novalidate>
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

    <div v-if="errorMessage" class="mb-4 text-red-600 font-semibold">
      {{ errorMessage }}
    </div>

    <button
        type="submit"
        class="w-full py-3 rounded-full bg-purple-600 hover:bg-purple-700 transition disabled:opacity-50 text-white font-medium"
    >
      Se connecter
    </button>
  </form>
</template>

<script setup>
import { ref } from 'vue'
import { useUserStore } from '~/stores/user'
import { useRouter } from 'vue-router'

const userStore = useUserStore()
const router = useRouter()

const email = ref('')
const motDePasse = ref('')
const errorMessage = ref('')

const login = async () => {
  errorMessage.value = ''
  try {
    const response = await $fetch('/api/login', {
      method: 'POST',
      body: {
        email: email.value,
        motDePasse: motDePasse.value,
      },
    })
    userStore.setUser({
      user: response.user,
      token: response.token,
    })
    localStorage.setItem('token', response.token)
    router.push('/')
  } catch (error) {
    console.error('Erreur de connexion', error)
    errorMessage.value = "Email ou mot de passe incorrect."
  }
}
</script>
