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
`;

export const Hero = styled.section``;

export const Description = styled.h2`
  ${({ theme }) => css`
    color: ${theme.colors.subtitle};
    max-width: 768px;

    ${customMedia.between('initial', 'large')`
      width: 100%;
      margin-top: ${theme.spacings.xsmall}rem;
      font-size: ${theme.font.sizes.h6}rem;
      line-height: 1.5rem;
    `}

    ${customMedia.greaterThan('large')`
      ${({ theme }) => css`
        width: 80%;
        margin-top: ${theme.spacings.small}rem;
        font-size: ${theme.font.sizes.h5}rem;
        line-height: 2rem;
      `}
    `}
  `}
`;

export const Content = styled.section`
  ${({ theme }) => css`
    max-width: 768px;
    line-height: 1.5em;
    color: ${theme.colors.text};

    ${customMedia.between('initial', 'large')`
        font-size: ${theme.font.sizes.body2}rem;
    `}

    ${customMedia.greaterThan('large')`
        font-size: ${theme.font.sizes.body1}rem;
    `}

    h1 {
      color: ${theme.colors.title};
      font-weight: ${theme.font.weight.semiBold};
      font-family: ${theme.font.familyTitle};
      margin-top: ${theme.spacings.large}rem;
      line-height: 1.5em;

      ${customMedia.between('initial', 'large')`
        font-size: ${theme.font.sizes.h4}rem;
      `}

      ${customMedia.greaterThan('large')`
        font-size: ${theme.font.sizes.h3}rem;
      `}
    }

    h2 {
      color: ${theme.colors.title};
      font-weight: ${theme.font.weight.semiBold};
      font-family: ${theme.font.familyTitle};
      margin-top: ${theme.spacings.large}rem;
      line-height: 1.5em;

      ${customMedia.between('initial', 'large')`
        font-size: ${theme.font.sizes.h5}rem;
      `}

      ${customMedia.greaterThan('large')`
        font-size: ${theme.font.sizes.h4}rem;
      `}
    }

    h3 {
      color: ${theme.colors.title};
      font-weight: ${theme.font.weight.semiBold};
      font-family: ${theme.font.familyTitle};
      margin-top: ${theme.spacings.medium}rem;
      line-height: 1.5em;

      ${customMedia.between('initial', 'large')`
        font-size: ${theme.font.sizes.h6}rem;
      `}

      ${customMedia.greaterThan('large')`
        font-size: ${theme.font.sizes.h5}rem;
      `}
    }

    h4 {
      color: ${theme.colors.title};
      font-weight: ${theme.font.weight.semiBold};
      font-family: ${theme.font.familyTitle};
      margin-top: ${theme.spacings.small}rem;
      line-height: 1.5em;

      ${customMedia.between('initial', 'large')`
        font-size: ${theme.font.sizes.body1}rem;
      `}

      ${customMedia.greaterThan('large')`
        font-size: ${theme.font.sizes.h6}rem;
      `}
    }

    p {
      margin-top: ${theme.spacings.small}rem;
    }

    figure {
      max-width: 770px;
      width: 100%;
      height: auto;
      margin: ${theme.spacings.large}rem 0;
      text-align: center;

      img {
        max-width: 100%;
        height: auto;
        margin: 0 auto;
        display: block;
      }

      figcaption {
        width: 100%;
        background: ${theme.colors.tags};
        font-size: ${theme.font.sizes.caption}rem;

        span {
          background-color: transparent !important;
          color: ${theme.colors.title} !important;
        }
      }
    }

    strong {
      font-weight: 700;
    }

    i {
      font-style: italic;
    }

    code {
      font-family: ${theme.font.familyCode};
      background-color: #1e1e1e;
      color: #f07f86;
      padding: ${theme.spacings.xxsmall}rem;
      border-radius: 6px;
    }

    a {
      color: ${theme.colors.link};
      font-weight: ${theme.font.weight.medium};
    }

    ul {
      list-style-type: disc;
      list-style-position: inside;
      margin-top: ${theme.spacings.small}rem;

      li::marker {
        color: ${theme.colors.primary400};
      }
    }

    ol {
      list-style-type: decimal;
      list-style-position: inside;

      li::marker {
        color: ${theme.colors.primary400};
      }
    }

    blockquote {
      border-left: 0.5rem solid ${theme.colors.border};
      filter: brightness(80%);
      padding-left: ${theme.spacings.medium}rem;
      font-style: italic;
    }

    table {
      width: 100%;
      border-collapse: collapse;
      margin: ${theme.spacings.medium}rem 0;
      overflow-x: auto;
    }

    tr:first-child {
      font-weight: ${theme.font.weight.semiBold};
    }

    table td,
    table th {
      padding: ${theme.spacings.small};
      border: 0.1rem solid ${theme.colors.border};
    }

    hr {
      ${({ theme }) => css`
        border-top: 1px solid ${theme.colors.border};

        ${customMedia.between('medium', 'large')`
      margin: ${theme.spacings.medium}rem 0;
    `}

        ${customMedia.greaterThan('large')`
      margin: ${theme.spacings.large}rem 0;
    `}
      `}
    }
  `}
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
