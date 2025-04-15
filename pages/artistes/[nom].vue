<script setup lang="ts">
import { useRoute } from 'vue-router'
const route = useRoute()
console.log(route.params.nom)

interface Album {
  id: number
  titre: string
  dateSortie: string
}

interface Artiste {
  id: number
  nom: string
  genreMusical: string
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
  </div>

  <div v-else class="text-red p-10">
    <p>Chargement de l'artiste...</p>
  </div>
</template>


