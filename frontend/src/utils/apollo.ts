import {
  ApolloClient,
  HttpLink,
  InMemoryCache,
  NormalizedCacheObject,
} from '@apollo/client';
import { concatPagination } from '@apollo/client/utilities';

import { useMemo } from 'react';

let apolloClient: ApolloClient<NormalizedCacheObject | null>;

function createApolloClient() {
  return new ApolloClient({
    ssrMode: typeof window === 'undefined',
    link: new HttpLink({ uri: 'http://localhost:1337/graphql' }),

    cache: new InMemoryCache({
      typePolicies: {
        Query: {
          fields: {
            contentLibraries: concatPagination(),
            cases: concatPagination(),
            guides: concatPagination(),
            checklists: concatPagination(),
          },
        },
      },
    }),
  });
}

export function initializeApollo(initialState = null) {
  // serve para verificar se já existe uma instância, para não criar outra
  const apolloClientGlobal = apolloClient ?? createApolloClient();

  // se a página usar o apolloClient no lado client
  // hidratamos o estado inicial aqui
  if (initialState) {
    apolloClientGlobal.cache.restore(initialState);
  }

  // sempre inicializando no SSR com cache limpo
  if (typeof window === 'undefined') return apolloClientGlobal;
  // cria o apolloClient se estiver no client side
  apolloClient = apolloClient ?? apolloClientGlobal;

  return apolloClient;
}

export function useApollo(initialState = null) {
  const store = useMemo(() => initializeApollo(initialState), [initialState]);
  return store;
}
