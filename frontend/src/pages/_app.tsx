import Meta from 'components/Meta';
import { AppProps } from 'next/app';
import Head from 'next/head';
import { ThemeProvider } from 'styled-components';
import { GlobalStyle } from 'styles/GlobalStyle';
// eslint-disable-next-line @typescript-eslint/no-unused-vars
import darkTheme from 'styles/darkTheme';
// eslint-disable-next-line @typescript-eslint/no-unused-vars
import theme from 'styles/theme';

export default function App({ Component, pageProps }: AppProps) {
  return (
    <>
      <Head>
        <title>Título</title>
        <Meta />
        <link
          href="https://fonts.googleapis.com/css2?family=Raleway:wght@400;500;600&family=Roboto:wght@400;500;600&display=swap"
          rel="stylesheet"
        />
        <link
          rel="shortcut icon"
          type="image/x-icon"
          href="images/favicon.ico"
        />
        <link rel="apple-touch-icon" href="images.favicon.ico" />
      </Head>
      <ThemeProvider theme={theme}>
        <Component {...pageProps} />
        <GlobalStyle />
      </ThemeProvider>
    </>
  );
}
