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

export const QUERY_CASE_BY_SLUG = gql`
  query QueryCaseBySlug($slug: String!) {
    cases(where: { slug: $slug }) {
      title
      excerpt
      slug
      content
      imgCard {
        alternativeText
        url
      }
      readingTime
      audioDescription {
        url
      }
      author {
        name
        role
        avatar {
          url
          alternativeText
        }
      }
      tags(limit: 5) {
        name
        slug
      }
      category {
        name
        slug
      }
      subcategory {
        name
      }
      content_libraries(limit: 3) {
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
    }
  }
`;
