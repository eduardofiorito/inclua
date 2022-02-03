import styled from 'styled-components';
import { customMedia } from 'utils/generateMediaBreakpoint';

export const WrapperLogo = styled.div`
  .desktop {
    ${customMedia.lessThan('large')`
      display: none;
    `};
  }

  .mobo {
    ${customMedia.greaterThan('large')`
      display: none;
  `};
  }
`;

export const Logo = styled.svg`
  height: auto;
`;
