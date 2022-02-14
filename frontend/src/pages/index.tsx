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
  } = data.homePage.data.attributes;

  return {
    props: {
      revalidate: 60 * 60,
      hero: {
        title: hero.title,
        subtitle: hero.subtitle,
        btnPrimary: hero.btnPrimary,
        img: hero.img.data.attributes,
      },
      guides: {
        title: guides.title,
        cards: guides.guideCard.map((card) => ({
          badge: card.badge,
          img: card.img.data.attributes,
          title: card.title,
          type: card.type,
          description: card.description,
          linkUrl: card.linkUrl,
          linkText: card.linkText,
        })),
      },
      cases: {
        title: cases.title,
        cards: cases.cases.data.map((card) => ({
          img: {
            alternativeText:
              card.attributes.imgCard.data.attributes.alternativeText,
            url: card.attributes.imgCard.data.attributes.url,
          },
          category: {
            name: card.attributes.category.data.attributes.name,
          },
          title: card.attributes.title,
          excerpt: card.attributes.excerpt,
          tags: card.attributes.tags.data.map((tag) => tag.attributes.name),
          slug: card.attributes.slug,
        })),
      },
      library: {
        title: library.title,
        content_libraries: library.content_libraries.data.map((card) => ({
          typeContent: card.attributes.typeContent,
          title: card.attributes.title,
          img: {
            alternativeText:
              card.attributes.img.data.attributes.alternativeText,
            url: card.attributes.img.data.attributes.url,
          },
          link: {
            label: card.attributes.link.text,
            url: card.attributes.link.url,
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
