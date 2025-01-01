import { load_getAllProviders } from '$houdini'

export const load = async (event) => {
    return {
        ...(await load_getAllProviders({ event })),
    }
}