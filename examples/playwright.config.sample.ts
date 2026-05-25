import { defineConfig, devices } from '@playwright/test';
import { defineBddConfig } from 'playwright-bdd';

const testDir = defineBddConfig({
    features: 'tests/features/*.feature',
    steps: ['tests/steps/**/*.ts', 'tests/support/**/*.ts'],
});

export default defineConfig({
    testDir,
    timeout: 120 * 1000,
    expect: { timeout: 10 * 1000 },
    fullyParallel: true,
    forbidOnly: !!process.env.CI,
    retries: process.env.CI ? 2 : 0,
    workers: process.env.CI ? 3 : undefined,
    reporter: [
        ['list'],
        ['html', { open: 'never' }],
    ],
    use: {
        trace: 'on-first-retry',
        screenshot: 'only-on-failure',
        video: 'retain-on-failure',
        headless: true,
    },
    projects: [
        {
            name: 'chromium',
            use: { ...devices['Desktop Chrome'] },
        },
    ],
});

