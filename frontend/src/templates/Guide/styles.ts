import styled, { css } from 'styled-components';
import { customMedia } from 'utils/generateMediaBreakpoint';

export const Wrapper = styled.main`
  position: relative;
  ${({ theme }) => css`
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

export const Article = styled.article`
  max-width: 920px;
  margin: 0 auto;
  width: 100%;
`;

export const Header = styled.header``;

export const Divider = styled.hr`
  ${({ theme }) => css`
    border-top: 1px solid ${theme.colors.border};

    ${customMedia.between('medium', 'large')`
      margin: ${theme.spacings.medium}rem 0;
    `}

    ${customMedia.greaterThan('large')`
      margin: ${theme.spacings.large}rem 0;
    `}
  `}
`;

export const Top = styled.span`
  ${({ theme }) => css`
    font-family: Roboto;
    font-weight: ${theme.font.weight.medium};
    font-size: ${theme.font.sizes.h6}rem;
    line-height: ${theme.spacings.medium}rem;
    color: ${theme.colors.subtitle};
    text-transform: uppercase;
    letter-spacing: 0.15px;
  `}
`;

export const Excerpt = styled.p`
  ${({ theme }) => css`
    font-family: ${theme.font.familyTitle};
    font-weight: ${theme.font.weight.semiBold};
    line-height: ${theme.spacings.large}rem;
    color: ${theme.colors.subtitle};

    ${customMedia.between('initial', 'medium')`
      font-size: ${theme.font.sizes.body1}rem;
    `}

    ${customMedia.between('medium', 'large')`
      font-size: ${theme.font.sizes.h6}rem;
    `}

    ${customMedia.greaterThan('large')`
      font-size: ${theme.font.sizes.h5}rem;
    `}
  `}
`;

export const HeaderWrapper = styled.div`
  ${({ theme }) => css`
    display: flex;
    margin: ${theme.spacings.small}rem 0;

    ${customMedia.between('initial', 'small')`
      flex-direction: column;
      gap: 1rem;
    `}

    ${customMedia.greaterThan('small')`
      flex-direction: row;
      justify-content: space-between;
      align-items: center;
      gap: 0;
    `}
  `}
`;

export const ReadingTime = styled.p`
  ${({ theme }) => css`
    font-size: ${theme.font.sizes.body2}rem;
    color: ${theme.colors.subtitle};
  `}
`;

export const Share = styled.div`
  display: flex;
  gap: 0.5rem;

  button {
    ${({ theme }) => css`
      &:hover {
        transform: scale(0.95);
      }

      &:focus {
        outline: 1px solid ${theme.colors.title} !important;
      }
    `}
  }
`;

export const Audio = styled.audio`
  width: 100%;
  margin: 1rem 0;
`;

