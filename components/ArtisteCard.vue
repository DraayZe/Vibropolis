<script setup lang="ts">
defineProps<{
  artiste: {
    id: number
    nom: string
    genreMusical: string
    photo: string
    couleur: string
  }
}>()
</script>

<template>
  <router-link :to="`/artistes/${artiste.nom}`" class="block w-96">
    <div class="hover:scale-105 transition outline-card animate-unblur">
      <img :src="artiste.photo" alt="Photo de l'artiste" class="w-96 h-full object-cover rounded mb-2">
    </div>
  </router-link>
</template>

<style scoped>
@keyframes unblur {
  from {
    filter: blur(10px);
    opacity: 0;
  }
  to {
    filter: blur(0);
    opacity: 1;
  }
}

.animate-unblur {
  animation: unblur 0.9s ease-out forwards;
}
</style>
