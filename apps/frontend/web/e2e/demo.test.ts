import { test, expect } from '@playwright/test';

const baseURL = 'http://localhost:8081';

test.describe('App walkthrough', () => {
  test('should walk through the app', async ({ page }) => {
    await page.goto(`${baseURL}/auth/login`);

    await page.locator('input[placeholder="Enter your email"]').fill('test@test.com');
    await page.locator('input[placeholder="Enter your password"]').fill('123456789aA$$');
    await page.locator('button:text("Sign in")').click();


    const currentURL = page.url();
    console.log(`Current URL after login: ${currentURL}`);

    const pageTitle = await page.title();
    console.log(`Page title after login: ${pageTitle}`);

    const bodyText = await page.locator('body').innerText();
    console.log(`Body text after login: ${bodyText}`);

    const loggedInElements = await page.locator('text=Logout, text=Profile, text=Settings').allTextContents();
    console.log(`Visible elements indicating login status: ${loggedInElements}`);

    await page.goto(`${baseURL}/explore/applets`);
    const appletsURL = page.url();
    console.log(`Current URL after navigating to applets: ${appletsURL}`);
    await expect(page.locator('text=Applets')).toBeVisible();
  });
});