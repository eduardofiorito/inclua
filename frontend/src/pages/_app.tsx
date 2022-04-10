import { AppProps } from 'next/app';
import Head from 'next/head';
import { ThemeProvider } from 'styled-components';
import { GlobalStyle } from 'styles/GlobalStyle';
import theme from 'styles/theme';
import darkTheme from 'styles/darkTheme';
import Meta from 'components/Meta';
import Header from 'components/Header';
import { useEffect, useState } from 'react';
import { ApolloProvider } from '@apollo/client';
import { useApollo } from 'utils/apollo';

import VLibras from '@djpfs/react-vlibras';

export default function App({ Component, pageProps }: AppProps) {
  const [themeState, setThemeState] = useState('light');
  const isDarkTheme = themeState === 'dark';

  const toggleTheme = () => {
    const updatedTheme = isDarkTheme ? 'light' : 'dark';
    setThemeState(updatedTheme);
    localStorage.setItem('themeState', updatedTheme);
  };

  useEffect(() => {
    const savedTheme = localStorage.getItem('themeState');
    const prefersDark =
      window.matchMedia &&
      window.matchMedia('(prefers-color-scheme: dark)').matches;
    if (savedTheme && ['dark', 'light'].includes(savedTheme)) {
      setThemeState(savedTheme);
    } else if (prefersDark) {
      setThemeState('dark');
    }
  }, []);

  const client = useApollo(pageProps.initialApolloState);
  return (
    <>
      <Head>
        <title>Construindo um mundo digital acessível | Inclua</title>
        <Meta />
        <link
          href="https://fonts.googleapis.com/css2?family=Raleway:wght@500;600;700&family=Roboto:wght@400;500&family=Source+Code+Pro:wght@300;400&display=swap"
          rel="stylesheet"
        />
        <link
          rel="shortcut icon"
          type="image/x-icon"
          href="/images/favicon.ico"
        />
        <link rel="apple-touch-icon" href="/images/favicon.ico" />
      </Head>
      <ApolloProvider client={client}>
        <ThemeProvider theme={themeState === 'dark' ? darkTheme : theme}>
          <Header
            title="Mudar o tema"
            fnToggle={toggleTheme}
            lightText="Para modo claro"
            darkText="Para modo escuro"
            isDarkTheme={isDarkTheme}
          />

          <Component {...pageProps} />

          <VLibras />
          <GlobalStyle />
        </ThemeProvider>
      </ApolloProvider>
    </>
  );
}
