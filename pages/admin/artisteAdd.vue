<script setup>
import { ref } from 'vue'

const nom = ref('')
const description = ref('')
const datePerformance = ref('')
const file = ref(null)
const couleur = ref('')

const handleFile = (e) => {
  file.value = e.target.files[0]
}

const resetFields = () => {
  nom.value = ''
  description.value = ''
  datePerformance.value = ''
  file.value = null
  couleur.value = ''
  const fileInput = document.getElementById('fileInput')
  if (fileInput) fileInput.value = ''
}

const ajouterArtiste = async () => {
  const formData = new FormData()
  formData.append('nom', nom.value)
  formData.append('description', description.value)
  formData.append('datePerformance', datePerformance.value)
  formData.append('photo', file.value)
  formData.append('couleur', couleur.value)

  await fetch('/api/artistes/ajouter', {
    method: 'POST',
    body: formData
  })

  resetFields()
}
</script>

<template>
  <form
      @submit.prevent="ajouterArtiste"
      enctype="multipart/form-data"
      class="flex flex-col mt-8 gap-4 bg-[#1e1e1e] p-8 rounded-xl max-w-xl mx-auto shadow-lg"
  >
    <input
        type="text"
        v-model="nom"
        placeholder="Nom"
        required
        class="p-3 rounded-md bg-gray-800 text-white placeholder-gray-400 focus:outline-none focus:ring-2 focus:ring-purple-500"
    />

    <textarea
        v-model="description"
        placeholder="Description"
        class="p-3 rounded-md bg-gray-800 text-white placeholder-gray-400 resize-y min-h-[100px] focus:outline-none focus:ring-2 focus:ring-purple-500"
    ></textarea>

    <input
        type="date"
        v-model="datePerformance"
        required
        class="p-3 rounded-md bg-gray-800 text-white focus:outline-none focus:ring-2 focus:ring-purple-500"
    />

    <input
        id="fileInput"
        type="file"
        @change="handleFile"
        accept="image/*"
        required
        class="text-white"
    />

    <input
        type="text"
        v-model="couleur"
        placeholder="Couleur"
        required
        class="p-3 rounded-md bg-gray-800 text-white placeholder-gray-400 focus:outline-none focus:ring-2 focus:ring-purple-500"
    />
    <button
        type="submit"
        class="bg-purple-600 hover:bg-purple-700 text-white font-semibold py-3 rounded-md transition duration-300"
    >
      Ajouter l'artiste
    </button>
  </form>
</template>


<style scoped>

</style>
