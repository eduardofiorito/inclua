import { gql } from '@apollo/client';

export const QUERY_CASES = gql`
  query QueryCases($start: Int, $limit: Int!, $sort: String, $where: JSON) {
    cases(start: $start, limit: $limit, sort: $sort, where: $where) {
      imgCard {
        alternativeText
        url
      }
      category {
        name
      }
      subcategory {
        name
      }
      title
      excerpt
      tags {
        name
      }
      slug
    }
    casesConnection(where: $where) {
      values {
        id
      }
    }
    casesSingle {
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
