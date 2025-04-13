<script setup>
import { ref } from 'vue'
const nom = ref('')
const genreMusical = ref('')
const album = ref('')
const description = ref('')
const file = ref(null)

const handleFile = (e) => {
  file.value = e.target.files[0]
}

const resetFields = () => {
  nom.value = ''
  genreMusical.value = ''
  album.value = ''
  description.value = ''
  file.value = null
  // Réinitialise la valeur de l'input file via son identifiant
  const fileInput = document.getElementById('fileInput')
  if (fileInput) fileInput.value = ''
}

const ajouterArtiste = async () => {
  const formData = new FormData()
  formData.append('nom', nom.value)
  formData.append('genreMusical', genreMusical.value)
  formData.append('album', album.value)
  formData.append('description', description.value)
  formData.append('photo', file.value)

  await fetch('/api/artistes/ajouter', {
    method: 'POST',
    body: formData
  })

  resetFields()
}
</script>

<template>
  <form @submit.prevent="ajouterArtiste" enctype="multipart/form-data">
    <input type="text" v-model="nom" placeholder="Nom" required />
    <input type="text" v-model="genreMusical" placeholder="Genre musical" required />
    <input type="text" v-model="album" placeholder="Album" required />
    <textarea v-model="description" placeholder="Description"></textarea>
    <input id="fileInput" type="file" @change="handleFile" accept="image/*" required />
    <button type="submit">Ajouter l'artiste</button>
  </form>
</template>

<style scoped>
/* Style à ta convenance */
</style>
