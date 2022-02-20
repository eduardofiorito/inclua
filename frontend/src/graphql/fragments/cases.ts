import { gql } from '@apollo/client';

export const CasesFragment = gql`
  fragment CasesFragment on HomePage {
    casesSection {
      title
      btn {
        text
        url
      }
      cases {
        imgCard {
          alternativeText
          url
          width
          height
        }
        category {
          name
        }
        title
        excerpt
        tags {
          name
        }
        slug
      }
    }
  }
`;
