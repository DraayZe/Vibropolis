<script setup lang="ts">

</script>

<template>
  <div class="flex items-center ">
    <div class="w-3/4 border-r-2 border-[#1E1E1E] ">
      <h3 class="text-center font-Bevellier text-[#1E1E1E] text-xl mt-4">Nos partenaires</h3>
      <div class="flex justify-around items-center ">
        <img src="/public/logo-kappa.png" alt="Logo de Kappa" class="w-24 h-24 cursor-pointer" />
        <img src="/public/logo-estac.png" alt="Logo de l'Estac" class="w-32 h-auto cursor-pointer">
        <img src="/public/logo-redbull.png" alt="Logo de Redbull" class="w-32 h-auto cursor-pointer">
      </div>
    </div>

    <div class="w-1/4 flex justify-center">
      <NuxtLink to="/">
      <img src="/public/logo-festival.png" alt="Logo de Vibropolis" class="w-60 cursor-pointer">
      </NuxtLink>
    </div>
  </div>
  <div>
    <div class="flex justify-between items-center p-4 border-t-2 border-[#1E1E1E] ">
      <p class="text-lg font-Bevellier text-[#1E1E1E] hover:underline cursor-pointer">Partenariats</p>
      <div class="flex justify-center items-center space-x-4">
        <img src="/logo-facebook.png" alt="Logo de Facebook" class="w-10 h-10 cursor-pointer transition-transform duration-300 hover:scale-110">
        <img src="/logo-twitter.png" alt="Logo de Twitter" class="w-10 h-10 cursor-pointer transition-transform duration-300 hover:scale-110">
        <img src="/logo-instagram.png" alt="Logo d'Instagram" class="w-10 h-10 cursor-pointer transition-transform duration-300 hover:scale-110">
      </div>
      <p class="text-lg font-Bevellier text-[#1E1E1E] hover:underline cursor-pointer" >Contact</p>
    </div>
    <div class="flex justify-between p-4 border-t-2 border-[#1E1E1E]">
      <p class="text-lg font-Bevellier text-[#1E1E1E] hover:underline cursor-pointer">Gestion des cookies</p>
      <p class="text-lg font-Bevellier text-[#1E1E1E] hover:underline cursor-pointer">Charte et confidentialité</p>
      <p class="text-lg font-Bevellier text-[#1E1E1E] hover:underline cursor-pointer">Charte de durabilité</p>
      <p class="text-lg font-Bevellier text-[#1E1E1E] hover:underline cursor-pointer">2025 Vibropolis</p>
    </div>
  </div>
</template>

<style scoped>

</style>