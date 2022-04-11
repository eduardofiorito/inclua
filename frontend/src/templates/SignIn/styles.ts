import styled, { css } from 'styled-components';
import { customMedia } from 'utils/generateMediaBreakpoint';

export const Wrapper = styled.main`
  position: relative;

  .container {
    display: flex;
    justify-content: space-between;
    gap: 3rem;
    align-items: center;
    padding: 1rem;

    @media (min-height: 650px) {
      height: calc(100vh - 131.25px);
      width: 100%;
    }

    ${customMedia.between('initial', 'large')`
      justify-content: center;
    `}
  }

  .Form__FormWrapper-sc-g715pf-0 {
    ${customMedia.between('initial', 'large')`
      padding: 1rem;
      width: 100%;
    `}

    ${customMedia.greaterThan('large')`
      padding: 3rem;
      width: 50%
    `}
  }
`;

export const Content = styled.div`
  ${customMedia.between('initial', 'large')`
      display: none;
    `}

  ${customMedia.greaterThan('large')`
      width: 50%;
      display: flex;
      flex-direction: column;
      justify-content: center;
      align-items: center;
      gap: 1rem;
    `}
`;

export const LogoWrapper = styled.div`
  ${({ theme }) => css`
    color: ${theme.colors.primary400};
  `}
`;

export const Text = styled.p`
  ${({ theme }) => css`
    color: ${theme.colors.primary400};
    font-size: ${theme.font.sizes.h5}rem;
    font-family: ${theme.font.familyTitle};
    text-align: center;
    line-height: 1.5rem;
  `}
`;

export const ImageWrapper = styled.figure`
  ${({ theme }) => css`
    margin: ${theme.spacings.xlarge}rem auto;
  `}
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

export const ShapeBottom = styled.div`
  ${customMedia.between('initial', 'large')`
      display: none;
  `}

  ${customMedia.greaterThan('large')`
    ${({ theme }) => css`
      position: absolute;
      bottom: 0;
      left: 0;
      color: ${theme.colors.shapes};
      z-index: -1;
    `}
  `}
`;
