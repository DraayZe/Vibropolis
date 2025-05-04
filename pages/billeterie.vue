<script setup>
import {onMounted, ref} from 'vue'
import Accordeon from '@/components/Accordeon.vue'
import PassCard from '@/components/PassCard.vue'

const passes = ref([])

const fetchPasses = async () => {
  const res = await fetch('/api/pass')
  passes.value = await res.json()
}
onMounted(fetchPasses)
</script>

<template>
<div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 justify-items-center">
  <PassCard
      v-for="pass in passes"
      :key="pass.id"
      :pass="pass"
  />
</div>
  <div class="bg-[#1E1E1E] ">
    <h2 class="text-white text-center text-7xl font-BevellierBlack py-20">QUESTIONS RÉCURRENTES</h2>
    <Accordeon />
  </div>
</template>
