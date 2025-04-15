<script setup lang="ts">
defineProps<{
  artiste: {
    id: number
    nom: string
    genreMusical: string
    photo: string
  }
}>()
</script>

<template>
  <router-link :to="`/artistes/${artiste.nom}`" class="block w-96">
    <div class="rounded overflow-hidden shadow-lg hover:scale-105 transition">
      <img :src="artiste.photo" alt="Photo de l'artiste" class="w-96 h-full object-cover rounded mb-2">
    </div>
  </router-link>
</template>

<style scoped>

</style>