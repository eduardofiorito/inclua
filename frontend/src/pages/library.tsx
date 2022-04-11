import { initializeApollo } from 'utils/apollo';
import { QUERY_LIBRARIES } from 'graphql/queries/libraries';
import {
  QueryLibraries,
  QueryLibrariesVariables,
} from 'graphql/generated/QueryLibraries';
import { parseQueryStringToWhere } from 'utils/filter';

import LibraryTemplate, { LibraryTemplateProps } from 'templates/Library';
import { GetServerSidePropsContext } from 'next';
import {
  categoriesFields,
  contentTypesFields,
  languagesFields,
} from 'utils/filter/library/fields';

export default function Library(props: LibraryTemplateProps) {
  return <LibraryTemplate {...props} />;
}

export async function getServerSideProps({ query }: GetServerSidePropsContext) {
  const apolloClient = initializeApollo();

  const filterCategories = {
    title: 'Categorias',
    name: 'categories',
    type: 'checkbox',
    fields: categoriesFields,
  };

  const filterContentType = {
    title: 'Tipo',
    name: 'content_type',
    type: 'checkbox',
    fields: contentTypesFields,
  };

  const filterLanguage = {
    title: 'Idioma',
    name: 'language',
    type: 'radio',
    fields: languagesFields,
  };

  const filterItems = [filterContentType, filterCategories, filterLanguage];

  const { data } = await apolloClient.query<
    QueryLibraries,
    QueryLibrariesVariables
  >({
    query: QUERY_LIBRARIES,
    variables: {
      start: 0,
      limit: 9,
      where: parseQueryStringToWhere({ queryString: query, filterItems }),
      sort: query.sort as string | null,
    },
  });

  const library = data.library;

  return {
    props: {
      initialApolloState: apolloClient.cache.extract(),
      filterItems,
      library,
    },
  };
}
