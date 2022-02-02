import { ThemeProvider } from "styled-components"

import GlobalStyle from 'styles/GlobalStyle'
import darkTheme from 'styles/darkTheme'

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
    <ThemeProvider theme={darkTheme}>
      <Story />
      <GlobalStyle />
    </ThemeProvider>
  )
]