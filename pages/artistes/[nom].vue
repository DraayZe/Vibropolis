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
}

const { data: artiste } = await useFetch<Artiste>(`/api/artistes/${route.params.nom}`)

if (artiste.value?.albums) {
  artiste.value.albums.sort((a, b) => new Date(b.dateSortie).getTime() - new Date(a.dateSortie).getTime())
}

</script>

<template>
  <div v-if="artiste" class="bg-[#1E1E1E] min-h-screen p-10 text-white">
    <h1 class="text-3xl font-bold mb-4">{{ artiste.nom }}</h1>
    <img :src="artiste.photo" alt="Artiste" class="w-96 rounded mb-6">

    <div v-if="artiste.albums && artiste.albums.length">
      <h2 class="text-2xl font-semibold mb-4">Albums</h2>

      <Carousel class="w-full " :opts="{ align: 'start' }">
        <CarouselContent class="-ml-2">
          <CarouselItem
              v-for="album in artiste.albums"
              :key="album.id"
              class="pl-2 md:basis-1/2 lg:basis-1/3"
          >
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



