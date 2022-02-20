import styled, { css } from 'styled-components';
import { customMedia } from 'utils/generateMediaBreakpoint';

export const Wrapper = styled.section`
  display: flex;
  flex-wrap: wrap;
  gap: 2rem;

  ${customMedia.between('initial', 'large')`
      flex-direction: column;
  `}
`;

export const Column = styled.div`
  ${({ theme }) => css`
    flex: 1;
    border-right: solid 1px black;
    border-color: ${theme.colors.border};
    padding-right: 0.5rem;

    ${customMedia.between('initial', 'large')`
        border: none;
    `}
  `}

  &:nth-child(3) {
    border: 0;
  }
`;

export const LinkWrapper = styled.div`
  display: flex;
  flex-direction: column;
`;

export const Title = styled.p`
  ${({ theme }) => css`
    line-height: 2rem;
    font-family: ${theme.font.familyTitle};
    font-weight: ${theme.font.weight.semiBold};
    color: ${theme.colors.title};
    padding: 0 0.5rem 0 0;
  `}
`;

export const Link = styled.a`
  ${({ theme }) => css`
    text-decoration: none;
    font-weight: ${theme.font.weight.regular};
    color: ${theme.colors.text};
    line-height: 1.5rem;
    padding: 0.5rem 0.5rem 0.5rem 0;
    position: relative;

    ${customMedia.between('initial', 'large')`
        padding: 1rem 0;
        margin: .5rem 0;
    `}

    svg {
      display: none;
    }

    &:hover {
      background: ${theme.colors.button.text.hover};

      svg {
        display: block;
        position: absolute;
        right: 0.5rem;
        bottom: calc(50% - 9px);
      }
    }
  `}
`;

export const All = styled.a`
  ${({ theme }) => css`
    color: ${theme.colors.link};
    display: flex;
    align-items: center;
    align-self: flex-start;
    font-weight: ${theme.font.weight.semiBold};
    text-decoration: none;

    &:hover {
      text-decoration: underline;
    }

    ${customMedia.between('initial', 'medium')`
      font-size: ${theme.font.sizes.caption}rem;
      padding: 1rem 0;
      margin: .5rem 0;
    `}

    ${customMedia.greaterThan('medium')`
      font-size: ${theme.font.sizes.body2}rem;
      padding: 0.5rem 0.5rem 0.5rem 0;
    `}
  `}
`;

export const Row = styled.div`
  display: flex;
  flex: 1;
`;
