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

import { ref, onMounted } from 'vue'

const achats = ref([])

onMounted(async () => {
  const res = await fetch('/api/utilisateur/achats')
  const data = await res.json()
  achats.value = data
})

</script>


<template>
  <div v-if="user">
    <h1>Bienvenue {{ user.nom }}</h1>
    <p>Email : {{ user.email }}</p>
    <button @click="logout">Se déconnecter</button>
  </div>
  <div v-else>
    <p>Chargement...</p>
  </div>

  <div class="text-white">
    <h2 class="text-3xl font-bold mb-4">Mes achats de pass</h2>
    <div v-if="achats.length === 0">Tu n’as encore acheté aucun pass.</div>
    <ul>
      <li v-for="achat in achats" :key="achat.id" class="mb-4 p-4 bg-gray-800 rounded-md">
        <img :src="achat.pass.photo" class="w-32 mb-2 rounded" />
        <h3 class="text-xl font-semibold">{{ achat.pass.nom }}</h3>
        <p>{{ achat.pass.description }}</p>
        <p>Durée : {{ achat.pass.duree }} jours</p>
        <p>Prix : {{ achat.pass.prix }}€</p>
        <p>Acheté le {{ new Date(achat.dateAchat).toLocaleDateString() }}</p>
      </li>
    </ul>
  </div>
</template>


