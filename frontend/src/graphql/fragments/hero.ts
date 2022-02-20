import { gql } from '@apollo/client';

export const HeroFragment = gql`
  fragment HeroFragment on HomePage {
    heroSection {
      title
      subtitle
      btn {
        text
        url
      }
      img {
        alternativeText
        url
        width
        height
      }
    }
  }
`;
