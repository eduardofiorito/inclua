import styled, { css } from 'styled-components';
import { customMedia } from 'utils/generateMediaBreakpoint';

export const Wrapper = styled.main`
  height: calc(100vh - 129px);
  width: 100%;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  position: relative;
  padding: 1rem;

  h1 {
    text-align: center;
    ${({ theme }) => css`
      ${customMedia.between('initial', 'large')`
        width: 100%;
        margin-bottom: ${theme.spacings.medium}rem;
      `}

      ${customMedia.greaterThan('large')`
        width: 40%;
        margin-bottom: ${theme.spacings.large}rem;
      `}
    `}
  }

  img {
    height: auto;
    max-width: 100%;
  }
`;

export const Shape = styled.div`
  ${customMedia.between('initial', 'large')`
      display: none;
  `}

  ${customMedia.greaterThan('large')`
      ${({ theme }) => css`
        position: absolute;
        top: 0;
        right: 0;
        color: ${theme.colors.shapes};
        z-index: -1;
      `}
  `}
`;
