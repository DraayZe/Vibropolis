<template>
  <form @submit.prevent="login">
    <input v-model="email" type="email" placeholder="Email" required />
    <input v-model="motDePasse" type="password" placeholder="Mot de passe" required />
    <button type="submit">Se connecter</button>
    <NuxtLink to="/register" class="text-blue-500">Pas encore inscrit ?</NuxtLink>
  </form>
</template>

<script setup>
import { useUserStore } from '~/stores/user'
import { useRouter } from 'vue-router'

const userStore = useUserStore()
const router = useRouter()

const email = ref('')
const motDePasse = ref('')

const login = async () => {
  try {
    const response = await $fetch('/api/login', {
      method: 'POST',
      body: {
        email: email.value,
        motDePasse: motDePasse.value,
      },
    })
    // Sauvegarder le token et l'utilisateur dans Pinia
    userStore.setUser({
      user: response.user,
      token: response.token,
    })
    // Sauvegarder le token dans localStorage pour qu'il persiste
    localStorage.setItem('token', response.token)
    router.push('/profile')
  } catch (error) {
    console.error('Erreur de connexion', error)
  }
}
</script>
