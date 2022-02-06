import styled, { css } from 'styled-components';
import { customMedia } from 'utils/generateMediaBreakpoint';
import { HeadingProps } from '.';

export const Heading = styled('h1').attrs<HeadingProps>(({ level }) => ({
  as: `h${level}`,
}))<HeadingProps>`
  ${({
    size,
    weight,
    lineHeight,
    marginTop,
    marginRight,
    marginBottom,
    marginLeft,
    theme,
  }) => css`
    font-family: ${theme.font.familyTitle};
    color: ${theme.colors.title};
    font-size: ${theme.font.sizes[size]}rem;
    font-weight: ${theme.font.weight[weight]};
    line-height: ${lineHeight + 'em'};
    margin: ${theme.spacings[marginTop] + 'rem'}
      ${theme.spacings[marginRight] + 'rem'}
      ${theme.spacings[marginBottom] + 'rem'}
      ${theme.spacings[marginLeft] + 'rem'};
    ${customMedia.lessThan('xxLarge')`
        font-size: ${theme.font.sizes[size] * 0.95}rem;
    `};

    ${customMedia.lessThan('xLarge')`
        font-size: ${theme.font.sizes[size] * 0.9}rem;
    `};

    ${customMedia.lessThan('large')`
        font-size: ${theme.font.sizes[size] * 0.85}rem;
    `};

    ${customMedia.lessThan('medium')`
        font-size: ${theme.font.sizes[size] * 0.825}rem;
    `};

    ${customMedia.lessThan('small')`
        font-size: ${theme.font.sizes[size] * 0.8125}rem;
    `};
  `}
`;
('');
