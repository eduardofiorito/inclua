import { initializeApollo } from 'utils/apollo';
import { QUERY_CASES } from 'graphql/queries/cases';
import { QueryCases, QueryCasesVariables } from 'graphql/generated/QueryCases';
import { parseQueryStringToWhere } from 'utils/filter';

import CasesTemplate, { CasesTemplateProps } from 'templates/Cases';
import { GetServerSidePropsContext } from 'next';
import {
  subcategoriesFields,
  tagsFields,
  sortFields,
  categoriesFields,
} from 'utils/filter/cases/fields';

export default function Library(props: CasesTemplateProps) {
  return <CasesTemplate {...props} />;
}

export async function getServerSideProps({ query }: GetServerSidePropsContext) {
  const apolloClient = initializeApollo();

  const filterSort = {
    title: 'Ordernar',
    name: 'sort',
    type: 'radio',
    fields: sortFields,
  };

  const filterCategories = {
    title: 'Categorias',
    name: 'category',
    type: 'checkbox',
    fields: categoriesFields,
  };

  const filterSubcategories = {
    title: 'Subcategorias',
    name: 'subcategory',
    type: 'checkbox',
    fields: subcategoriesFields,
  };

  const filterTags = {
    title: 'Tipo',
    name: 'tags',
    type: 'checkbox',
    fields: tagsFields,
  };

  const filterItems = [
    filterSort,
    filterCategories,
    filterSubcategories,
    filterTags,
  ];

  const { data } = await apolloClient.query<QueryCases, QueryCasesVariables>({
    query: QUERY_CASES,
    variables: {
      start: 0,
      limit: 6,
      where: parseQueryStringToWhere({ queryString: query, filterItems }),
      sort: query.sort as string | null,
    },
  });

  const casesSingle = data.casesSingle;

  return {
    props: {
      initialApolloState: apolloClient.cache.extract(),
      filterItems,
      casesSingle,
    },
  };
}
