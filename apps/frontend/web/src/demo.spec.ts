import { describe, it, expect } from 'vitest';
import { render } from '@testing-library/svelte';
import Submit from './lib/auth/Submit.svelte';
import Checkbox from './lib/auth/Checkbox.svelte';
import Validation from './lib/auth/Validation.svelte';
import Input from '$lib/Inputs/Input.svelte';
import Layout from './routes/+layout.svelte';

describe('sum test', () => {
	it('adds 1 + 2 to equal 3', () => {
		expect(1 + 2).toBe(3);
	});
});

describe('Submit component', () => {
	it('renders the button with the correct text', () => {
		const { getByText } = render(Submit, { props: { text: 'Get started', onsubmit: () => {} } });
		expect(getByText('Get started')).toBeTruthy();
	});
});

describe('Checkbox component', () => {
	it('renders the checkbox', () => {
		const { getByRole } = render(Checkbox, { props: { value: false } });
		expect(getByRole('checkbox')).toBeTruthy();
	});
});

describe('Validation component', () => {
	it('renders the description', () => {
		const { getByText } = render(Validation, {
			props: { description: 'Must be at least 8 characters' }
		});
		expect(getByText('Must be at least 8 characters')).toBeTruthy();
	});
});

describe('Input component', () => {
	it('renders the input with the correct placeholder', () => {
		const { getByPlaceholderText } = render(Input, {
			props: { placeholder: 'Enter your username', title: 'Username', value: '' }
		});
		expect(getByPlaceholderText('Enter your username')).toBeTruthy();
	});
});

describe('Layout Component', () => {
	it('renders the correct heading based on the URL', () => {
		const { getByText } = render(Layout, {
			props: { $page: { url: { pathname: '/auth/signup' } } }
		});
		expect(getByText('Create an account')).toBeTruthy();

		const { getByText: getByTextLogin } = render(Layout, {
			props: { $page: { url: { pathname: '/auth/login' } } }
		});
		expect(getByTextLogin('Login in to your account')).toBeTruthy();
	});
});
