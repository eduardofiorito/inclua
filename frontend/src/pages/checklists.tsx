import { initializeApollo } from 'utils/apollo';
import { QUERY_CHECKLISTS } from 'graphql/queries/checklists';
import {
  QueryChecklists,
  QueryChecklistsVariables,
} from 'graphql/generated/QueryChecklists';
import { parseQueryStringToWhere } from 'utils/filter';

import ChecklistsTemplate, {
  ChecklistsTemplateProps,
} from 'templates/Checklists';
import { GetServerSidePropsContext } from 'next';
import {
  contentFields,
  categoriesFields,
} from 'utils/filter/checklists/fields';

export default function Library(props: ChecklistsTemplateProps) {
  return <ChecklistsTemplate {...props} />;
}

export async function getServerSideProps({ query }: GetServerSidePropsContext) {
  const apolloClient = initializeApollo();

  const filterCategories = {
    title: 'Categorias',
    name: 'category',
    type: 'checkbox',
    fields: categoriesFields,
  };

  const filterSubcategories = {
    title: 'Conteúdo',
    name: 'tag',
    type: 'checkbox',
    fields: contentFields,
  };

  const filterItems = [filterCategories, filterSubcategories];

  const { data } = await apolloClient.query<
    QueryChecklists,
    QueryChecklistsVariables
  >({
    query: QUERY_CHECKLISTS,
    variables: {
      start: 0,
      limit: 4,
      where: parseQueryStringToWhere({ queryString: query, filterItems }),
      sort: query.sort as string | null,
    },
  });

  const checklistsSingle = data.checklistSingle;

  return {
    props: {
      initialApolloState: apolloClient.cache.extract(),
      filterItems,
      checklistsSingle,
    },
  };
}
