import { gql } from '@apollo/client';

export const QUERY_CASES_DESIGN = gql`
  query QueryCasesDesign($start: Int!, $limit: Int!, $type: String!) {
    cases(
      filters: { category: { name: { eq: $type } } }
      pagination: { start: $start, limit: $limit }
    ) {
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
          title
          excerpt
          slug

          tags {
            data {
              attributes {
                name
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
        }
      }
    }
  }
`;
