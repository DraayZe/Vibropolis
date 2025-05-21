// middleware/admin.ts
import {useUserStore} from "~/stores/user";

export default defineNuxtRouteMiddleware((to, from) => {
    const userStore = useUserStore()

    if (!userStore.isAuthenticated) {
        // Si l'utilisateur n'est pas connecté → redirection vers la page de login
        return navigateTo('/login')
    }

    if (userStore.user?.role !== 'ADMIN') {
        // Si l'utilisateur est connecté mais n'est pas admin → redirection non autorisée
        return navigateTo('/unauthorized')
    }
})
