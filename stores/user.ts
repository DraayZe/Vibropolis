// stores/user.ts
import { defineStore } from 'pinia'

interface User {
    user: any;
    token: string | null;
}

export const useUserStore = defineStore('user', {
    state: (): User => ({
        user: null,  // Informations de l'utilisateur
        token: null, // Token JWT
    }),
    getters: {
        isAuthenticated: (state): boolean => !!state.token, // Vérifie si l'utilisateur est authentifié
    },
    actions: {
        setUser(data: { user: any; token: string }) {
            this.user = data.user
            this.token = data.token
        },
        logout() {
            this.user = null
            this.token = null
            localStorage.removeItem('token')
        },
        loadFromLocalStorage() {
            const token = localStorage.getItem('token')
            if (token) {
                this.token = token
            }
        }
    }
})