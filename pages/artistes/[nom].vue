<script setup lang="ts">
import { useRoute } from 'vue-router'
const route = useRoute()
console.log(route.params.nom)

interface Album {
  id: number
  titre: string
  dateSortie: string
  photo: string
}

interface Artiste {
  id: number
  nom: string
  description: string
  photo: string
  datePerformance: string
  albums?: Album[]
}

const { data: artiste } = await useFetch<Artiste>(`/api/artistes/${route.params.nom}`)


</script>

<template>
  <div v-if="artiste" class="text-red bg-[#1E1E1E] min-h-screen p-10">
    <p class="text-white">{{artiste.nom}}</p>
    <img :src="artiste.photo" alt="Photo de l'artiste" class="w-96 h-full object-cover rounded mb-2">
    <div v-if="artiste.albums && artiste.albums.length" class="mt-6">
      <h2 class="text-2xl font-bold text-white mb-4">Albums</h2>
      <ul class="space-y-2 flex">
        <li v-for="album in artiste.albums" :key="album.id" class="text-white">
          <p class="text-lg font-semibold">{{ album.titre }}</p>
          <p class="text-sm text-gray-400">Sorti le : {{ new Date(album.dateSortie).toLocaleDateString() }}</p>
         <img :src="album.photo" class="w-72 h-auto object-cover rounded mb-2" alt="Photo de l'album">
        </li>
      </ul>
    </div>
  </div>
  <div v-else class="text-red p-10">
    <p>Chargement de l'artiste...</p>
  </div>
</template>


