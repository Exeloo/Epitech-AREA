export const setTokenInCookies = (data: any) => {
	if (!data) {
		console.log('Login error');
		return;
	}

	const maxAge = 60 * 60 * 24 * 7;
	document.cookie = `token=${data.token}; path=/; Max-Age=${maxAge}; Secure; SameSite=Strict`;
	document.cookie = `refreshToken=${data.refreshToken}; path=/; Max-Age=${maxAge}; Secure; SameSite=Strict`;

	window.location.href = '/';
};
