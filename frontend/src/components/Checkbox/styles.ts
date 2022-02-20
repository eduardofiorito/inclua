import styled, { css } from 'styled-components';

export const Wrapper = styled.div`
  display: flex;
  align-items: center;
`;

export const Input = styled.input`
  ${({ theme }) => css`
    cursor: pointer;
    display: flex;
    align-items: center;
    justify-content: center;
    appearance: none;
    width: 1.25rem;
    height: 1.25rem;
    border: 2px solid ${theme.colors.primary400};
    border-radius: 0.2rem;
    transition: background border ${theme.transition.fast};
    position: relative;
    outline: none;

    &:before {
      content: '';
      width: 0.25rem;
      height: 0.75rem;
      border: 2px solid ${theme.colors.main};
      border-top: 0;
      border-left: 0;
      transform: rotate(45deg);
      position: absolute;
      top: -0.5px;
      righ: -0.8px;
      opacity: 0;
      transition: ${theme.transition.fast};
    }

    &:focus {
      box-shadow: 0 0 0.75rem ${theme.colors.primary400};
      outline: auto;
    }

    &:hover {
      border-color: ${theme.colors.primary600};
      transition: ${theme.transition.fast};
    }

    &:checked {
      border-color: ${theme.colors.primary400};
      background: ${theme.colors.primary400};

      &:before {
        opacity: 1;
      }
    }
  `}
`;

export const Label = styled.label`
  ${({ theme }) => css`
    cursor: pointer;
    padding-left: ${theme.spacings.xsmall}rem;
    color: ${theme.colors.primary400};
    line-height: 1.8rem;
    color: ${theme.colors.title};
    font-size: ${theme.font.sizes.body2}rem;
  `}
`;
