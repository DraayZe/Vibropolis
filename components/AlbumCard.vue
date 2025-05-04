<script setup lang="ts">
import { defineProps, ref } from 'vue'

const props = defineProps<{
  album: {
    titre: string
    photo: string
    dateSortie: string
  }
  couleur: string
}>()

const hover = ref(false)
</script>

<template>
  <div
      class="relative w-52 cursor-pointer"
      @mouseenter="hover = true"
      @mouseleave="hover = false"
  >
    <img :src="album.photo" alt="Pochette" class="w-full h-auto object-cover rounded-lg" />

    <transition name="fade">
      <div
          v-if="hover"
          class="absolute bottom-0 left-0 w-full p-2 rounded-b-lg"
          :style="{
          backgroundImage: `linear-gradient(to top, #${props.couleur || '000'}B3, transparent)`
        }"
      >
        <h3 class="text-sm font-bold text-white">{{ album.titre }}</h3>
        <p class="text-xs text-gray-300">
          Sorti le : {{ new Date(album.dateSortie).toLocaleDateString() }}
        </p>
      </div>
    </transition>
  </div>
</template>

<style scoped>
.fade-enter-active,
.fade-leave-active {
  transition: opacity 0.3s ease;
}
.fade-enter-from,
.fade-leave-to {
  opacity: 0;
}
</style>
