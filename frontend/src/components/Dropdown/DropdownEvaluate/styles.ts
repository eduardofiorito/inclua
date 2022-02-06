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
    border-right: solid 1px ${theme.colors.border};
    border-color: ${theme.colors.border};
    padding-right: 0.5rem;

    ${customMedia.between('initial', 'large')`
        border: none;
    `}
  `}

  &:nth-child(2) {
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
      background: rgba(235, 242, 253, 0.7);

      svg {
        display: block;
        position: absolute;
        right: 0.5rem;
        bottom: calc(50% - 9px);
      }
    }
  `}
`;

export const Row = styled.div`
  display: flex;
  flex: 1;
`;
