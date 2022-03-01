import { gql } from '@apollo/client';

export const QUERY_NOTFOUND = gql`
  query QueryNotFound {
    notFound {
      img {
        alternativeText
        url
      }
      title
      btn {
        text
        url
      }
    }
  }
`;
