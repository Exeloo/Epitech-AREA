/// <references types="houdini-svelte">

/** @type {import('houdini').ConfigFile} */
const config = {
	watchSchema: {
		url: 'env:PUBLIC_API_URL' + '/graphql'
	},
	plugins: {
		'houdini-svelte': {}
	},
	scalars: {
		DateTime: {
			type: 'Date',
			unmarshal(val) {
				return val ? new Date(val) : null;
			},
			marshal(date) {
				return date && date.getTime();
			}
		},
		JSON: {
			type: 'json'
		}
	},
	session: {
		type: './src/types.d.ts#Session'
	}
};

export default config;
