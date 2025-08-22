<script setup>
import { ref, onMounted } from 'vue'

const titre = ref('')
const dateSortie = ref('')
const file = ref(null)
const artisteId = ref('')
const artistes = ref([])
const message = ref('')

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

  try {
    const response = await fetch('/api/albums/ajouter', {
      method: 'POST',
      body: formData,
    })

    if (response.ok) {
      message.value = "L'album a bien été ajouté ✅"
      resetFields()
      setTimeout(() => {
        message.value = ''
      }, 3000)
    } else {
      message.value = "Une erreur s'est produite ❌"
    }
  } catch (error) {
    console.error(error)
    message.value = "Erreur de connexion au serveur ❌"
  }
}

onMounted(async () => {
  try {
    const res = await fetch('/api/artistes')
    const data = await res.json()
    artistes.value = data.sort((a, b) => a.nom.localeCompare(b.nom))
  } catch (error) {
    console.error(error)
    message.value = "Impossible de charger les artistes ❌"
  }
})

definePageMeta({
  middleware: 'admin',
})

</script>


<template>
  <div class="bg-[#1E1E1E] p-10">
    <div class="max-w-xl mx-auto ">
      <h2 class="text-2xl font-bold text-white mb-6 text-center">
        Interface Administrateur – Ajouter un album
      </h2>

      <form
          @submit.prevent="ajouterAlbum"
          enctype="multipart/form-data"
          class="flex flex-col gap-4 bg-white p-8 rounded-xl"
      >
        <div>
          <label for="titre" class="block text-gray-700 mb-1">Titre de l'album</label>
          <input
              id="titre"
              type="text"
              v-model="titre"
              placeholder="Titre de l'album"
              required
              class="w-full p-3 rounded-md border-gray-300 border text-[#1E1E1E] placeholder-gray-400 focus:outline-none focus:ring-2 focus:ring-purple-500"
          />
        </div>

        <div>
          <label for="dateSortie" class="block text-gray-700 mb-1">Date de sortie</label>
          <input
              id="dateSortie"
              type="date"
              v-model="dateSortie"
              required
              class="w-full p-3 rounded-md border-gray-300 border text-[#1E1E1E] focus:outline-none focus:ring-2 focus:ring-purple-500"
          />
        </div>

        <div>
          <label for="artiste" class="block text-gray-700 mb-1">Artiste</label>
          <select
              id="artiste"
              v-model="artisteId"
              required
              class="w-full p-3 rounded-md border-gray-300 border text-[#1E1E1E] focus:outline-none focus:ring-2 focus:ring-purple-500"
          >
            <option value="" disabled selected>Sélectionne un artiste</option>
            <option v-for="artiste in artistes" :key="artiste.id" :value="artiste.id">
              {{ artiste.nom }}
            </option>
          </select>
        </div>

        <div>
          <label for="fileInput" class="block text-gray-700 mb-1">Image de l'album</label>
          <input
              id="fileInput"
              type="file"
              @change="handleFile"
              accept="image/*"
              class="w-full p-3 rounded-md border border-gray-300 text-[#1E1E1E] file:text-black file:rounded-md file:px-4 file:py-2 file:border-0"
          />
        </div>

        <button
            type="submit"
            class="w-full py-3 rounded-full bg-purple-600 hover:bg-purple-700 transition disabled:opacity-50 text-white font-medium"
        >
          Ajouter l'album
        </button>
      </form>
      <p v-if="message" class="text-center text-white bg-green-600 p-3 mt-6 rounded-md">
        {{ message }}
      </p>
    </div>
  </div>
</template>

