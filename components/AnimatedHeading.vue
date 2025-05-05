<script setup lang="ts">
import { ref } from 'vue'
import { Motion } from '@motionone/vue'

const props = defineProps<{
  text: string
  className?: string
  delayStep?: number
}>()

const isVisible = ref(false)

const onIntersect = () => {
  isVisible.value = true
}
</script>

<template>
  <div
      v-intersect="onIntersect"
      class="flex flex-wrap justify-center"
  >
    <Motion
        v-for="(char, i) in text.split('')"
        :key="i"
        :initial="{ opacity: 0, y: 20 }"
        :animate="isVisible ? { opacity: 1, y: 0 } : { opacity: 0, y: 20 }"
        :transition="{ delay: i * (delayStep ?? 0.05) }"
    >
      <span :class="className" class="inline-block">
        {{ char === ' ' ? '\u00A0' : char }}
      </span>
    </Motion>
  </div>
</template>

