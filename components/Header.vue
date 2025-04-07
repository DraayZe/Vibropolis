<script setup lang="ts">
import { useUserStore } from '~/stores/user'

const userStore = useUserStore()
</script>

<template>
  <nav class="flex bg-[#1E1E1E] justify-between items-center p-4">
    <NuxtLink to="/">
      <img src="/logo-festival.png" alt="Logo de Vibropolis" class="w-80">
    </NuxtLink>
    <NuxtLink to="/lineup" class="text-white text-4xl">Line-up</NuxtLink>
    <NuxtLink to="/billeterie" class="text-white text-4xl">Billeterie</NuxtLink>
    <NuxtLink to="/infos" class="text-white text-4xl">Infos pratiques</NuxtLink>
    <template v-if="userStore.isAuthenticated">
      <NuxtLink to="/profile" class="text-white text-4xl">Mon espace</NuxtLink>
    </template>
    <template v-else>
      <NuxtLink to="/login" class="text-white text-4xl">Se connecter</NuxtLink>
    </template>
  </nav>
</template>

<style scoped>
</style>