import styled, { css } from 'styled-components';

export const Container = styled.div`
  ${({ theme }) => css`
    width: 100%;
    max-width: ${theme.breakpoins.xl};
    margin-left: auto;
    margin-right: auto;
    padding-left: calc(${theme.gutter} / 2);
    padding-right: calc(${theme.gutter} / 2);
  `}
`;
