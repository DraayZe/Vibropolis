import  prisma  from '~/server/utils/prisma'

export default defineEventHandler(async () => {
    const passes = await prisma.pass.findMany()
    return passes
})
