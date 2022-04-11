import { gql } from '@apollo/client';

export const CtaFragment = gql`
  fragment CtaFragment on HomePage {
    cta {
      title
      btn {
        text
        url
      }
    }
  }
`;
