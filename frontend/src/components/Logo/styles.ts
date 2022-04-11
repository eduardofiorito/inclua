import styled from 'styled-components';
import { customMedia } from 'utils/generateMediaBreakpoint';

export const WrapperLogo = styled.div`
  .desktop {
    ${customMedia.between('initial', 'large')`
        display: none;
    `};

    ${customMedia.greaterThan('large')`
        display: block;
    `}
  }

  .mobo {
    ${customMedia.between('initial', 'large')`
        display: block;
    `};

    ${customMedia.greaterThan('large')`
        display: none;
    `}
  }
`;

export const Logo = styled.svg`
  height: auto;
`;
