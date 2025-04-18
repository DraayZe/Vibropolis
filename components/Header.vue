<script setup lang="ts">
import { useUserStore } from '~/stores/user'

const userStore = useUserStore()
const route = useRoute()
const isHome = computed(() => route.path === '/')

</script>

<template>
  <nav
      :class="[
      'flex justify-between items-center p-6 transition-colors duration-200 ease-in-out',
      isHome ? 'bg-transparent absolute top-0 left-0 w-full z-50' : 'bg-[#1E1E1E]'
    ]"
  >
    <div class="flex-1">
      <NuxtLink to="/">
        <img src="/logo-festival.png" alt="Logo de Vibropolis" class="w-60" />
      </NuxtLink>
    </div>

    <div class="flex justify-center gap-10 flex-1">
      <NuxtLink
          to="/lineup"
          :class="[
          'text-white text-2xl font-BevellierBlack tracking-wide hover-outline-white',
          route.path === '/lineup' ? 'outline-white' : ''
        ]"
      >LINE-UP</NuxtLink>

      <NuxtLink
          to="/billeterie"
          :class="[
          'text-white text-2xl font-BevellierBlack tracking-wide hover-outline-white',
          route.path === '/billeterie' ? 'outline-white' : ''
        ]"
      >BILLETERIE</NuxtLink>

      <NuxtLink
          to="/infos"
          :class="[
          'text-white text-2xl font-BevellierBlack tracking-wide hover-outline-white',
          route.path === '/infos' ? 'outline-white' : ''
        ]"
      >INFOS</NuxtLink>
    </div>

    <div class="flex justify-end flex-1">
      <template v-if="userStore.isAuthenticated">
        <NuxtLink
            to="/profile"
            :class="[
            'text-white text-2xl font-BevellierBlack tracking-wide hover-outline-white',
            route.path === '/profile' ? 'outline-white' : ''
          ]"
        >MON ESPACE</NuxtLink>
      </template>
      <template v-else>
        <NuxtLink
            to="/login"
            :class="[
            'text-white text-2xl font-BevellierBlack tracking-wide hover-outline-white',
            route.path === '/login' ? 'outline-white' : ''
          ]"
        >Se connecter</NuxtLink>
      </template>
    </div>
  </nav>
</template>


<style scoped>
</style>