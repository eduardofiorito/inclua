import {
  QueryCasesDesign,
  QueryCasesDesignVariables,
  QueryCasesDesign_cases_data,
} from 'graphql/generated/QueryCasesDesign';
import { QUERY_CASES_DESIGN } from 'graphql/queries/casesDesign';
import CaseDesignTemplate, { ItemsDesignProps } from 'templates/Cases/Design';
import { initializeApollo } from 'utils/apollo';

export type CaseDesignProps = {
  casesDesign: ItemsDesignProps[];
};

export default function CasesDesign({ casesDesign }: CaseDesignProps) {
  return <CaseDesignTemplate casesDesign={casesDesign} />;
}

export async function getStaticProps() {
  const apolloClient = initializeApollo();
  const { data } = await apolloClient.query<
    QueryCasesDesign,
    QueryCasesDesignVariables
  >({
    query: QUERY_CASES_DESIGN,
    variables: {
      start: 0,
      limit: 3,
      type: 'Designers',
    },
  });
  const cases = data.cases.data;

  return {
    props: {
      revalidate: 60 * 60,
      casesDesign: cases.map((caseDesign: QueryCasesDesign_cases_data) => ({
        imgCard: caseDesign.attributes.imgCard.data.attributes,
        title: caseDesign.attributes.title,
        excerpt: caseDesign.attributes.excerpt,
        category: caseDesign.attributes.category.data.attributes,
        tags: caseDesign.attributes.tags.data.map((tag) => tag.attributes.name),
      })),
    },
  };
}
