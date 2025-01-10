<script lang="ts">
	import { page } from '$app/stores';
</script>

<div class="flex h-full w-96 flex-col items-center justify-center gap-5">
	<h2 class="text-3xl font-semibold">
		{$page.url.pathname !== '/auth/signup' ? 'Login in to your account' : 'Create an account'}
	</h2>
	<p class="font-medium text-neutral-600">
		{$page.url.pathname !== '/auth/signup'
			? 'Welcome back! Please enter your details.'
			: 'The adventure begins here'}
	</p>
	<div
		class="relative flex w-full items-center justify-center rounded-xl bg-gray-100 font-semibold outline outline-1 outline-neutral-300"
	>
		<div
			class="absolute left-0 rounded-xl bg-white outline outline-1 outline-neutral-300 transition-all duration-300"
			style="height: 100%; width: 50%; transform: translateX({$page.url.pathname === '/auth/login'
				? '100%'
				: '0%'})"
		></div>
		<a
			href="/auth/signup"
			class="relative z-10 w-full rounded-full py-2 text-center transition-all duration-300"
			class:text-gray-500={$page.url.pathname !== '/auth/signup'}
		>
			Sign up
		</a>
		<a
			href="/auth/login"
			class="relative z-10 w-full rounded-full py-2 text-center transition-all duration-300"
			class:text-gray-500={$page.url.pathname !== '/auth/login'}
		>
			Log in
		</a>
	</div>
	<slot />
</div>
