<script setup>
import { ref, onMounted, computed } from 'vue'
import { useUserStore } from '~/stores/user'
import { navigateTo } from '#app'
import { useRouter } from 'vue-router'

const userStore = useUserStore()
const user = computed(() => userStore.user)
const achats = ref([])

const fetchAchats = async () => {
  if (userStore.user?.id) {
    const res = await fetch(`/api/achats/achats?userId=${userStore.user.id}`)
    achats.value = await res.json()
  }
}

const deleteAchat = async (achatId) => {
  const confirmed = confirm('Es-tu sûr de vouloir supprimer ce pass ?')
  if (!confirmed) return

  const res = await fetch(`/api/achats/${achatId}`, {
    method: 'DELETE'
  })

  if (res.ok) {
    achats.value = achats.value.filter((a) => a.id !== achatId)
  } else {
    alert('Erreur lors de la suppression.')
  }
}

const logout = () => {
  userStore.logout()
  navigateTo('/login')
}

onMounted(() => {
  userStore.loadFromLocalStorage()
  fetchAchats()
})

console.log('user', user.value)
</script>


<template>
  <div class="min-h-screen bg-[#1E1E1E] text-white py-10 px-6">
    <div v-if="user" class="max-w-4xl mx-auto">
      <h1 class="text-4xl font-bold mb-2">Bienvenue {{ user.nom }} </h1>
      <p class="text-gray-400 mb-6">Email : {{ user.email }}</p>
      <button @click="logout" class="bg-red-500 hover:bg-red-600 text-white px-4 py-2 rounded mb-8">
        Se déconnecter
      </button>

      <section class="bg-[#121212] p-6 rounded-lg shadow-md">
        <h2 class="text-3xl font-bold mb-4">🎟️ Mes achats </h2>

        <div v-if="achats.length === 0" class="text-gray-400">
          <p class="mb-4">Tu n’as encore acheté aucun pass.</p>
          <NuxtLink to="/billeterie">
            <button class="bg-indigo-600 hover:bg-indigo-700 text-white px-4 py-2 rounded">
              Acheter un pass
            </button>
          </NuxtLink>
        </div>

        <ul v-else class="grid gap-6 sm:grid-cols-2 mt-4">
          <li
              v-for="achat in achats"
              :key="achat.id"
              class=" p-4 rounded-md shadow"
          >
            <img :src="achat.pass.photo" class="w-full h-48 object-cover rounded mb-4" />
            <h3 class="text-xl font-semibold mb-2">{{ achat.pass.nom }}</h3>
            <p class="text-sm text-gray-400 mb-4">
              Acheté le {{ new Date(achat.dateAchat).toLocaleDateString() }}
            </p>
            <button
                @click="deleteAchat(achat.id)"
                class="bg-red-600 hover:bg-red-700 px-3 py-2 rounded text-white"
            >
              Supprimer ce pass
            </button>
          </li>
        </ul>
      </section>
    </div>

    <div v-else class="text-center mt-10">
      <p>Chargement...</p>
    </div>
  </div>
</template>

