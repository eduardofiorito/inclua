import { gql } from '@apollo/client';

export const GuidesFragment = gql`
  fragment GuidesFragment on HomePage {
    guidesSection {
      title
      guideCard {
        badge
        img {
          alternativeText
          url
          width
          height
        }
        type
        title
        description
        linkUrl
        linkText
      }
    }
  }
`;
