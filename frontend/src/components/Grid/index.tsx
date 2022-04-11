import styled, { css } from 'styled-components';

export const Grid = styled.div`
  ${({ theme }) => css`
    display: grid;
    grid-template-columns: repeat(auto-fill, minmax(18rem, 1fr));
    grid-gap: ${theme.spacings.large}rem;
    margin: ${theme.spacings.medium}rem 0;
  `}
`;
