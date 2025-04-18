<script setup>
import { ref } from 'vue'

const nom = ref('')
const prix = ref('')
const duree = ref('')
const file = ref(null)
const dates = ref([]) // tableau des dates sélectionnées

const availableDates = [
  '13/06/25',
  '14/06/25',
  '15/06/25'
]

const handleFile = (e) => {
  file.value = e.target.files[0]
}

const ajouterPass = async () => {
  const formData = new FormData()
  formData.append('nom', nom.value)
  formData.append('prix', prix.value)
  formData.append('duree', duree.value)
  formData.append('dates', dates.value.join(',')) // conversion en string

  if (file.value) {
    formData.append('photo', file.value)
  }

  await fetch('/api/pass/ajouter', {
    method: 'POST',
    body: formData,
  })

  nom.value = ''
  prix.value = ''
  duree.value = ''
  dates.value = []
  file.value = null
}
</script>

<template>
  <form @submit.prevent="ajouterPass" enctype="multipart/form-data" class="flex flex-col mt-8 gap-4 bg-[#1e1e1e] p-8 rounded-xl max-w-xl mx-auto">
    <input v-model="nom" type="text" placeholder="Nom du pass" required />
    <input v-model="prix" type="number" step="0.01" placeholder="Prix (€)" required />
    <input v-model="duree" type="number" placeholder="Durée (jours)" required />

    <div>
      <p class="text-white mb-2">Dates disponibles :</p>
      <div v-for="date in availableDates" :key="date">
        <label class="text-white">
          <input type="checkbox" :value="date" v-model="dates" />
          {{ date }}
        </label>
      </div>
    </div>

    <input type="file" @change="handleFile" accept="image/*" />
    <button type="submit">Ajouter le pass</button>
  </form>
</template>
