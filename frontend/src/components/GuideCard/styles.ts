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
    max-width: 270px;
    background: ${theme.colors.cardBg};
    box-shadow: ${theme.colors.cardShadow};
    border-radius: 0.25rem;
    padding: 1rem;
    display: flex;
    flex-direction: column;
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

  img {
    max-width: 60px;
  }
`;

export const ReadingTime = styled.span`
  ${({ theme }) => css`
    display: flex;
    align-items: center;
    color: ${theme.colors.subtitle};

    ${customMedia.between('initial', 'medium')`
      font-size: ${theme.font.sizes.overline}rem;
    `}

    ${customMedia.greaterThan('medium')`
      font-size: ${theme.font.sizes.caption}rem;
    `}
  `}
`;
