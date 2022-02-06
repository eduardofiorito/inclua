import styled, { css } from 'styled-components';
import { customMedia } from 'utils/generateMediaBreakpoint';

type LinkProps = {
  isOpen?: boolean;
};

const modifiers = {
  open: () => css`
    display: flex;
  `,
  close: () => css`
    display: none;
  `,
};

export const Link = styled.a<LinkProps>`
  ${({ theme }) => css`
    cursor: pointer;
    color: ${theme.colors.primary400};
    position: relative;
    display: flex;
    align-items: center;
    z-index: ${theme.layers.alwaysOnTop};
    text-decoration: none;
    letter-spacing: 0.15px;
    justify-content: center;
    background: ${theme.colors.bg};

    &:focus {
      color: ${theme.colors.title};
    }

    &:active {
      color: ${theme.colors.title};
    }

    &:hover {
      color: ${theme.colors.title};
    }

    ${customMedia.between('initial', 'large')`
        justify-content: space-between;
        padding: 0 1rem;
        font-size: ${theme.font.sizes.h4}rem;
    `}

    ${customMedia.greaterThan('large')`
        font-size: ${theme.font.sizes.body1}rem;
        font-weight: ${theme.font.weight.medium};
        padding: 1rem 0;
    `}
  `}

  ${({ isOpen }) => css`
    width: 100%;

    + ${Content} {
      ${isOpen && modifiers.open()}
      ${!isOpen && modifiers.close()}
      + ${Overlay} {
        ${isOpen && modifiers.open()}
        ${!isOpen && modifiers.close()}
      }
    }
  `}
`;

export const Content = styled.div`
  ${({ theme }) => css`
    display: flex;
    width: 100%;
    flex-direction: column;
    color: ${theme.colors.title};
    background: ${theme.colors.bg};
    z-index: ${theme.layers.alwaysOnTop};
    box-shadow: 0px 6px 8px rgba(6, 38, 107, 0.08),
      0px 1px 18px rgba(6, 38, 107, 0.04), 0px 3px 5px rgba(6, 38, 107, 0.01);
    padding: 2rem;

    ${customMedia.between('initial', 'large')`
      position: relative;
      top: 0px;
      box-shadow: none;
      padding: 0 1rem;

      > div {
        padding: 0;
      }
    `}

    ${customMedia.greaterThan('large')`
      position: absolute;
      top: 78px;
      left: 0;
    `}
  `}
`;

export const Overlay = styled.div`
  ${({ theme }) => css`
    background: ${theme.colors.overlay};
    z-index: ${theme.layers.overlay};

    ${customMedia.greaterThan('large')`
      position: fixed;
      display: block;
      top: 78px;
      bottom: 0px;
      right: 0px;
      left: 0px;
    `}
  `}
`;
