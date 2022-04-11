import { initializeApollo } from 'utils/apollo';
import { QueryCases, QueryCasesVariables } from 'graphql/generated/QueryCases';
import { QUERY_CASES, QUERY_CASE_BY_SLUG } from 'graphql/queries/cases';
import {
  QueryCaseBySlug,
  QueryCaseBySlugVariables,
} from 'graphql/generated/QueryCaseBySlug';

import { useRouter } from 'next/router';
import { GetStaticProps } from 'next';
import CaseTemplate from 'templates/Case';
import { CaseTemplateProps } from 'templates/Case';

const apolloClient = initializeApollo();

export default function Guide(props: CaseTemplateProps) {
  const router = useRouter();

  if (router.isFallback) return null;

  return <CaseTemplate {...props} />;
}

export async function getStaticPaths() {
  const { data } = await apolloClient.query<QueryCases, QueryCasesVariables>({
    query: QUERY_CASES,
    variables: { limit: 9 },
  });

  const paths = data.cases.map(({ slug }) => ({
    params: { slug },
  }));

  return { paths, fallback: true };
}

export const getStaticProps: GetStaticProps = async ({ params }) => {
  const { data } = await apolloClient.query<
    QueryCaseBySlug,
    QueryCaseBySlugVariables
  >({
    query: QUERY_CASE_BY_SLUG,
    variables: { slug: `${params?.slug}` },
    fetchPolicy: 'no-cache',
  });

  if (!data.cases.length) {
    return { notFound: true };
  }

  const singleCase = data.cases[0];

  return {
    revalidate: 60 * 60,
    props: {
      slug: params?.slug,
      title: singleCase.title,
      excerpt: singleCase.excerpt,
      content: singleCase.content,
      readingTime: singleCase.readingTime,
      audioDescription: singleCase.audioDescription,
      author: {
        name: singleCase.author.name,
        role: singleCase.author.role,
        avatar: {
          alternativeText: singleCase.author.avatar.alternativeText,
          url: singleCase.author.avatar.url,
        },
      },
      tags: singleCase.tags,
      contentLibraries: singleCase.content_libraries,
      category: singleCase?.category,
      subcategory: singleCase?.subcategory,
    },
  };
};
