<template>
  <div v-if="user">
    <h1>Bienvenue {{ user.nom }}</h1>
    <p>Email : {{ user.email }}</p>
    <button @click="logout">Se déconnecter</button>
  </div>
  <div v-else>
    <p>Chargement...</p>
  </div>
</template>

<script setup>
import { useUserStore } from '~/stores/user.ts'

const userStore = useUserStore()

// Charger les infos de l'utilisateur depuis Pinia
const user = computed(() => userStore.user)

onMounted(() => {
  // Charger le token depuis localStorage si disponible
  userStore.loadFromLocalStorage()
})

const logout = () => {
  userStore.logout()
  navigateTo('/login')
}
</script>
