import styled, { css } from 'styled-components';
import { customMedia } from 'utils/generateMediaBreakpoint';

export const Wrapper = styled.main`
  ${({ theme }) => css`
    position: relative;

    ${customMedia.between('initial', 'medium')`
      padding: ${theme.spacings.large}rem 0;
    `}

    ${customMedia.between('medium', 'large')`
      padding: ${theme.spacings.xlarge}rem 0;
    `}

    ${customMedia.greaterThan('large')`
      padding: ${theme.spacings.xxlarge}rem 0;
    `}
  `}

  h1 {
    ${customMedia.between('initial', 'large')`
      text-align: center;
    `}

    ${customMedia.greaterThan('large')`
      text-align: left;
    `}
  }
`;

export const Shape = styled.div`
  ${customMedia.between('initial', 'large')`
      display: none;
  `}

  ${customMedia.greaterThan('large')`
      ${({ theme }) => css`
        position: absolute;
        top: 0;
        right: 0;
        color: ${theme.colors.shapes};
        z-index: -1;
      `}
  `}
`;

export const Description = styled.h2`
  ${({ theme }) => css`
    color: ${theme.colors.subtitle};

    ${customMedia.between('initial', 'large')`
      width: 100%;
      margin-top: ${theme.spacings.xsmall}rem;
      text-align: center;
      font-size: ${theme.font.sizes.h6}rem;
      line-height: 1.5rem;
    `}

    ${customMedia.greaterThan('large')`
      ${({ theme }) => css`
        width: 80%;
        margin-top: ${theme.spacings.small}rem;
        text-align: left;
        font-size: ${theme.font.sizes.h5}rem;
        line-height: 2rem;
      `}
    `}
  `}
`;

export const Section = styled.section`
  ${({ theme }) => css`
    ${customMedia.greaterThan('medium')`
      display: grid;
      grid-template-columns: 12rem 1fr;
      gap: ${theme.spacings.small}rem;
      margin: ${theme.spacings.large}rem 0 ${theme.spacings.medium}rem 0;
    `}

    ${customMedia.greaterThan('large')`
      gap: ${theme.spacings.xxlarge}rem;
      margin: ${theme.spacings.xlarge}rem 0 ${theme.spacings.large}rem 0;
    `}
  `}
`;

export const Checklists = styled.section`
  ${({ theme }) => css`
    display: flex;
    flex-direction: column;
    gap: 2rem;

    ${customMedia.between('initial', 'large')`
      margin-top: ${theme.spacings.large}rem;
    `}

    ${customMedia.greaterThan('large')`
      margin-top: 0;
    `}
  `}
`;

export const LibraryCardWrapper = styled.div`
  ${({ theme }) => css`
    display: flex;
    gap: 1rem 1rem;
    flex-wrap: wrap;
    margin-bottom: ${theme.spacings.large}rem;
  `}
`;

export const ShowMore = styled.div`
  ${({ theme }) => css`
    display: flex;
    align-items: center;
    justify-content: center;
    color: ${theme.colors.footer};

    ${customMedia.lessThan('medium')`
      button {
        max-width: 100%;
        padding: 0.25rem 0;
      } 
    `}
  `}
`;

export const Empty = styled.div`
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  margin-top: 4rem;

  h2 {
    width: 60%;
    text-align: center;
  }
`;
