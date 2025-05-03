<script setup lang="ts">
import { useRoute } from 'vue-router'
import AlbumCard from '@/components/AlbumCard.vue'
import { Carousel, CarouselContent, CarouselItem, CarouselNext, CarouselPrevious } from '@/components/ui/carousel'

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
  couleur: string
}

const { data: artiste } = await useFetch<Artiste>(`/api/artistes/${route.params.nom}`)

if (artiste.value?.albums) {
  artiste.value.albums.sort((a, b) => new Date(b.dateSortie).getTime() - new Date(a.dateSortie).getTime())
}

</script>

<template>
  <div v-if="artiste" class="bg-[#1E1E1E] min-h-screen p-10 text-white">
    <div class="flex items-start ">
      <img :src="artiste.photo" alt="Artiste" class="w-1/5 rounded mb-6 object-cover outline-card "/>
      <div class="flex flex-col justify-center items-center flex-1">
        <h2 class="text-8xl font-Tanker mb-4" :style="{ color: '#' + (artiste.couleur || '#FFFFFF') }" >{{ artiste.nom }}</h2>
        <p class="text-lg font-Bevellier ml-10">{{ artiste.description }}</p>
      </div>

    </div>
    <h2 class="text-2xl font-BevellierBlack  mb-4" >Albums</h2>
    <div v-if="artiste.albums && artiste.albums.length">
      <Carousel class="w-full" :opts="{ align: 'start' }">
        <CarouselContent class="-ml-2">
          <CarouselItem v-for="album in artiste.albums" :key="album.id" class="pl-2 md:basis-3/4 lg:basis-1/4">
            <AlbumCard :album="album" />
          </CarouselItem>
        </CarouselContent>
        <CarouselPrevious class="ml-10"/>
        <CarouselNext class="mr-10"/>
      </Carousel>
    </div>

  </div>

  <div v-else class="text-white p-10">
    <p>Chargement de l'artiste...</p>
  </div>
</template>




