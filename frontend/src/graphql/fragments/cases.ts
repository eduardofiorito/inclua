import { gql } from '@apollo/client';

export const CasesFragment = gql`
  fragment CasesFragment on HomePage {
    casesSection {
      title
      cases {
        data {
          attributes {
            imgCard {
              data {
                attributes {
                  alternativeText
                  url
                  width
                  height
                }
              }
            }
            category {
              data {
                attributes {
                  name
                }
              }
            }
            title
            excerpt
            tags {
              data {
                attributes {
                  name
                }
              }
            }
            slug
          }
        }
      }
    }
  }
`;
