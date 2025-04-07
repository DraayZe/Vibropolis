<template>
  <form @submit.prevent="register">
    <input v-model="nom" placeholder="Nom" required />
    <input v-model="prenom" placeholder="Prénom" required />
    <input v-model="email" type="email" placeholder="Email" required />
    <input v-model="motDePasse" type="password" placeholder="Mot de passe" required />
    <button type="submit">S'inscrire</button>
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
