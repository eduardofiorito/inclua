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
    background: ${theme.colors.cardBg};
    box-shadow: ${theme.colors.cardShadow};
    width: 100%;
    border-radius: 0.25rem;
    padding: 1rem;
    display: flex;
    position: relative;
    flex-direction: column;
    gap: 0.75rem;
    transition: transform ease-in 0.2s;
    min-height: 240px;
    &:hover {
      background: ${theme.colors.shapes};
      transform: scale(1.005);
    }
  `}

  h4 {
    max-height: 4.5rem;
    overflow: hidden;
    text-overflow: ellipsis;
  }
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
    position: absolute;
    bottom: 1rem;

    ${customMedia.between('initial', 'medium')`
      font-size: ${theme.font.sizes.overline}rem;
    `}

    ${customMedia.greaterThan('medium')`
      font-size: ${theme.font.sizes.caption}rem;
    `}
  `}
`;
