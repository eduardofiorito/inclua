import {
  QueryCasesDesign,
  QueryCasesDesignVariables,
  QueryCasesDesign_cases_data,
} from 'graphql/generated/QueryCasesDesign';
import { QUERY_DESIGN_CASES } from 'graphql/queries/cases';
import DesignCasesTemplate, { DesignItemsProps } from 'templates/Cases/Design';
import { initializeApollo } from 'utils/apollo';

export type DesignCasesProps = {
  designCases: DesignItemsProps[];
};

export default function CasesDesign({ designCases }: DesignCasesProps) {
  return <DesignCasesTemplate designCases={designCases} />;
}

export async function getStaticProps() {
  const apolloClient = initializeApollo();
  const { data } = await apolloClient.query<
    QueryCasesDesign,
    QueryCasesDesignVariables
  >({
    query: QUERY_DESIGN_CASES,
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
      designCases: cases.map((caseDesign: QueryCasesDesign_cases_data) => ({
        imgCard: caseDesign.attributes.imgCard.data.attributes,
        title: caseDesign.attributes.title,
        excerpt: caseDesign.attributes.excerpt,
        category: caseDesign.attributes.category.data.attributes,
        tags: caseDesign.attributes.tags.data.map((tag) => tag.attributes.name),
      })),
    },
  };
}
