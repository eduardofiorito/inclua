import { gql } from '@apollo/client';

export const HeroFragment = gql`
  fragment HeroFragment on HomePage {
    heroSection {
      title
      subtitle
      btnPrimary {
        text
        url
      }
      img {
        data {
          attributes {
            alternativeText
            url
            width
            height
          }
        }
      }
    }
  }
`;
