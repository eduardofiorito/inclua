import darkTheme from 'styles/darkTheme';

/* type inference */
type DarkTheme = typeof darkTheme;

declare module 'styled-components' {
  // eslint-disable-next-line @typescript-eslint/no-empty-interface
  export interface DefaultTheme extends DarkTheme {}
}
