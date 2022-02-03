import styled, { css } from 'styled-components';
import theme from 'styles/theme';
import { customMedia } from 'utils/generateMediaBreakpoint';
import { HeadingProps } from '.';

export const Heading = styled('h1').attrs<HeadingProps>(({ level }) => ({
  as: `h${level}`,
}))<HeadingProps>`
  ${({ fontColor, size, weight, lineHeight, marginX, marginY }) => css`
    font-family: ${theme.font.familyTitle};
    color: ${theme.colors[fontColor]};
    font-size: ${theme.font.sizes[size]}rem;
    font-weight: ${theme.font.weight[weight]};
    line-height: ${lineHeight + 'em'};
    margin: ${theme.spacings[marginY] + 'rem'}
      ${theme.spacings[marginX] + 'rem'};
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
