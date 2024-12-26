import { test } from '@playwright/test';

test('Applets explorer', async ({ page }) => {
	await page.goto('http://localhost:5173/');
	await page.locator('.grid > div').first().click();
});

test('Providers explorer', async ({ page }) => {
	await page.goto('http://localhost:5173/providers');
	await page.locator('.grid > div').first().click();
});

test('Applets to providers explorer', async ({ page }) => {
	await page.goto('http://localhost:5173/');
	await page.getByRole('link', { name: 'Providers' }).click();
});
