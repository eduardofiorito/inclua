import { gql } from '@apollo/client';

export const QUERY_LIBRARIES = gql`
  query QueryLibraries($start: Int, $limit: Int!, $sort: String, $where: JSON) {
    contentLibraries(start: $start, limit: $limit, sort: $sort, where: $where) {
      title
      img {
        url
        alternativeText
      }
      categories {
        name
      }
      language
      link {
        text
        url
      }
      content_type {
        name
      }
    }
    contentLibrariesConnection(where: $where) {
      values {
        id
      }
    }
    library {
      title
      description
      btnShowMore
      empty {
        text
        img {
          alternativeText
          url
        }
      }
    }
  }
`;
