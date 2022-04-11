import styled, { css, DefaultTheme } from 'styled-components';
import { customMedia } from 'utils/generateMediaBreakpoint';
import { rgba } from 'polished';
import * as CheckboxStyles from 'components/Checkbox/styles';
import * as RadioStyles from 'components/Radio/styles';

export const Header = styled.header`
  ${({ theme }) => css`
    z-index: ${theme.layers.toTop};
    display: flex;
    justify-content: flex-end;
  `}
`;

export const OpenWrapper = styled.button`
  ${({ theme }) => css`
    color: ${theme.colors.main};
    font-size: ${theme.font.sizes.body1}rem;
    padding: ${theme.spacings.xxsmall}rem;
    font-weight: ${theme.font.weight.medium};
    font-family: ${theme.font.family};
  `}
  line-height: 1em;
  letter-spacing: 0.15px;
  border-radius: 0.25rem;
  cursor: pointer;

  ${customMedia.greaterThan('medium')`
    display: none;
  `}

  > svg {
    margin-left: 0.5rem;
  }
`;

export const CloseWrapper = styled.button`
  ${({ theme }) => css`
    color: ${theme.colors.title};
    background-color: transparent;
  `}
  cursor: pointer;

  ${customMedia.greaterThan('medium')`
    display: none;
  `}
`;

export const Content = styled.div`
  ${({ theme }) => css`
    flex: 1;
    padding: 0 ${theme.spacings.small}rem;
    margin-bottom: 2rem;
    ${customMedia.greaterThan('medium')`
      padding: 0;
      margin-top: 0;
      margin-bottom: 0;
    `}
  `}
`;

export const Overlay = styled.div`
  display: none;
  position: absolute;
`;

export const Items = styled.div`
  ${({ theme }) => css`
    padding: ${theme.spacings.small}rem 0;

    & + div:last-child {
      border-top: none;
    }

    & > div:not(:last-of-type) {
      margin-bottom: ${theme.spacings.xsmall}rem;
    }

    & + div {
      border-top: 1px solid ${theme.colors.border};
      padding: ${theme.spacings.small}rem 0;
    }

    h3 {
      color: ${theme.colors.title};
      font-size: ${theme.font.sizes.h5};
      font-weight: ${theme.font.weight.medium};
      margin-bottom: ${theme.spacings.small}rem;
    }
  `}
`;

export const Footer = styled.div`
  ${({ theme }) => css`
    box-shadow: 0 -0.2rem 0.4rem ${rgba(theme.colors.title, 0.2)};
    padding: ${theme.spacings.small}rem;

    ${customMedia.greaterThan('medium')`
      display: none;
    `}
  `}
`;

const wrapperModifiers = {
  open: (theme: DefaultTheme) => css`
    z-index: ${theme.layers.alwaysOnTop};
    position: fixed;
    display: flex;
    flex-direction: column;
    right: 0;
    bottom: 0;
    top: 0;
    left: 0;
    height: 100vh;
    width: 100vw;
    overflow: scroll;
    overscroll-behavior: contain;
    scroll-behavior: smooth;
    padding-bottom: 4rem;
    background-color: ${theme.colors.bg};

    ${Header} {
      display: flex;
      justify-content: flex-end;
      padding: 1rem 1rem 0 1rem;
      position: fixed;
      width: 100%;
    }

    ${Footer} {
      position: fixed;
      bottom: 0;
      width: 100%;
      z-index: ${theme.layers.toTop};
      background: ${theme.colors.bg};
    }

    ${OpenWrapper} {
      display: none;
    }

    ${Overlay} {
      z-index: ${theme.layers.overlay};
      background-color: ${theme.colors.bg};
      top: 0;
      left: 0;
      position: fixed;
      width: 100%;
      height: 100vh;
      display: block;
    }

    ${Content} {
      margin-top: 3.375rem;
      transform: translateY(0);
    }

    ${Content} {
      z-index: ${theme.layers.modal};
    }

    ${RadioStyles.Label},
    ${CheckboxStyles.Label} {
      color: ${theme.colors.title};
    }
  `,

  close: (theme: DefaultTheme) => css`
    ${CloseWrapper} {
      z-index: ${theme.layers.toTop};
      display: none;
    }

    ${OpenWrapper} {
      background-color: ${theme.colors.primary400};
      margin-top: ${theme.spacings.medium}rem;
      width: 100%;
    }

    ${Content} {
      transform: translateY(3rem);
      height: 0;
    }

    ${Content}, ${Footer} {
      display: none;
    }
  `,
};

type WrapperProps = {
  isOpen: boolean;
};

export const Wrapper = styled.aside<WrapperProps>`
  ${({ theme, isOpen }) => css`
    ${customMedia.lessThan('medium')`
      ${!!isOpen && wrapperModifiers.open(theme)}
      ${!isOpen && wrapperModifiers.close(theme)}

    `}
  `}
`;
