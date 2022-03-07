import styled, { css } from 'styled-components';

import * as TextFieldStyles from 'components/TextField/styles';

export const FormWrapper = styled.div`
  max-width: 650px;
  padding: 0 1rem;

  ${({ theme }) => css`
    ${TextFieldStyles.Wrapper} {
      margin: ${theme.spacings.small}rem 0;
    }
  `}

  h1 {
    text-align: center;
  }

  button {
    width: 100%;
  }
`;

export const FormLoading = styled.img.attrs(() => ({
  src: '/imgages/dots.svg',
  alt: 'Espere...',
}))`
  width: 4rem;
`;

export const FormError = styled.div`
  ${({ theme }) => css`
    text-align: center;
    color: ${theme.colors.support.red};
    font-size: ${theme.font.sizes.overline};

    svg {
      width: 1.6rem;
    }
  `}
`;

export const FormLink = styled.div`
  ${({ theme }) => css`
    font-size: ${theme.font.sizes.body1}rem;
    color: ${theme.colors.title};
    text-align: center;
  `}
`;

export const FormSuccess = styled.p`
  ${({ theme }) => css`
    text-align: center;
    color: ${theme.colors.title};
    font-size: ${theme.font.sizes.overline};

    svg {
      color: ${theme.colors.link};
      width: 2.4rem;
    }
  `}
`;
