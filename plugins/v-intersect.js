export default defineNuxtPlugin((nuxtApp) => {
    nuxtApp.vueApp.directive('intersect', {
        mounted(el, binding) {
            const observer = new IntersectionObserver(
                ([entry]) => {
                    if (entry.isIntersecting) {
                        binding.value(entry)
                    }
                },
                { threshold: 0.2 } // 20% visible avant de déclencher
            )

            observer.observe(el)
        }
    })
})
