<script setup>
import { ref } from 'vue'

const nom = ref('')
const description = ref('')
const datePerformance = ref('')
const file = ref(null)
const couleur = ref('')
const message = ref('')

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

  const response = await fetch('/api/artistes/ajouter', {
    method: 'POST',
    body: formData
  })

  if (response.ok) {
    message.value = "L'artiste a bien été ajouté ✅"
    resetFields()

    // Efface le message après 3 secondes (optionnel)
    setTimeout(() => {
      message.value = ''
    }, 3000)
  } else {
    message.value = "Une erreur s'est produite ❌"
  }
}

definePageMeta({
  middleware: 'admin',
})

</script>


<template>
  <div class="bg-[#1E1E1E] p-10">
    <div class="max-w-xl mx-auto">
      <h2 class="text-2xl font-bold text-white mb-6 text-center">
        Interface Administrateur – Ajouter un artiste
      </h2>

      <form
          @submit.prevent="ajouterArtiste"
          enctype="multipart/form-data"
          class="flex flex-col gap-4 bg-white p-8 rounded-xl shadow-lg"
      >
        <div>
          <label for="nom" class="block text-gray-700 mb-1">Nom</label>
          <input
              id="nom"
              type="text"
              v-model="nom"
              placeholder="Nom"
              required
              class="w-full p-3 rounded-md border border-gray-300 text-[#1E1E1E] placeholder-gray-400 focus:outline-none focus:ring-2 focus:ring-purple-500"
          />
        </div>

        <div>
          <label for="description" class="block text-gray-700 mb-1">Description</label>
          <textarea
              id="description"
              v-model="description"
              placeholder="Description"
              class="w-full p-3 rounded-md border border-gray-300 text-[#1E1E1E] placeholder-gray-400 resize-y min-h-[100px] focus:outline-none focus:ring-2 focus:ring-purple-500"
          ></textarea>
        </div>

        <div>
          <label for="datePerformance" class="block text-gray-700 mb-1">Date de performance</label>
          <input
              id="datePerformance"
              type="date"
              v-model="datePerformance"
              required
              class="w-full p-3 rounded-md border border-gray-300 text-[#1E1E1E] focus:outline-none focus:ring-2 focus:ring-purple-500"
          />
        </div>

        <div>
          <label for="fileInput" class="block text-gray-700 mb-1">Photo</label>
          <input
              id="fileInput"
              type="file"
              @change="handleFile"
              accept="image/*"
              required
              class="w-full p-3 rounded-md border border-gray-300 text-[#1E1E1E] file:text-black file:rounded-md file:px-4 file:py-2 file:border-0"
          />
        </div>

        <div>
          <label for="couleur" class="block text-gray-700 mb-1">Couleur</label>
          <input
              id="couleur"
              type="text"
              v-model="couleur"
              placeholder="Couleur"
              required
              class="w-full p-3 rounded-md border border-gray-300 text-[#1E1E1E] placeholder-gray-400 focus:outline-none focus:ring-2 focus:ring-purple-500"
          />
        </div>

        <button
            type="submit"
            class="w-full py-3 rounded-full bg-purple-600 hover:bg-purple-700 transition text-white font-medium"
        >
          Ajouter l'artiste
        </button>
      </form>

      <p v-if="message" class="text-center text-white bg-green-600 p-3 mt-6 rounded-md">
        {{ message }}
      </p>
    </div>
  </div>
</template>



<style scoped>

</style>
