<script setup>
import LoginForm from '~/components/LoginForm.vue'
import { Tabs, TabsContent, TabsList, TabsTrigger } from '@/components/ui/tabs'
import RegisterForm from "~/components/RegisterForm.vue";

definePageMeta({
  layout: 'blank'
})
</script>

<template>
  <div class="flex">
    <div class="relative h-screen bg-no-repeat bg-cover w-1/3 flex flex-col justify-between p-6" style="background-image: url('/festival-login.png')">
      <div>
        <NuxtLink to="/">
        <img src="/logo-festival.png" alt="Logo de Vibropolis" class="w-60" />
        </NuxtLink>
      </div>
      <div class="text-center mb-10">
        <h1 class="text-2xl font-bold text-white mb-4">Bienvenue sur notre plateforme</h1>
        <p class="text-white">Connectez-vous ou créez un compte pour commencer.</p>
      </div>
    </div>

    <div class="flex flex-col items-center mt-32 mx-auto">
      <h2 class="text-[#1E1E1E] text-2xl pb-2">Veuillez vous itentifiez</h2>
      <p class="text-[#1E1E1E] w-3/4 text-center pb-2">Vous inscrire vous permez de réservez vos billets et de profitez pleinement du site web ! </p>
      <Tabs default-value="account" class="w-3/4">
        <TabsList class="grid w-3/4 grid-cols-2 justify-self-center">
          <TabsTrigger value="account">
            Inscription
          </TabsTrigger>
          <TabsTrigger value="login">
            Connexion
          </TabsTrigger>
        </TabsList>
        <TabsContent value="account">
          <RegisterForm />
        </TabsContent>
        <TabsContent value="login">
          <LoginForm />
        </TabsContent>
      </Tabs>
    </div>
  </div>
</template>

