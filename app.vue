<template>
  <NuxtLayout />
</template>

<script setup lang="ts">
import { onMounted } from 'vue'
import { useUserStore } from '@/stores/user'

onMounted(() => {
  const userStore = useUserStore()
  userStore.loadFromLocalStorage()
})

</script>