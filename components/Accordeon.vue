<script setup lang="ts">
import { Accordion, AccordionContent, AccordionItem, AccordionTrigger } from '@/components/ui/accordion'

const defaultValue = 'item-1'

const accordionItems = [
  { value: 'item-1', title: 'Est-il possible de scinder mon pass 3 jours ?', content: 'Non, il est impossible de scinder les pass 3 jours tout comme les pass 2 jours.' },
  { value: 'item-2', title: 'Le prix est-il différent pour les enfants ?', content: 'Non, le prix est le même pour les enfants.' },
  { value: 'item-3', title: 'Comment je réceptionne mon billet ?', content: 'Vous recevrez votre billet 72 heures avant l’heure d’ouverture officielle du festival sur votre boite mail.' },
  { value: 'item-4', title: 'Puis-je me faire rembrouser ?', content: 'Conformément à l\'article L.221-28 du Code de la Consommation, les Billets ne font pas l\'objet d\'un droit de rétractation dès lors que la commande est exécutée par l\'envoi du mail de confirmation.' },
  { value: 'item-5', title: 'Puis-je racheter des places à quelqu\'un ?', content: 'N’achetez pas vos billets auprès d’un inconnu ou sur des sites de revente non autorisés (Facebook, Snapchat, Leboncoin…), vous risqueriez de ne pas pouvoir accéder au festival.' },
  { value: 'item-6', title: 'Mon nom doit-il obligatoirement être celui inscrit sur le billet ?', content: 'Dans le cas d’un achat de plusieurs billets par une même personne, le nom inscrit sur chaque billet ne doit pas forcément être celui du détenteur. Le code-barres fait foi de titre d’accès.' },


]
</script>

<template>
  <Accordion type="single"  collapsible :default-value="defaultValue" class="mx-80 pb-20">
    <AccordionItem v-for="item in accordionItems" :key="item.value" :value="item.value">
      <AccordionTrigger class="text-white text-1xl font-Bevellier">{{ item.title }}</AccordionTrigger>
      <AccordionContent class="text-gray-400 font-Bevellier ">
        {{ item.content }}
      </AccordionContent>
    </AccordionItem>
  </Accordion>
</template>

<style scoped>

</style>