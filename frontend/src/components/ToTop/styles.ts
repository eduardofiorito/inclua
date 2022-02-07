import styled, { css, DefaultTheme } from 'styled-components';
import { customMedia } from 'utils/generateMediaBreakpoint';

type ButtonProps = {
  isVisible: boolean;
};

const modifiers = {
  isVisible: (theme: DefaultTheme) => css`
    position: fixed;
    align-items: center;
    border-radius: 50%;
    justify-content: center;
    z-index: ${theme.layers.alwaysOnTop};
    background: ${theme.colors.primary400};
    cursor: pointer;
    animation: fadeIn 0.5s;
    transition: opacity 0.4s;
    opacity: 0.8;
    height: 3rem;
    width: 3rem;

    ${customMedia.between('initial', 'medium')`
      bottom: 0.5rem;
      right: 0.5rem;
    `};

    ${customMedia.between('medium', 'large')`
      bottom: 1rem;
      right: 1rem;
    `};

    ${customMedia.greaterThan('large')`
        bottom: 2rem;
        right: 2rem;
        height: 3rem;
        width: 3rem;
    `};

    &:hover {
      opacity: 1;
      transform: scale(1.01);
    }

    @keyframes fadeIn {
      0% {
        opacity: 0;
      }
      100% {
        opacity: 0.8;
      }
    }
  `,

  isNotVisible: () => css`
    display: none;
  `,
};

export const Button = styled.button<ButtonProps>`
  ${({ isVisible, theme }) => css`
    ${isVisible ? modifiers.isVisible(theme) : modifiers.isNotVisible()}
  `}
`;
