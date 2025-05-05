<script setup lang="ts">
import { computed } from 'vue'

const { data: artistes } = await useFetch<Artiste[]>('/api/artistes')

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



const artistesVendredi = computed(() => {
  return (artistes.value || []).filter(
      a => a.datePerformance && a.datePerformance.startsWith('2025-06-13')
  )
})

const artistesSamedi = computed(() => {
  return (artistes.value || []).filter(
      a => a.datePerformance && a.datePerformance.startsWith('2025-06-14')
  )
})

const artistesDimanche = computed(() => {
  return (artistes.value || []).filter(
      a => a.datePerformance && a.datePerformance.startsWith('2025-06-15')
  )
})
</script>

<template>
  <div class="flex flex-col items-center justify-center bg-[#1E1E1E] pb-10">
    <div class="flex">
      <p class="bg-[#1E1E1E] text-4xl font-BevellierBlack rounded-full m-2 p-6 text-white border-white border-2 hover:bg-[#120AF1] cursor-pointer">13</p>
      <p class="bg-[#1E1E1E] text-4xl font-BevellierBlack rounded-full m-2 p-6 text-white border-white border-2 hover:bg-[#9747FF] cursor-pointer">14</p>
      <p class="bg-[#1E1E1E] text-4xl font-BevellierBlack rounded-full m-2 p-6 text-white border-white border-2 hover:bg-[#EA0000] cursor-pointer">15</p>
    </div>
    <div>
      <p class="text-[#1E1E1E] text-5xl font-BevellierBlack bg-white rounded-full px-6 py-2">JUIN 2025</p>
    </div>
  </div>

  <div class="flex justify-center gap-20 bg-[#1E1E1E]">
    <AnimatedHeading text="VENDREDI" className="text-white font-BevellierBlack" style="font-size: clamp(20px, 10vw, 200px);"/>
    <AnimatedHeading text="13 JUIN" className="outline-white font-BevellierBlack" style="font-size: clamp(20px, 10vw, 200px);"/>

  </div>
  <div class="bg-[#1E1E1E]">
    <div v-if="artistesVendredi && artistesVendredi.length" class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6 gap-y-24 justify-items-center">
      <ArtisteCard v-for="artiste in artistesVendredi" :key="artiste.nom" :artiste="artiste" />
    </div>
    <p v-else>Aucun artiste pour Vendredi.</p>
    <Bouton />
  </div>


  <div class="flex justify-center gap-20 bg-[#1E1E1E]">
    <AnimatedHeading text="SAMEDI" className="text-white font-BevellierBlack" style="font-size: clamp(20px, 10vw, 200px);"/>
    <AnimatedHeading text="14 JUIN" className="outline-white font-BevellierBlack" style="font-size: clamp(20px, 10vw, 200px);"/>

  </div>
  <div class="bg-[#1E1E1E]">
    <div v-if="artistesSamedi && artistesSamedi.length" class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6 gap-y-24 justify-items-center ">
      <ArtisteCard v-for="artiste in artistesSamedi" :key="artiste.nom" :artiste="artiste" />
    </div>
    <p v-else>Aucun artiste pour Samedi.</p>
    <Bouton />
  </div>

  <div class="flex justify-center gap-20 bg-[#1E1E1E]">
    <AnimatedHeading text="DIMANCHE" className="text-white font-BevellierBlack" style="font-size: clamp(20px, 10vw, 200px);"/>
    <AnimatedHeading text="15 JUIN" className="outline-white font-BevellierBlack" style="font-size: clamp(20px, 10vw, 200px);"/>
  </div>
  <div class="bg-[#1E1E1E] ">
    <div v-if="artistesDimanche && artistesDimanche.length" class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6 gap-y-24 justify-items-center">
      <ArtisteCard v-for="artiste in artistesDimanche" :key="artiste.nom" :artiste="artiste" />
    </div>
    <p v-else>Aucun artiste pour Dimanche.</p>
    <Bouton />
  </div>
</template>

<style scoped>

</style>
