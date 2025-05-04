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
  <div class="relative w-96 flex ">
    <img :src="pass.photo" alt="Pass" class="w-full h-72 object-cover rounded-lg cursor-pointer">
  </div>
</template>

<style scoped>

</style>