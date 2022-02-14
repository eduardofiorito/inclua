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
    border-radius: 10px;
    transition: transform ease-in 0.2s;
    min-height: 492px;
    position: relative;

    &:hover {
      background: ${theme.colors.shapes};
      transform: scale(1.005);
    }

    img {
      max-width: 100%;
      max-height: 207px;
      height: auto;
      border-radius: 8px 8px 0 0;
      display: block;
      object-fit: cover;
    }

    h4 {
      max-height: 6rem;
      overflow: hidden;
      text-overflow: ellipsis;
    }
  `}
`;

export const Content = styled.div`
  padding: 1rem;
`;

export const Excerpt = styled.p`
  max-height: 4.8rem;
  overflow: hidden;
  text-overflow: ellipsis;

  ${({ theme }) => css`
    margin-bottom: ${theme.spacings.small}rem;
    color: ${theme.colors.text};

    ${customMedia.between('initial', 'medium')`
      font-size: ${theme.font.sizes.caption}rem;
      line-height: 1.25rem;
    `}

    ${customMedia.greaterThan('medium')`
      font-size: ${theme.font.sizes.body2}rem;
      line-height: 1.5rem;
    `}
  `}
`;

export const TagsWrapper = styled.div`
  position: absolute;
  bottom: 1rem;
`;

export const Tags = styled.span`
  ${({ theme }) => css`
    background: ${theme.colors.tags};
    color: ${theme.colors.title};
    display: inline-flex;
    padding: 0.5rem;
    margin-right: 0.5rem;
    border-radius: 3rem;

    ${customMedia.between('initial', 'medium')`
      font-size: ${theme.font.sizes.overline}rem;
    `}

    ${customMedia.greaterThan('medium')`
      font-size: ${theme.font.sizes.caption}rem;
    `}
  `}
`;
