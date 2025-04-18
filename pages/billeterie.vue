<script setup>
import { ref, onMounted } from 'vue'
import { useRouter } from 'vue-router'

const passes = ref([])
const router = useRouter()

const fetchPasses = async () => {
  const res = await fetch('/api/pass')
  const data = await res.json()
  passes.value = data
}

const goToPass = (id) => {
  router.push(`/billeterie/${id}`)
}

onMounted(fetchPasses)
</script>

<template>
  <div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 gap-6 ">
    <div
        v-for="pass in passes"
        :key="pass.id"
        @click="goToPass(pass.id)"
    >
      <img :src="pass.photo" :alt="pass.nom" class="w-full h-full" />
    </div>
  </div>
</template>
