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
        <title>Inclua</title>
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
      <ApolloProvider client={client}>
        <ThemeProvider theme={isDarkTheme ? darkTheme : theme}>
          <Header
            title="Toggle theme"
            fnToggle={toggleTheme}
            lightText="Light mode"
            darkText="Dark mode"
            isDarkTheme={isDarkTheme}
          />

          <Component {...pageProps} />
          <GlobalStyle />
        </ThemeProvider>
      </ApolloProvider>
    </>
  );
}
