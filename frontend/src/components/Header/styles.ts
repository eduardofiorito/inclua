import styled, { css } from 'styled-components';

export const Wrapper = styled.header`
  ${({ theme }) => css`
    padding: 0.25rem;
    background: ${theme.colors.bg};
    border-bottom: 1px solid ${theme.colors.border};

    div {
      display: flex;
      justify-content: flex-end;
    }
  `}

  button {
    ${({ theme }) => css`
      border-radius: 50%;
      width: 38px;
      height: 38px;
      cursor: pointer;
      color: ${theme.colors.title};
      border: 2px solid ${theme.colors.title};
      background: transparent;
      display: flex;
      align-items: center;
      justify-content: center;
      transition: background ease-in 0.15s;
      justify-content: flex-end;

      &:hover {
        color: ${theme.colors.bg};
        border: 2px solid ${theme.colors.title};
        background: ${theme.colors.title};
      }
    `}
  }
`;
