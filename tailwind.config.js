module.exports = {
  purge: [],
  darkMode: false, // or 'media' or 'class'
  theme: {
    screens: {
      sm: '480px',
      md: '768px',
      lg: '976px',
      xl: '1440px',
    },
    extend: {
      colors: {
        primary: {
          100: "#fef6eb",
          200: "#f7c686",
          300: "#f4b35d",
          400: "#f2aa49",
          500: "#f1a035",
          600: "#d99030",
          700: "#c1802a",
          800: "#a97025",
          900: "#916020",
        },
      },
    },
  },
  variants: {
    extend: {},
  },
  plugins: [
    require('@tailwindcss/forms')
  ],
}
