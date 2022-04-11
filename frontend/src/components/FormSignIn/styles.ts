import styled, { css } from 'styled-components';

export const Form = styled.form`
  display: flex;
  flex-direction: column;
`;

export const Link = styled.a`
  ${({ theme }) => css`
    font-size: ${theme.font.sizes.body1}rem;
    color: ${theme.colors.link};
    text-decoration: none;
    display: inline;

    &:hover {
      text-decoration: underline;
    }
  `}
`;

export const ForgotPassword = styled.div`
  display: flex;
  justify-content: flex-end;
`;

export const ButtonWrapper = styled.div`
  margin: 2rem 0;
  width: 100%;
`;
