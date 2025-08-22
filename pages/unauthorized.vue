<script setup lang="ts">

definePageMeta(
    {
      layout : "blank"
    }
)
</script>

<template>
  <div class="text-center mt-10">
    <h1 class="text-3xl font-bold">⛔ Accès refusé</h1>
    <p class="mt-4">Vous n'avez pas les droits pour accéder à cette page.</p>
    <NuxtLink to="/" class="text-blue-500 underline mt-4 inline-block">Retour à l'accueil</NuxtLink>
  </div>
</template>


<style scoped>

</style>