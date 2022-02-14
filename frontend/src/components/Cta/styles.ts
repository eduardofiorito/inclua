import styled, { css, DefaultTheme } from 'styled-components';
import { customMedia } from 'utils/generateMediaBreakpoint';
import { CtaProps } from '.';

type SWrapperVariant = Pick<CtaProps, 'color'>;

const modifiers = {
  lightColor: (theme: DefaultTheme) => css`
    background: ${theme.colors.primary200};
    color: ${theme.colors.title};
  `,

  dark: (theme: DefaultTheme) => css`
    background: ${theme.colors.primary600};
    color: ${theme.colors.main};
  `,
};

export const Wrapper = styled.section<SWrapperVariant>`
  ${({ theme, color }) => css`
    ${!!color && modifiers[color](theme)}
  `}

  border-radius: 10px;
  display: flex;
  justify-content: space-around;
  position: relative;

  ${customMedia.between('initial', 'large')`
      padding: 2rem 1rem;
      gap: 2rem; 
      flex-direction: column;
      align-items: center;
      text-align: center;
  `};

  ${customMedia.between('medium', 'large')`
      padding: 3rem 4rem;
      gap: 2.5rem; 
  `};

  ${customMedia.greaterThan('large')`
      padding: 4rem 5rem;
      gap: 3rem;  
  `};

  img {
    max-width: 100%;
    height: auto;
  }
`;

export const Content = styled.div`
  ${customMedia.greaterThan('large')`
    width: 60%;
  `};
`;

export const WrapperImage = styled.picture`
  display: flex;
  align-items: center;

  .default {
    ${customMedia.between('initial', 'large')`
      position
    `};

    ${customMedia.greaterThan('large')`
      position: absolute;
      right: 4rem;
      bottom: .75rem;
    `};
  }
`;