export const PrismWrapper = styled.div`
  pre[class*='language-'],
  code[class*='language-'] {
    color: #d4d4d4;
    font-size: 13px;
    text-shadow: none;
    font-family: Menlo, Monaco, Consolas, 'Andale Mono', 'Ubuntu Mono',
      'Courier New', monospace;
    direction: ltr;
    text-align: left;
    white-space: pre;
    word-spacing: normal;
    word-break: normal;
    line-height: 1.5;
    -moz-tab-size: 4;
    -o-tab-size: 4;
    tab-size: 4;
    -webkit-hyphens: none;
    -moz-hyphens: none;
    -ms-hyphens: none;
    hyphens: none;
  }
  pre[class*='language-']::selection,
  code[class*='language-']::selection,
  pre[class*='language-'] *::selection,
  code[class*='language-'] *::selection {
    text-shadow: none;
    background: #75a7ca;
  }
  @media print {
    pre[class*='language-'],
    code[class*='language-'] {
      text-shadow: none;
    }
  }
  pre[class*='language-'] {
    padding: 1em;
    margin: 0.5em 0;
    overflow: auto;
    background: #1e1e1e;
    border-radius: 0.25rem;
  }
  :not(pre) > code[class*='language-'] {
    padding: 0.1em 0.3em;
    border-radius: 0.3em;
    color: #db4c69;
    background: #f9f2f4;
  }
  /*********************************************************
* Tokens
*/
  .namespace {
    opacity: 0.7;
  }
  .token.doctype .token.doctype-tag {
    color: #569cd6;
  }
  .token.doctype .token.name {
    color: #9cdcfe;
  }
  .token.comment,
  .token.prolog {
    color: #6a9955;
  }
  .token.punctuation,
  .language-html .language-css .token.punctuation,
  .language-html .language-javascript .token.punctuation {
    color: #d4d4d4;
  }
  .token.property,
  .token.tag,
  .token.boolean,
  .token.number,
  .token.constant,
  .token.symbol,
  .token.inserted,
  .token.unit {
    color: #b5cea8;
  }
  .token.selector,
  .token.attr-name,
  .token.string,
  .token.char,
  .token.builtin,
  .token.deleted {
    color: #ce9178;
  }
  .language-css .token.string.url {
    text-decoration: underline;
  }
  .token.operator,
  .token.entity {
    color: #d4d4d4;
  }
  .token.operator.arrow {
    color: #569cd6;
  }
  .token.atrule {
    color: #ce9178;
  }
  .token.atrule .token.rule {
    color: #c586c0;
  }
  .token.atrule .token.url {
    color: #9cdcfe;
  }
  .token.atrule .token.url .token.function {
    color: #dcdcaa;
  }
  .token.atrule .token.url .token.punctuation {
    color: #d4d4d4;
  }
  .token.keyword {
    color: #569cd6;
  }
  .token.keyword.module,
  .token.keyword.control-flow {
    color: #c586c0;
  }
  .token.function,
  .token.function .token.maybe-class-name {
    color: #dcdcaa;
  }
  .token.regex {
    color: #d16969;
  }
  .token.important {
    color: #569cd6;
  }
  .token.italic {
    font-style: italic;
  }
  .token.constant {
    color: #9cdcfe;
  }
  .token.class-name,
  .token.maybe-class-name {
    color: #4ec9b0;
  }
  .token.console {
    color: #9cdcfe;
  }
  .token.parameter {
    color: #9cdcfe;
  }
  .token.interpolation {
    color: #9cdcfe;
  }
  .token.punctuation.interpolation-punctuation {
    color: #569cd6;
  }
  .token.boolean {
    color: #569cd6;
  }
  .token.property,
  .token.variable,
  .token.imports .token.maybe-class-name,
  .token.exports .token.maybe-class-name {
    color: #9cdcfe;
  }
  .token.selector {
    color: #d7ba7d;
  }
  .token.escape {
    color: #d7ba7d;
  }
  .token.tag {
    color: #569cd6;
  }
  .token.tag .token.punctuation {
    color: #808080;
  }
  .token.cdata {
    color: #808080;
  }
  .token.attr-name {
    color: #9cdcfe;
  }
  .token.attr-value,
  .token.attr-value .token.punctuation {
    color: #ce9178;
  }
  .token.attr-value .token.punctuation.attr-equals {
    color: #d4d4d4;
  }
  .token.entity {
    color: #569cd6;
  }
  .token.namespace {
    color: #4ec9b0;
  }
  /*********************************************************
* Language Specific
*/
  pre[class*='language-javascript'],
  code[class*='language-javascript'],
  pre[class*='language-jsx'],
  code[class*='language-jsx'],
  pre[class*='language-typescript'],
  code[class*='language-typescript'],
  pre[class*='language-tsx'],
  code[class*='language-tsx'] {
    color: #9cdcfe;
  }
  pre[class*='language-css'],
  code[class*='language-css'] {
    color: #ce9178;
  }
  pre[class*='language-html'],
  code[class*='language-html'] {
    color: #d4d4d4;
  }
  .language-regex .token.anchor {
    color: #dcdcaa;
  }
  .language-html .token.punctuation {
    color: #808080;
  }
  /*********************************************************
* Line highlighting
*/
  pre[data-line] {
    position: relative;
  }
  pre[class*='language-'] > code[class*='language-'] {
    position: relative;
    z-index: 1;
  }
  .line-highlight {
    position: absolute;
    left: 0;
    right: 0;
    padding: inherit 0;
    margin-top: 1em;
    background: #f7ebc6;
    box-shadow: inset 5px 0 0 #f7d87c;
    z-index: 0;
    pointer-events: none;
    line-height: inherit;
    white-space: pre;
  }
`;

export const Content = styled.main`
  ${({ theme }) => css`
    max-width: 768px;
    margin: 0 auto;
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

export const Footer = styled.footer``;

export const AccessibleTo = styled.section`
  ${({ theme }) => css`
    border: 1px solid ${theme.colors.border};
    background-color: ${theme.colors.cardBg};
    border-radius: 0.25rem;
    display: inline-block;
    width: 100%;

    ${customMedia.between('initial', 'medium')`
      padding: ${theme.spacings.small}rem;
      margin-bottom: ${theme.spacings.medium}rem;
    `}

    ${customMedia.between('medium', 'large')`
      padding: ${theme.spacings.medium}rem;
      margin-bottom: ${theme.spacings.large}rem;
    `}

    ${customMedia.greaterThan('large')`
      padding: ${theme.spacings.large}rem;
      margin-bottom: ${theme.spacings.xlarge}rem;
    `}
  `}
`;

export const Item = styled.div`
  ${({ theme }) => css`
    margin: ${theme.spacings.xsmall}rem 0;
    display: flex;
    gap: 1rem;
    align-items: center;
  `}
`;

export const ItemImage = styled.img`
  max-width: 70px;
  border-radius: 50%;
`;

export const ItemContent = styled.div`
  display: flex;
  flex-direction: column;
`;

export const ItemText = styled.p`
  ${({ theme }) => css`
    color: ${theme.colors.subtitle};

    ${customMedia.between('initial', 'medium')`
        font-size: ${theme.font.sizes.overline}rem;
    `}

    ${customMedia.between('medium', 'large')`
      font-size: ${theme.font.sizes.caption}rem;
    `}

    ${customMedia.greaterThan('large')`
      font-size: ${theme.font.sizes.body2}rem;
    `}
  `}
`;

export const Library = styled.section`
  ${({ theme }) => css`
    ${customMedia.between('initial', 'large')`
      margin-bottom: ${theme.spacings.xlarge}rem;
    `}

    ${customMedia.greaterThan('large')`
      margin-bottom: ${theme.spacings.xxlarge}rem;
    `}
  `}
`;
