import styled from 'styled-components';

export const LogoLink = styled.a`
  color: ${({ theme }) => theme.colors.primary400};
  display: inline-block;
  text-decoration: none;
  cursor: pointer;
  transition: 0.3s;
  &:hover {
    color: ${({ theme }) => theme.colors.primary300};
    transform: scale(0.99);
  }
`;
