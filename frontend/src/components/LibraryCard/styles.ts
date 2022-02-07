import styled, { css } from 'styled-components';
import { customMedia } from 'utils/generateMediaBreakpoint';

export const CardLink = styled.a`
  cursor: pointer;
  text-decoration: none;
  display: inline-flex;
`;

export const Card = styled.article`
  ${({ theme }) => css`
    border: 1px solid ${theme.colors.border};
    max-width: 370px;
    background: ${theme.colors.cardBg};
    box-shadow: ${theme.colors.cardShadow};
    border-radius: 0.25rem;
    padding: 1rem;
    display: flex;
    gap: 0.75rem;
    transition: transform ease-in 0.2s;
    &:hover {
      background: ${theme.colors.shapes};
      transform: scale(1.005);
    }
  `}
`;

export const ImageWrapper = styled.picture`
  display: flex;
  align-items: center;
`;

export const Content = styled.div`
  display: flex;
  flex-direction: column;
`;

export const Link = styled.span`
  ${({ theme }) => css`
    display: flex;
    align-items: center;
    align-self: flex-end;
    color: ${theme.colors.link};
    font-weight: ${theme.font.weight.semiBold};

    ${customMedia.between('initial', 'medium')`
      font-size: ${theme.font.sizes.caption}rem;
    `}

    ${customMedia.greaterThan('medium')`
      font-size: ${theme.font.sizes.body2}rem;
    `}
  `}
`;
