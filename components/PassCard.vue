<script setup lang="ts">
import { useUserStore } from '~/stores/user'
import { useRouter } from 'vue-router'

const props = defineProps<{
  pass: {
    id: number
    nom: string
    prix: number
    duree: number
    photo: string
    dates: string[]
  }
}>()

const userStore = useUserStore()
const router = useRouter()

const acheterPass = async () => {
  if (!userStore.user) {
    router.push('/login')
    return
  }

  const res = await fetch('/api/acheter-pass', {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json',
    },
    body: JSON.stringify({
      userId: userStore.user.id,
      passId: props.pass.id,
    }),
  })

  const data = await res.json()

  if (data.error) {
    alert('Erreur : ' + data.error)
  } else {
    alert(`Tu as bien acheté le pass : ${data.pass.nom}`)
  }
}
</script>

<template>
  <div class="relative w-96 flex ">
    <img
        :src="pass.photo"
        alt="Pass"
        class="w-full h-72 object-cover rounded-lg cursor-pointer"
        @click="acheterPass"
    />
  </div>
</template>
