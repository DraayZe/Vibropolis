<script setup>
import {onMounted, ref} from 'vue'
import {useRouter} from 'vue-router'
import Accordeon from '@/components/Accordeon.vue'

const passes = ref([])
const router = useRouter()

const fetchPasses = async () => {
  const res = await fetch('/api/pass')
  passes.value = await res.json()
}

const goToPass = (id) => {
  router.push(`/billeterie/${id}`)
}

onMounted(fetchPasses)
</script>

<template>
  <div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 justify-items-center">
    <div
        v-for="pass in passes"
        :key="pass.id"
        @click="goToPass(pass.id)"
    >
      <img :src="pass.photo" :alt="pass.nom"/>
    </div>
  </div>

  <div class="bg-[#1E1E1E] ">
    <h2 class="text-white text-center text-7xl font-BevellierBlack py-20">QUESTIONS RÉCURRENTES</h2>
    <Accordeon />
  </div>
</template>
