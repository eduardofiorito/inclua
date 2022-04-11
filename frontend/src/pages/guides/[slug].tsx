import { initializeApollo } from 'utils/apollo';
import {
  QueryGuides,
  QueryGuidesVariables,
} from 'graphql/generated/QueryGuides';
import { QUERY_GUIDES, QUERY_GUIDE_BY_SLUG } from 'graphql/queries/guides';
import {
  QueryGuideBySlug,
  QueryGuideBySlugVariables,
} from 'graphql/generated/QueryGuideBySlug';

import { useRouter } from 'next/router';
import { GetStaticProps } from 'next';
import GuideTemplate from 'templates/Guide';
import { GuideTemplateProps } from 'templates/Guide';

const apolloClient = initializeApollo();

export default function Guide(props: GuideTemplateProps) {
  const router = useRouter();

  if (router.isFallback) return null;

  return <GuideTemplate {...props} />;
}

export async function getStaticPaths() {
  const { data } = await apolloClient.query<QueryGuides, QueryGuidesVariables>({
    query: QUERY_GUIDES,
    variables: { limit: 9 },
  });

  const paths = data.guides.map(({ slug }) => ({
    params: { slug },
  }));

  return { paths, fallback: true };
}

export const getStaticProps: GetStaticProps = async ({ params }) => {
  const { data } = await apolloClient.query<
    QueryGuideBySlug,
    QueryGuideBySlugVariables
  >({
    query: QUERY_GUIDE_BY_SLUG,
    variables: { slug: `${params?.slug}` },
    fetchPolicy: 'no-cache',
  });

  if (!data.guides.length) {
    return { notFound: true };
  }

  const singleGuide = data.guides[0];

  return {
    revalidate: 60 * 60,
    props: {
      slug: params?.slug,
      title: singleGuide.title,
      excerpt: singleGuide.excerpt,
      content: singleGuide.content,
      readingTime: singleGuide.readingTime,
      audioDescription: singleGuide.audioDescription,
      contentLibraries: singleGuide.content_libraries,
      category: singleGuide?.category,
      subcategory: singleGuide?.subcategory,
      accessibleTo: singleGuide?.accessible_tos,
    },
  };
};
