<script lang="ts">
	import { PUBLIC_API_URL } from '$env/static/public';
</script>

<div>
	<a
		href={`${PUBLIC_API_URL}/auth/google`}
		class="flex items-center justify-center gap-5 rounded-xl bg-neutral-50 py-3 text-xl text-neutral-400 shadow-inner outline outline-1 outline-gray-300 dark:bg-gray-500 dark:text-neutral-200 dark:outline-gray-700"
	>
		<i class="fi fi-brands-google flex items-center justify-center"></i>
		Se connecter avec Google
	</a>
</div>
