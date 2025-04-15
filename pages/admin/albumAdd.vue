<script setup>
import { ref, onMounted } from 'vue'

const titre = ref('')
const dateSortie = ref('')
const file = ref(null)
const artisteId = ref('')
const artistes = ref([])

const handleFile = (e) => {
  file.value = e.target.files[0]
}

const resetFields = () => {
  titre.value = ''
  dateSortie.value = ''
  artisteId.value = ''
  file.value = null
  const fileInput = document.getElementById('fileInput')
  if (fileInput) fileInput.value = ''
}

const ajouterAlbum = async () => {
  const formData = new FormData()
  formData.append('titre', titre.value)
  formData.append('dateSortie', dateSortie.value)
  formData.append('artisteId', artisteId.value)
  if (file.value) formData.append('photo', file.value)

  await fetch('/api/albums/ajouter', {
    method: 'POST',
    body: formData,
  })

  resetFields()
}

onMounted(async () => {
  const res = await fetch('/api/artistes')
  const data = await res.json()

  artistes.value = data.sort((a, b) => a.nom.localeCompare(b.nom))
})

</script>

<template>
  <form
      @submit.prevent="ajouterAlbum"
      enctype="multipart/form-data"
      class="flex flex-col mt-8 gap-4 bg-[#1e1e1e] p-8 rounded-xl max-w-xl mx-auto shadow-lg"
  >
    <input
        type="text"
        v-model="titre"
        placeholder="Titre de l'album"
        required
        class="p-3 rounded-md bg-gray-800 text-white placeholder-gray-400 focus:outline-none focus:ring-2 focus:ring-purple-500"
    />

    <input
        type="date"
        v-model="dateSortie"
        required
        class="p-3 rounded-md bg-gray-800 text-white focus:outline-none focus:ring-2 focus:ring-purple-500"
    />

    <select
        v-model="artisteId"
        required
        class="p-3 rounded-md bg-gray-800 text-white focus:outline-none focus:ring-2 focus:ring-purple-500"
    >
      <option value="" disabled selected>Sélectionne un artiste</option>
      <option v-for="artiste in artistes" :key="artiste.id" :value="artiste.id">
        {{ artiste.nom }}
      </option>
    </select>

    <input
        id="fileInput"
        type="file"
        @change="handleFile"
        accept="image/*"
        class="text-white"
    />

    <button
        type="submit"
        class="bg-purple-600 hover:bg-purple-700 text-white font-semibold py-3 rounded-md transition duration-300"
    >
      Ajouter l'album
    </button>
  </form>
</template>
