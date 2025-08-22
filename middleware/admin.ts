import { defineNuxtRouteMiddleware, navigateTo } from '#app'
import { useUserStore } from '@/stores/user'

export default defineNuxtRouteMiddleware((to, from) => {
    if (process.client) {
        const userStore = useUserStore()
        userStore.loadFromLocalStorage()

        if (!userStore.isAuthenticated) {
            return navigateTo('/login')
        }
        if (!userStore.user?.isAdmin) {
            return navigateTo('/unauthorized')
        }
    }
})
