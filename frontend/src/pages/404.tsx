import { QueryNotFound } from 'graphql/generated/QueryNotFound';
import { QUERY_NOTFOUND } from 'graphql/queries/notfound';
import NotFound, { NotFoundTemplateProps } from 'templates/NotFound';
import { initializeApollo } from 'utils/apollo';

export default function Page404(props: NotFoundTemplateProps) {
  return <NotFound {...props} />;
}

export async function getStaticProps() {
  const apolloClient = initializeApollo();
  const { data } = await apolloClient.query<QueryNotFound>({
    query: QUERY_NOTFOUND,
  });
  const { title, btn, img } = data.notFound;

  return {
    props: {
      title: title,
      btn: {
        text: btn.text,
        url: btn.url,
      },
      img: {
        alternativeText: img.alternativeText,
        url: img.url,
      },
    },
  };
}
