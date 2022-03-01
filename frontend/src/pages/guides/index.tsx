import { initializeApollo } from 'utils/apollo';
import { QUERY_GUIDES } from 'graphql/queries/guides';
import {
  QueryGuides,
  QueryGuidesVariables,
} from 'graphql/generated/QueryGuides';
import { parseQueryStringToWhere } from 'utils/filter';

import GuidesTemplate, { GuidesTemplateProps } from 'templates/Guides';
import { GetServerSidePropsContext } from 'next';
import {
  subcategoriesFields,
  tagsFields,
  sortFields,
  categoriesFields,
} from 'utils/filter/guides/fields';

export default function Library(props: GuidesTemplateProps) {
  return <GuidesTemplate {...props} />;
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
    name: 'tag',
    type: 'checkbox',
    fields: tagsFields,
  };

  const filterItems = [
    filterSort,
    filterCategories,
    filterSubcategories,
    filterTags,
  ];

  const { data } = await apolloClient.query<QueryGuides, QueryGuidesVariables>({
    query: QUERY_GUIDES,
    variables: {
      start: 0,
      limit: 9,
      where: parseQueryStringToWhere({ queryString: query, filterItems }),
      sort: query.sort as string | null,
    },
  });

  const guidesSingle = data.guidesSingle;

  return {
    props: {
      initialApolloState: apolloClient.cache.extract(),
      filterItems,
      guidesSingle,
    },
  };
}
