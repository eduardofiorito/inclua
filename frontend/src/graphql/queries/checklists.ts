import { gql } from '@apollo/client';

export const QUERY_CHECKLISTS = gql`
  query QueryChecklists(
    $start: Int
    $limit: Int!
    $sort: String
    $where: JSON
  ) {
    checklistSingle {
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
    checklists(start: $start, limit: $limit, sort: $sort, where: $where) {
      title
      description
      accordion {
        title
        guidelineText
        guidelineLink
        content
      }
      category {
        name
      }
      tag {
        slug
      }
    }
    checklistsConnection(where: $where) {
      values {
        id
      }
    }
  }
`;
