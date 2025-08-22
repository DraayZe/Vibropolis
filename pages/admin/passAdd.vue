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

definePageMeta({
  middleware: 'admin',
})

</script>

<template>
  <div class="bg-[#1E1E1E] p-10">
    <div class="max-w-xl mx-auto">
      <h2 class="text-2xl font-bold text-white mb-6 text-center">
        Interface Administrateur – Ajouter un pass
      </h2>

      <form
          @submit.prevent="ajouterPass"
          enctype="multipart/form-data"
          class="flex flex-col gap-4 bg-white p-8 rounded-xl shadow-lg"
      >
        <div>
          <label for="nom" class="block text-gray-700 mb-1">Nom du pass</label>
          <input
              id="nom"
              v-model="nom"
              type="text"
              placeholder="Nom du pass"
              required
              class="w-full p-3 rounded-md border border-gray-300 text-[#1E1E1E] placeholder-gray-400 focus:outline-none focus:ring-2 focus:ring-purple-500"
          />
        </div>

        <div>
          <label for="prix" class="block text-gray-700 mb-1">Prix (€)</label>
          <input
              id="prix"
              v-model="prix"
              type="number"
              step="0.01"
              placeholder="Prix (€)"
              required
              class="w-full p-3 rounded-md border border-gray-300 text-[#1E1E1E] placeholder-gray-400 focus:outline-none focus:ring-2 focus:ring-purple-500"
          />
        </div>

        <div>
          <label for="duree" class="block text-gray-700 mb-1">Durée (jours)</label>
          <input
              id="duree"
              v-model="duree"
              type="number"
              placeholder="Durée (jours)"
              required
              class="w-full p-3 rounded-md border border-gray-300 text-[#1E1E1E] placeholder-gray-400 focus:outline-none focus:ring-2 focus:ring-purple-500"
          />
        </div>

        <div>
          <p class="text-gray-700 mb-2">Dates disponibles :</p>
          <div v-for="date in availableDates" :key="date" class="flex items-center gap-2">
            <input
                type="checkbox"
                :value="date"
                v-model="dates"
                class="accent-purple-600"
            />
            <label class="text-[#1E1E1E]">{{ date }}</label>
          </div>
        </div>

        <div>
          <label for="fileInput" class="block text-gray-700 mb-1">Image du pass</label>
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
            class="w-full py-3 rounded-full bg-purple-600 hover:bg-purple-700 transition text-white font-medium"
        >
          Ajouter le pass
        </button>
      </form>
    </div>
  </div>
</template>

