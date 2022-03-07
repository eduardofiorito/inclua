import styled, { css, DefaultTheme } from 'styled-components';
import { TextFieldProps } from '.';

type IconPositionProps = Pick<TextFieldProps, 'iconPosition'>;

type WrapperProps = Pick<TextFieldProps, 'disabled'> & {
  error?: boolean;
};

export const InputWrapper = styled.div`
  ${({ theme }) => css`
    display: flex;
    align-items: center;
    border-radius: 5px;
    padding: ${theme.spacings.xsmall}rem;
    border: 1px solid;
    border-color: ${theme.colors.border};

    &:focus-within {
      outline: 3px solid ${theme.colors.strong};
    }
  `}
`;

export const Input = styled.input<IconPositionProps>`
  ${({ theme, iconPosition }) => css`

    color: ${theme.colors.text};
    font-size: ${theme.font.sizes.body1}rem;
    padding: ${theme.spacings.xxsmall}rem 0;
    padding-${iconPosition}: ${theme.spacings.xsmall}rem;
    background: transparent;
    border: 0;
    outline: none;
    width: ${iconPosition === 'right' ? `calc(100% - 2.2rem)` : `100%`};



    &:-webkit-autofill {
      -webkit-box-shadow: 0 0 0 ${theme.spacings.small}
        ${theme.colors.tags} inset;

      filter: none;
      &::first-line {
        font-family: ${theme.font.family};
        font-size: ${theme.font.sizes.body1};
      }
    }
  `}
`;

export const Label = styled.label`
  ${({ theme }) => css`
    font-size: ${theme.font.sizes.body1}rem;
    font-weight: ${theme.font.weight.medium};
    color: ${theme.colors.label};
    margin-bottom: ${theme.spacings.xsmall}rem;
    cursor: pointer;
    display: block;
  `}
`;

export const Icon = styled.div<IconPositionProps>`
  ${({ theme, iconPosition }) => css`
    display: flex;
    color: ${theme.colors.text};
    order: ${iconPosition === 'right' ? 1 : 0};

    & > svg {
      width: 1.5rem;
      height: 100%;
    }
  `}
`;

export const Error = styled.p`
  ${({ theme }) => css`
    color: ${theme.colors.support.red};
    font-size: ${theme.font.sizes.caption}rem;
    margin-top: ${theme.spacings.xxsmall}rem;
  `}
`;

const wrapperModifiers = {
  error: (theme: DefaultTheme) => css`
    ${InputWrapper} {
      border-color: ${theme.colors.support.red};
    }

    ${Icon},

    ${Label} {
      color: ${theme.colors.support.red};
    }
  `,

  disabled: (theme: DefaultTheme) => css`
    ${Label},
    ${Input},
    ${Icon} {
      cursor: not-allowed;
      color: grey;

      &::placeholder {
        color: currentColor;
      }
    }
  `,
};

export const Wrapper = styled.fieldset<WrapperProps>`
  ${({ theme, error, disabled }) => css`
    ${error && wrapperModifiers.error(theme)}
    ${disabled && wrapperModifiers.disabled(theme)}
  `}
`;
