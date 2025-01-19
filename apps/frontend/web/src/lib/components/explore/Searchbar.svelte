<form class="mx-auto hidden w-1/4 md:block" action="/explore/applets/" method="get">
	<label for="default-search" class="sr-only mb-2 text-sm font-medium text-neutral-900">
		Search
	</label>
	<div class="relative">
		<div class="pointer-events-none absolute inset-y-0 left-0 flex items-center pl-3">
			<svg
				class="h-4 w-4 text-neutral-700 dark:text-gray-300"
				aria-hidden="true"
				xmlns="http://www.w3.org/2000/svg"
				fill="none"
				viewBox="0 0 20 20"
			>
				<path
					stroke="currentColor"
					stroke-linecap="round"
					stroke-linejoin="round"
					stroke-width="2"
					d="m19 19-4-4m0-7A7 7 0 1 1 1 8a7 7 0 0 1 14 0Z"
				/>
			</svg>
		</div>
		<input
			type="search"
			id="default-search"
			name="query"
			class="h-10 w-full rounded-xl bg-neutral-100 pl-10 text-sm placeholder-neutral-500 shadow-inner outline outline-1 outline-neutral-500 dark:bg-gray-700 dark:placeholder-neutral-200 dark:outline-gray-600"
			placeholder="Search applets"
		/>
	</div>
</form>
