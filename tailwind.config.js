const plugin = require('tailwindcss/plugin');
const {
  sharedOverride,
  sharedExtend,
  sharedPlugins,
} = require('./common/resources/client/shared.tailwind');

module.exports = {
  content: [
    './resources/client/**/*.ts*',
    './common/resources/client/**/*.ts*',
  ],
  darkMode: 'class',
  theme: {
    ...sharedOverride,
    extend: {
      ...sharedExtend,
      colors: {
        gray: {
          100: '#EBF2FF',
          200: '#0061FF',
          300: '#222226',
          400: '#00000099',
          500: '#E7E7E7',
          600: '#051F61'
        },
      },
      boxShadow: {
        'custom-blue': '0px 6px 12px 0px rgba(63, 140, 255, 0.26)', 
      },
    },
    screens: {
      sm: '640px',
      md: '768px',
      lg: '1024px',
      xl: '1146px',
    },
  },
  variants: {
    extend: {},
  },
  plugins: [require('@tailwindcss/typography'), ...sharedPlugins(plugin)],
};
