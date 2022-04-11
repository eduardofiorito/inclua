import { QueryBePart } from 'graphql/generated/QueryBePart';
import { QUERY_BEPART } from 'graphql/queries/bePart';
import BePart, { BePartTemplateProps } from 'templates/BePart';
import { initializeApollo } from 'utils/apollo';

export default function PageBePart(props: BePartTemplateProps) {
  return <BePart {...props} />;
}

export async function getStaticProps() {
  const apolloClient = initializeApollo();
  const { data } = await apolloClient.query<QueryBePart>({
    query: QUERY_BEPART,
  });
  const {
    heroSection: hero,
    learnSection: learn,
    checklistSection: checklist,
    networkingSection: networking,
    casesAlt: cases,
    cta,
  } = data.bePart;

  return {
    revalidate: 60 * 60 * 24,
    props: {
      hero: {
        title: hero.title,
        subtitle: hero.subtitle,
        img: {
          url: hero.img.url,
          alternativeText: hero.img.alternativeText,
        },
      },
      learn: {
        title: learn.title,
        images: learn.images,
      },
      checklist: {
        title: checklist.title,
        subtitle: checklist.subtitle,
        img: {
          url: checklist.img.url,
          alternativeText: checklist.img.alternativeText,
        },
      },
      networking: {
        imgTop: {
          url: networking.imgTop.url,
          alternativeText: networking.imgTop.alternativeText,
        },
        title: networking.title,
        subtitle: networking.subtitle,
        imgBottom: {
          url: networking.imgBottom.url,
          alternativeText: networking.imgBottom.alternativeText,
        },
      },
      cases: {
        img: {
          url: cases.img.url,
          alternativeText: cases.img.alternativeText,
        },
        title: cases.title,
        subtitle: cases.subtitle,
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
