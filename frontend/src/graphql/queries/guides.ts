import { gql } from '@apollo/client';

export const QUERY_GUIDES = gql`
  query QueryGuides($start: Int, $limit: Int!, $sort: String, $where: JSON) {
    guides(start: $start, limit: $limit, sort: $sort, where: $where) {
      tag {
        name
      }
      category {
        name
      }
      subcategory {
        name
      }
      title
      excerpt
      readingTime
      slug
      icon {
        url
        alternativeText
      }
    }
    guidesConnection(where: $where) {
      values {
        id
      }
    }
    guidesSingle {
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
