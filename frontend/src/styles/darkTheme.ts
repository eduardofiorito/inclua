export default {
  breakpoins: {
    sm: '36rem',
    md: '48rem',
    lg: '62rem',
    xl: '75rem',
    xxl: '87.5rem',
    max: '120rem',
  },
  gutter: '1.875rem',
  font: {
    family:
      "'Roboto', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif",
    familyTitle:
      "'Raleway', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif",
    weight: {
      regular: 400,
      medium: 500,
      semiBold: 600,
    },
    sizes: {
      overline: 0.75,
      caption: 0.875,
      body2: 1,
      body1: 1.125,
      button: 1.125,
      h6: 1.25,
      h5: 1.375,
      h4: 1.75,
      h3: 2.25,
      h2: 2.75,
      h1: 3.375,
    },
  },
  colors: {
    main: '#000',
    primary100: '#0A0F48',
    primary200: '#06266B',
    primary300: '#2D53A4',
    primary400: '#6086D6',
    primary500: '#B2C7F3',
    primary600: '#EBF2FD',
    button: {
      primary: {
        background: '#6086D6',
        color: '#000',
        hover: '#97B2ED',
        focus: '#A4BDF4',
        pressed: '#A4BDF4',
        disable: {
          color: 'rgba(255, 255, 255, 0.5)',
          background: 'rgba(45, 83, 164, 0.5)',
        },
      },
      secondary: {
        background: '#121212',
        color: '#6086D6',
        hover: '#6086D6',
        focus: '#97B2ED',
        pressed: '#A4BDF4',
        disable: {
          color: 'rgba(45, 83, 164, 0.5)',
          background: 'rgba(255, 255, 255, 0.5)',
        },
      },
      text: {
        background: '#121212',
        color: '#6086D6',
        hover: 'rgba(136, 198, 251,.1);',
        focus: 'rgba(136, 198, 251,.1)',
        pressed: 'rgba(136, 198, 251,.1);',
        disable: {
          color: 'rgba(136, 198, 251,.1)',
          background: '#121212',
        },
      },
    },
    title: 'rgba(235, 242, 253, .75)',
    subtitle: '#8A95A8',
    text: '#B2B5BD',
    bg: '#121212',
    cardBg: '#1f1f1f',
    cardShadow:
      '0px 6px 8px rgba(6, 38, 107, 0.08), 0px 1px 18px rgba(6, 38, 107, 0.04), 0px 3px 5px rgba(6, 38, 107, 0.01)',
    border: '#1f1f1f',
    link: '#727AD5',
    cta: '#BCCCF1',
    footer: '#D9DCFC',
    header: '#000',
    badge: '#777ECF',
    strong: '#fff',
    overlay: 'rgba(255,255,255,0.05)',
    shapes: '#0A0A0A',
    tags: '#303030',
  },
  spacings: {
    none: 0,
    xxsmall: 0.25,
    xsmall: 0.5,
    small: 1,
    medium: 1.5,
    large: 2,
    xlarge: 3,
    xxlarge: 4,
    xxxlarge: 6,
  },
  logo: {
    sizes: {
      small: '7.5rem',
      normal: '9.4375rem',
      moboSmall: '2.25rem',
      moboNormal: '2.875rem',
    },
  },
  layers: {
    base: 10,
    menu: 20,
    overlay: 30,
    modal: 40,
    alwaysOnTop: 50,
  },
};
