import { gql } from '@apollo/client';

export const LibraryFragment = gql`
  fragment LibraryFragment on HomePage {
    librarySection {
      title
      content_libraries {
        content_type {
          name
        }
        title
        img {
          alternativeText
          url
        }
        link {
          text
          url
        }
      }
      btn {
        text
        url
      }
    }
  }
`;
