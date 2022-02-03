import styled from 'styled-components';

export const LogoLink = styled.a`
  color: ${({ theme }) => theme.colors.primary.primary400};
  display: inline-block;
  text-decoration: none;
  cursor: pointer;
  transition: 0.5s;
  &:hover {
    color: ${({ theme }) => theme.colors.primary.primary300};
    transform: scale(0.99);
  }
`;
