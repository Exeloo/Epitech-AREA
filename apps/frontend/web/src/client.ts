import { HoudiniClient } from '$houdini';
import { PUBLIC_API_URL } from '$env/static/public';

export default new HoudiniClient({
	url: `${PUBLIC_API_URL}/graphql`,
	fetchParams({ session }) {
		const token = session?.user?.token;
		if (!token) {
			return {};
		}

		return {
			headers: {
				Authorization: `${token}`
			}
		};
	}
});
