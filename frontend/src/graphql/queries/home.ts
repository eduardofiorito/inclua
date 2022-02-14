import { gql } from '@apollo/client';
import { HeroFragment } from '../fragments/hero';
import { GuidesFragment } from '../fragments/guides';
import { CasesFragment } from '../fragments/cases';
import { LibraryFragment } from '../fragments/library';
import { CtaFragment } from '../fragments/cta';

export const QUERY_HOME = gql`
  query QueryHome {
    homePage {
      data {
        attributes {
          ...HeroFragment
          ...GuidesFragment
          ...CasesFragment
          ...LibraryFragment
          ...CtaFragment
        }
      }
    }
  }

  ${HeroFragment}
  ${GuidesFragment}
  ${CasesFragment}
  ${LibraryFragment}
  ${CtaFragment}
`;
