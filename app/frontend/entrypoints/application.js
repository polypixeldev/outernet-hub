import axios from 'axios'

import Layout from '../pages/_layout.svelte'

import { createInertiaApp } from '@inertiajs/svelte'

const pages = import.meta.glob('../pages/**/*.svelte')

const csrfToken = document.querySelector('meta[name=csrf-token]').content
axios.defaults.headers.common['X-CSRF-Token'] = csrfToken

createInertiaApp({ 
  resolve: async name => {
    const page = await pages[`../pages/${name}.svelte`]()
    return Object.assign({layout: Layout}, page)
  },
  setup({ el, App, props }) {
    new App({ target: el, props })
  },
})

