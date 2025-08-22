import { defineStore } from 'pinia'
import { jwtDecode } from 'jwt-decode'

interface User {
    id: number
    email: string
    isAdmin: boolean
}

interface State {
    user: User | null
    token: string | null
}

export const useUserStore = defineStore('user', {
    state: (): State => ({
        user: null,
        token: null,
    }),
    getters: {
        isAuthenticated: (state) => !!state.token,
    },
    actions: {
        setUser(data: { user: User; token: string }) {
            this.user = data.user
            this.token = data.token
            localStorage.setItem('token', data.token)
        },
        logout() {
            this.user = null
            this.token = null
            localStorage.removeItem('token')
        },
        loadFromLocalStorage() {
            if (process.client) {
                const token = localStorage.getItem('token')
                if (token) {
                    try {
                        const decoded: any = jwtDecode(token)
                        this.user = {
                            id: decoded.id,
                            email: decoded.email,
                            isAdmin: decoded.isAdmin || false,
                        }
                        this.token = token
                    } catch {
                        this.logout()
                    }
                }
            }
        },
    },
})