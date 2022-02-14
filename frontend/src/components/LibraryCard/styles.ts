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
    min-width: 370px;
    min-height: 147px;
    position: relative;
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

  h4 {
    max-height: 4rem;
    overflow: hidden;
    text-overflow: ellipsis;
  }
`;

export const ImageWrapper = styled.picture`
  display: flex;
  align-items: center;
`;

export const Content = styled.div`
  display: flex;
  flex-direction: column;
  padding-bottom: 1rem;
`;

export const Link = styled.span`
  ${({ theme }) => css`
    color: ${theme.colors.link};
    font-weight: ${theme.font.weight.semiBold};
    position: absolute;
    bottom: 1rem;
    right: 1rem;

    ${customMedia.between('initial', 'medium')`
      font-size: ${theme.font.sizes.caption}rem;
    `}

    ${customMedia.greaterThan('medium')`
      font-size: ${theme.font.sizes.body2}rem;
    `}
  `}
`;
