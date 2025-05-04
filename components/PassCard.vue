<script setup lang="ts">
defineProps<{
  pass:{
    nom: string
    prix: number
    duree: number
    photo: string
    dates: string[]
  }
}>()
</script>

<template>
  <div class="relative w-96 flex">
    <img :src="pass.photo" alt="Pass" class="w-full h-auto object-cover rounded-lg">
  </div>
</template>

<style scoped>

</style>