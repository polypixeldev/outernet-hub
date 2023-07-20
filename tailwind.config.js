/** @type {import('tailwindcss').Config} */
export default {
  content: ['./app/**/*.html.erb', './app/**/*.svelte'],
  theme: {
    extend: {
      colors: {
        sky: '#87CEEB',
        night: '#020A0E',
        'night-light': 'rgba(10,9,56,0)',
        greenish: '#659963',
        purple: '#816399',
      },
      fontFamily: {
        inter: ['Inter', 'sans-serif'],
      },
    },
  },
  plugins: [],
};
