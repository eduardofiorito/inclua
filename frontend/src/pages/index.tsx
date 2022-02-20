import { QueryHome } from 'graphql/generated/QueryHome';
import { QUERY_HOME } from 'graphql/queries/home';
import Home, { HomeProps } from 'templates/Home';
import { initializeApollo } from 'utils/apollo';

export default function Index(props: HomeProps) {
  return (
    <Home
      hero={props.hero}
      guides={props.guides}
      cases={props.cases}
      library={props.library}
      cta={props.cta}
    />
  );
}

export async function getStaticProps() {
  const apolloClient = initializeApollo();
  const { data } = await apolloClient.query<QueryHome>({
    query: QUERY_HOME,
  });
  const {
    heroSection: hero,
    guidesSection: guides,
    casesSection: cases,
    librarySection: library,
    cta,
  } = data.homePage;

  return {
    props: {
      revalidate: 60 * 60,
      hero: {
        title: hero.title,
        subtitle: hero.subtitle,
        btnPrimary: hero.btn,
        img: hero.img,
      },
      guides: {
        title: guides.title,
        cards: guides.guideCard.map((card) => ({
          badge: card.badge,
          img: card.img,
          title: card.title,
          type: card.type,
          description: card.description,
          linkUrl: card.linkUrl,
          linkText: card.linkText,
        })),
      },
      cases: {
        title: cases.title,
        btn: {
          url: cases.btn.url,
          text: cases.btn.text,
        },
        cards: cases.cases.map((card) => ({
          img: {
            alternativeText: card.imgCard.alternativeText,
            url: card.imgCard.url,
          },
          category: {
            name: card.category.name,
          },
          title: card.title,
          excerpt: card.excerpt,
          tags: card.tags.map((tag) => tag.name),
          slug: card.slug,
        })),
      },
      library: {
        title: library.title,
        content_libraries: library.content_libraries.map((card) => ({
          typeContent: card.content_type.name,
          title: card.title,
          img: {
            alternativeText: card.img.alternativeText,
            url: card.img.url,
          },
          link: {
            text: card.link.text,
            url: card.link.url,
          },
        })),
        btn: library.btn,
      },
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
