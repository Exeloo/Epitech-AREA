import {defineConfig} from 'vitepress'

// https://vitepress.dev/reference/site-config
export default defineConfig({
  title: "Aether Documentation",
  description: "The AREA project",
  themeConfig: {
    nav: [
      { text: 'Home', link: '/' },
      { text: 'API', link: '/api' }
    ],

    sidebar: [
      {
        text: 'API',
        items: [
          { text: 'Introduction', link: '/api' },
          { text: 'Architecture', link: '/api/architecture' },
          {
            text: 'Providers',
            link: '/api/providers',
            collapsed: true,
            items: [
              { text: 'Manifest', link: '/api/providers/manifest' },
              { text: 'OAuth', link: '/api/providers/oauth' },
              { text: 'Actions', link: '/api/providers/actions' },
              { text: 'Triggers', link: '/api/providers/triggers' },
              { text: 'Field', link: '/api/providers/manifest/field' },
            ]
          },
        ]
      }
    ],

    socialLinks: [
      { icon: 'github', link: 'https://github.com/vuejs/vitepress' }
    ]
  }
})
