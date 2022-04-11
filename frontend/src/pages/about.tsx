import { QueryAbout } from 'graphql/generated/QueryAbout';
import { QUERY_ABOUT } from 'graphql/queries/about';
import About, { AboutTemplateProps } from 'templates/About';
import { initializeApollo } from 'utils/apollo';

export default function PageAbout(props: AboutTemplateProps) {
  return <About {...props} />;
}

export async function getStaticProps() {
  const apolloClient = initializeApollo();
  const { data } = await apolloClient.query<QueryAbout>({
    query: QUERY_ABOUT,
  });
  const { title, subtitle, content, cta } = data.about;

  return {
    revalidate: 60 * 60 * 24,
    props: {
      title: title,
      subtitle: subtitle,
      content: content,
      cta: {
        title: cta.title,
        link: {
          text: cta.btn.text,
          url: cta.btn.url,
        },
      },
    },
  };
}
