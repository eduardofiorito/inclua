import { gql } from '@apollo/client';

export const QUERY_ABOUT = gql`
  query QueryAbout {
    about {
      title
      subtitle
      content
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
