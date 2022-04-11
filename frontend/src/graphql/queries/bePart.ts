import { gql } from '@apollo/client';

export const QUERY_BEPART = gql`
  query QueryBePart {
    bePart {
      heroSection {
        title
        subtitle
        img {
          url
          alternativeText
        }
      }
      learnSection {
        title
        images {
          url
          alternativeText
        }
      }
      checklistSection {
        title
        subtitle
        img {
          url
          alternativeText
        }
      }
      networkingSection {
        imgTop {
          alternativeText
          url
        }
        title
        subtitle
        imgBottom {
          alternativeText
          url
        }
      }
      casesAlt {
        title
        subtitle
        img {
          url
          alternativeText
        }
      }
      cta {
        title
        btn {
          text
          url
        }
      }
    }
  }
`;
