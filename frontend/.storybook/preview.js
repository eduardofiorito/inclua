import { ThemeProvider } from "styled-components"

import GlobalStyle from 'styles/GlobalStyle'

// eslint-disable-next-line @typescript-eslint/no-unused-vars
import darkTheme from 'styles/darkTheme';
// eslint-disable-next-line @typescript-eslint/no-unused-vars
import theme from 'styles/theme';

export const parameters = {
  actions: { argTypesRegex: "^on[A-Z].*" },
  controls: {
    matchers: {
      color: /(background|color)$/i,
      date: /Date$/,
    },
  },
}

export const decorators = [
  (Story) => (
    <ThemeProvider theme={theme}>
      <Story />
      <GlobalStyle />
    </ThemeProvider>
  )
]