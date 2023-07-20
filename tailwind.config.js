/** @type {import('tailwindcss').Config} */
export default {
  content: ['./app/**/*.html.erb', './app/**/*.svelte'],
  safelist: ['bg-yellow', 'bg-green', 'bg-lightblue', 'bg-red-600'],
  theme: {
    extend: {
      colors: {
        sky: '#87CEEB',
        night: '#020A0E',
        'night-light': 'rgba(10,9,56,0)',
        greenish: '#659963',
        purple: '#816399',
        brownish: '#7F5A52',
        lightblue: '#5BB58A',
        green: '#3D9D02',
        yellow: '#D0A73D',
      },
      fontFamily: {
        inter: ['Inter', 'sans-serif'],
      },
    },
  },
  plugins: [],
};
