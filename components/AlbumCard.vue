<script setup lang="ts">
defineProps<{
  album: {
    titre: string
    photo: string
    dateSortie: string
  }
}>()
</script>

<template>
  <div class="relative w-72 rounded-lg shadow-md">
    <img :src="album.photo" alt="Pochette" class="w-full h-auto object-cover">
    <div class="absolute bottom-0 left-0 w-full bg-gradient-to-t from-black/70 to-transparent p-2">
      <h3 class="text-sm font-bold text-white">{{ album.titre }}</h3>
      <p class="text-xs text-gray-300">Sorti le : {{ new Date(album.dateSortie).toLocaleDateString() }}</p>
    </div>
  </div>

</template>
