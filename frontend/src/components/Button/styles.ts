import styled, { css, DefaultTheme } from 'styled-components';
import { customMedia } from 'utils/generateMediaBreakpoint';
import { ButtonProps } from '.';

type SButtonProps = Pick<ButtonProps, 'variation' | 'buttonDisplay'>;

const modifiers = {
  primary: (theme: DefaultTheme) => css`
    background: ${theme.colors.button.primary.background};
    color: ${theme.colors.button.primary.color};
    border: 2px solid ${theme.colors.button.primary.background};

    &:active {
      background: ${theme.colors.button.primary.pressed};
      border-color: ${theme.colors.button.primary.pressed};
    }

    &:hover {
      background: ${theme.colors.button.primary.hover};
      border-color: ${theme.colors.button.primary.hover};
      box-shadow: 0px 4px 4px rgba(4, 67, 122, 0.1);
    }

    &:focus {
      background: ${theme.colors.button.primary.focus};
      border: 2px solid ${theme.colors.strong};
      box-shadow: 0px 4px 4px rgba(4, 67, 122, 0.1);
    }
  `,

  secondary: (theme: DefaultTheme) => css`
    background: ${theme.colors.button.secondary.background};
    color: ${theme.colors.button.secondary.color};
    border: 2px solid ${theme.colors.button.secondary.color};

    &:active {
      background: ${theme.colors.button.secondary.pressed};
      color: ${theme.colors.button.secondary.background};
      border-color: ${theme.colors.button.secondary.pressed};
    }

    &:hover {
      background: ${theme.colors.button.secondary.hover};
      color: ${theme.colors.button.secondary.background};
      border-color: ${theme.colors.button.secondary.hover};
      box-shadow: 0px 10px 30px -20px rgba(53, 64, 176, 0.1);
    }

    &:focus {
      background: ${theme.colors.button.secondary.focus};
      color: ${theme.colors.button.secondary.background};
      border: 2px solid ${theme.colors.strong};
      box-shadow: 0px 4px 4px rgba(4, 67, 122, 0.1);
    }
  `,

  text: (theme: DefaultTheme) => css`
    color: ${theme.colors.button.text.color};
    border-radius: 0;

    &:active {
      background: ${theme.colors.button.text.pressed};
      color: ${theme.colors.button.text.color};
    }

    &:hover {
      background: ${theme.colors.button.text.hover};
      color: ${theme.colors.button.text.color};
      box-shadow: 0px 10px 30px -20px rgba(53, 64, 176, 0.1);
    }

    &:focus {
      background: ${theme.colors.button.text.focus};
      color: ${theme.colors.button.text.color};
      border: 2px solid ${theme.colors.strong};
      border-radius: 0.25rem;
      box-shadow: 0px 4px 4px rgba(4, 67, 122, 0.2);
    }
  `,
};

export const Button = styled.button<SButtonProps>`
  ${({ theme, variation, buttonDisplay }) => css`
    display: ${buttonDisplay};
    font-family: ${theme.font.family};
    font-size: ${theme.font.sizes.button}rem;
    font-weight: ${theme.font.weight.medium};
    line-height: 1em;
    letter-spacing: 0.15px;
    text-align: center;
    text-decoration: none;

    border-radius: 0.25rem;
    cursor: pointer;
    transition: 0.5s;

    ${customMedia.between('initial', 'large')`
      padding: 1rem 1.25rem;
      width: 100%
    `};

    ${customMedia.greaterThan('large')`
        padding: 0.75rem 1rem;
    `};

    ${!!variation && modifiers[variation](theme)}
  `}
`;
