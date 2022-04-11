import styled, { css } from 'styled-components';

export const Wrapper = styled.div`
  display: flex;
  align-items: center;
`;

export const Input = styled.input`
  ${({ theme }) => css`
    display: flex;
    align-items: center;
    justify-content: center;
    appearance: none;
    width: 1.5rem;
    height: 1.5rem;
    border: 2px solid ${theme.colors.primary400};
    border-radius: 50%;
    background: transparent;
    transition: background ${theme.transition.fast};
    outline: none;
    cursor: pointer;

    &:focus {
      box-shadow: 0 0 0.5rem ${theme.colors.primary400};
      outline: auto;
    }

    &:before {
      content: '';
      width: 1rem;
      height: 1rem;
      border-radius: 50%;
      background: ${theme.colors.primary400};
      transition: opacity ${theme.transition.fast};
      opacity: 0;
      position: absolute;
    }

    &:checked {
      &:before {
        opacity: 1;
      }
    }
  `}
`;

export const Label = styled.label`
  ${({ theme }) => css`
    padding-left: ${theme.spacings.xsmall}rem;
    line-height: 1;
    cursor: pointer;
    color: ${theme.colors.title};
    font-weight: ${theme.font.weight.regular};
    font-size: ${theme.font.sizes.body2}rem;
  `}
`;
