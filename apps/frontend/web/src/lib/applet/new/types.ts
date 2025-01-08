import type { ProviderWithManifest$data } from '$houdini';

export enum BlockType {
	Actions,
	Triggers
}

export interface ElementValues {
	providerId: number;
	provider: ProviderWithManifest$data;
	actionId: string | undefined;
	inputs: Record<string, string>;
}
