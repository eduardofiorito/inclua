import { gql } from '@apollo/client';

export const LibraryFragment = gql`
  fragment LibraryFragment on HomePage {
    librarySection {
      title
      content_libraries {
        data {
          attributes {
            typeContent
            title
            img {
              data {
                attributes {
                  alternativeText
                  url
                }
              }
            }
            link {
              text
              url
            }
          }
        }
      }
      btn {
        text
        url
      }
    }
  }
`;
