<script setup lang="ts">
import { computed } from 'vue'

interface Artiste {
  id: number
  nom: string
  description: string
  photo: string
  datePerformance: string
  albums?: Album[]
  couleur: string
}

interface Album {
  id: number
  titre: string
  dateSortie: string
  photo: string
}

const { data: artistes } = await useFetch<Artiste[]>('/api/artistes')

const idsAffiches = [4, 5, 8]

// Filtre les artistes en fonction des IDs puis les trie pour que l'id 5 soit en premier
const artistesFiltres = computed(() => {
  const filtered = (artistes.value || []).filter(a => idsAffiches.includes(a.id))
  // Trier en plaçant l'artiste avec id 5 en tête
  return filtered.sort((a, b) => {
    if (a.id === 5) return -1
    if (b.id === 5) return 1
    if (a.id === 8) return -1
    if (b.id === 8) return 1
    return 0
  })
})
</script>

<template>
  <div class="relative h-screen bg-no-repeat bg-cover bg-center flex items-center justify-center" style="background-image: url('/background-accueil.png')">

    <div class="flex flex-col items-center justify-center">
      <div class="flex">
        <p class="bg-[#1E1E1E] text-4xl font-BevellierBlack rounded-full m-2 p-6 text-white border-white border-2 hover:bg-[#120AF1]">13</p>
        <p class="bg-[#1E1E1E] text-4xl font-BevellierBlack rounded-full m-2 p-6 text-white border-white border-2 hover:bg-[#9747FF]">14</p>
        <p class="bg-[#1E1E1E] text-4xl font-BevellierBlack rounded-full m-2 p-6 text-white border-white border-2 hover:bg-[#EA0000]">15</p>
      </div>
      <div>
        <p class="text-8xl font-BevellierBlack text-white">JUIN</p>
      </div>
      <div>
        <p class="text-[#1E1E1E] text-7xl font-BevellierBlack bg-white rounded-full px-10 py-2">2025</p>
      </div>
    </div>

    <div class="absolute bottom-0 right-0 flex items-center p-4">
      <img src="/copyright.png" alt="Logo de Vibropolis" class="w-10">
      <p class="text-white font-Bevellier text-lg">2025 Vibropolis</p>
    </div>
  </div>

  <div class="flex justify-between items-center mx-48 my-12">
    <h1 class="text-[#1E1E1E] text-7xl font-BevellierBlack">LINE-UP</h1>
    <div class="text-white bg-[#1E1E1E] p-4 px-12 text-2xl font-Bevellier rounded-full hover:cursor-pointer hover:bg-white hover:border-2 hover:border-[#1E1E1E] hover:text-[#1E1E1E]">
      Découvrez en plus
    </div>
  </div>

  <div v-if="artistesFiltres && artistesFiltres.length" class="flex justify-evenly my-12">
    <ArtisteCard v-for="artiste in artistesFiltres" :key="artiste.nom" :artiste="artiste" />
  </div>
  <p v-else>Aucun artiste pour le moment.</p>

  <div class="bg-[#1E1E1E] p-28">
    <h2 class="text-white text-center text-7xl font-BevellierBlack">Achetez vos billets</h2>
    <div class="flex justify-center mt-24 gap-40">
      <div class="text-white text-4xl font-Bevellier border-white border-2 rounded-full p-6 px-12 hover:cursor-pointer hover:bg-white hover:border-2 hover:border-[#1E1E1E]
      hover:text-[#1E1E1E]">Billeterie</div>
      <div class="text-[#1E1E1E] text-4xl font-Bevellier bg-white rounded-full p-6 px-12 hover:cursor-pointer hover:bg-[#1E1E1E] hover:border-2 hover:border-white
      hover:text-white">Pass culture</div>
    </div>
  </div>
</template>

<style scoped>

</style>
