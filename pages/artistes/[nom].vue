<script setup lang="ts">
import { useRoute } from 'vue-router'
import { ref } from 'vue'
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
  instagram?: string
  youtube?: string
  spotify?: string
  tiktok?: string
}

const { data: artiste } = await useFetch<Artiste>(`/api/artistes/${route.params.nom}`)

if (artiste.value?.albums) {
  artiste.value.albums.sort((a, b) => new Date(b.dateSortie).getTime() - new Date(a.dateSortie).getTime())
}

const hoveredIcon = ref<string | null>(null)
</script>

<template>
  <div v-if="artiste" class="bg-[#1E1E1E] min-h-screen p-10 text-white">
    <div class="flex items-start">
      <img :src="artiste.photo" alt="Artiste" class="w-1/5 rounded mb-6 object-cover outline-card" />
      <div class="flex flex-col justify-center items-center flex-1">
        <h2 class="text-8xl font-Tanker mb-4" :style="{ color: '#' + (artiste.couleur || '#FFFFFF') }">
          {{ artiste.nom }}
        </h2>
        <p class="text-lg font-Bevellier ml-20 mt-4">{{ artiste.description }}</p>
        <div class="flex gap-10 items-center mt-8">
          <!-- Instagram -->
          <a v-if="artiste.instagram" :href="artiste.instagram" target="_blank" rel="noopener noreferrer">
            <img
                src="/icons/instagram.png"
                alt="Instagram"
                class="w-8 h-8 transition-transform duration-300"
                :class="{
                'transform scale-110': hoveredIcon === 'instagram'
              }"
                @mouseenter="hoveredIcon = 'instagram'"
                @mouseleave="hoveredIcon = null"
            />
          </a>

          <a v-if="artiste.youtube" :href="artiste.youtube" target="_blank" rel="noopener noreferrer">
            <img
                src="/icons/youtube.png"
                alt="YouTube"
                class="w-8 h-auto transition-transform duration-300"
                :class="{
                'transform scale-110': hoveredIcon === 'youtube'
              }"
                @mouseenter="hoveredIcon = 'youtube'"
                @mouseleave="hoveredIcon = null"
            />
          </a>

          <a v-if="artiste.spotify" :href="artiste.spotify" target="_blank" rel="noopener noreferrer">
            <img
                src="/icons/spotify.png"
                alt="Spotify"
                class="w-8 h-8 transition-transform duration-300"
                :class="{
                'transform scale-110': hoveredIcon === 'spotify'
              }"
                @mouseenter="hoveredIcon = 'spotify'"
                @mouseleave="hoveredIcon = null"
            />
          </a>

          <a v-if="artiste.tiktok" :href="artiste.tiktok" target="_blank" rel="noopener noreferrer">
            <img
                src="/icons/tiktok.png"
                alt="TikTok"
                class="w-8 h-8 transition-transform duration-300"
                :class="{
                'transform scale-110': hoveredIcon === 'tiktok'
              }"
                @mouseenter="hoveredIcon = 'tiktok'"
                @mouseleave="hoveredIcon = null"
            />
          </a>
        </div>
      </div>
    </div>

    <h2 class="text-2xl font-BevellierBlack mb-4">Albums</h2>
    <div v-if="artiste.albums && artiste.albums.length">
      <Carousel class="w-full" :opts="{ align: 'start' }">
        <CarouselContent class="-ml-2">
          <CarouselItem
              v-for="album in artiste.albums"
              :key="album.id"
              class="pl-2 md:basis-3/4 lg:basis-1/4"
          >
            <AlbumCard :album="album" :couleur="artiste.couleur" />
          </CarouselItem>
        </CarouselContent>
        <CarouselPrevious class="ml-10" />
        <CarouselNext class="mr-10" />
      </Carousel>
    </div>

    <p v-else class="text-white font-Bevellier  mt-6">{{ artiste.nom }} n'a encore sorti aucun album.</p>

  </div>

  <div v-else class="text-white p-10">
    <p>Chargement de l'artiste...</p>
  </div>
</template>
