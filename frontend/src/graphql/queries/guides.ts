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

export const QUERY_GUIDE_BY_SLUG = gql`
  query QueryGuideBySlug($slug: String!) {
    guides(where: { slug: $slug }) {
      title
      excerpt
      slug
      content
      readingTime
      audioDescription {
        url
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
      accessible_tos {
        name
        description
        icon {
          alternativeText
          url
        }
      }
    }
  }
`;
