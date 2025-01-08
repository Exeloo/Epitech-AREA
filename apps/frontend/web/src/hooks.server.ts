import { setSession } from '$houdini';
import type { Handle } from '@sveltejs/kit';

export const handle: Handle = async ({ event, resolve }) => {
	const token = event.cookies.get('token');

	if (token) {
		setSession(event, { user: { token } });
	} else {
		if (!event.url.pathname.startsWith('/auth')) {
			const loginUrl = new URL('/auth/login', event.url.origin);
			return Response.redirect(loginUrl.toString(), 303);
		}
	}

	return resolve(event);
};
