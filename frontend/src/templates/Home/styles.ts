import styled, { css, DefaultTheme } from 'styled-components';
import { customMedia } from 'utils/generateMediaBreakpoint';

import { Grid } from 'components/Grid';

type BadgeProps = {
  visible: boolean;
};

type LinkProps = {
  type: string;
};

export const modifiers = {
  all: (theme: DefaultTheme) => css`
    color: ${theme.colors.support.purple};
  `,
  design: (theme: DefaultTheme) => css`
    color: ${theme.colors.support.red};
  `,
  dev: (theme: DefaultTheme) => css`
    color: ${theme.colors.support.yellow};
  `,
};

export const Hero = styled.section`
  position: relative;

  .container {
    display: flex;
    align-items: center;
    flex-direction: column;
  }

  ${customMedia.between('initial', 'medium')`
      padding: 2rem 0;
  `}

  ${customMedia.between('medium', 'large')`
      padding: 3rem 0;
  `}

  ${customMedia.greaterThan('large')`
      padding: 4rem 0;
      .container {
        gap: 4%;
        flex-direction: row;
      }
  `}
`;

export const Content = styled.div`
  width: 100%;
  text-align: center;
  display: flex;
  flex-direction: column;
  align-items: center;

  ${customMedia.greaterThan('large')`
      width: 43%;
      text-align: left;
      align-items: baseline;
  `}

  h1 {
    letter-spacing: -0.5px;
  }

  button {
    max-width: 21rem;
    box-shadow: 0px 4px 4px rgba(4, 67, 122, 0.2);
  }
`;

export const WrapperImage = styled.div`
  display: flex;
  align-items: center;
  width: 100%;

  ${customMedia.greaterThan('large')`
      width: 50%;
  `}

  img {
    width: 100%;
    height: auto;
    max-width: 585px;
    margin: 2rem auto;

    ${customMedia.greaterThan('large')`
      margin: 0;
  `}
  }
`;

export const Subtitle = styled.p`
  ${({ theme }) => css`
    font-family: ${theme.font.familyTitle};
    color: ${theme.colors.subtitle};
    font-weight: ${theme.font.weight.semiBold};
    line-height: 2rem;
    margin-bottom: 1rem;
    width: 90%;

    ${customMedia.between('initial', 'large')`
      font-size: ${theme.font.sizes.body1}rem;
    `}

    ${customMedia.between('large', 'xxLarge')`
      font-size: ${theme.font.sizes.h6}rem;
    `}

    ${customMedia.greaterThan('xxLarge')`
        font-size: ${theme.font.sizes.h5}rem;
    `}
  `}
`;

export const HeroShape = styled.div`
  position: absolute;
  z-index: -1;
  overflow: hidden;
  top: 0;
  left: 0;
  right: 0;

  ${({ theme }) => css`
    color: ${theme.colors.shapes};
  `}

  ${customMedia.between('initial', 'large')`
      display: none;
  `}
  ${customMedia.between('initial', 'xLarge')`
      top: -10px;
      left: -5px;
  `}  

  ${customMedia.between('xLarge', 'xxLarge')`
      top: -30px;
      left: -10px;
  `}

  ${customMedia.between('xxLarge', 'max')`
      top: -140px;
      left: -35px;
  `}

  ${customMedia.greaterThan('max')`
      display: none;
  `}
`;

export const Guides = styled.section`
  position: relative;

  ${Grid} {
    margin: 0;
  }

  h2 {
    text-align: center;
  }

  ${customMedia.between('initial', 'medium')`
      padding: 3rem 0;
  `}

  ${customMedia.between('medium', 'large')`
      padding: 5rem 0;
  `}

  ${customMedia.greaterThan('large')`
      padding: 6rem 0;

      h2 {
        text-align: left;
      }
  `}
`;

export const GuidesWrapper = styled(Grid)`
  ${customMedia.between('initial', 'medium')`
      padding-top: 2rem;
  `}

  ${customMedia.between('medium', 'large')`
      padding-top: 2.5rem;
      gap: 1.5rem 1.5rem;    
  `}

  ${customMedia.greaterThan('large')`
      padding-top: 3rem;
      flex-wrap: nowrap;
      gap: 1.875rem 1.875rem;
  `}
`;

export const CardLink = styled.a`
  cursor: pointer;
  text-decoration: none;
  display: inline-flex;
`;

export const Guide = styled.article`
  ${({ theme }) => css`
    border: 1px solid ${theme.colors.border};
    background: ${theme.colors.cardBg};
    position: relative;
    border-radius: 10px;
    display: flex;
    flex-direction: column;
    padding: 1rem 1rem 2rem 1rem;
    box-shadow: ${theme.colors.cardShadow};
    transition: transform ease-in 0.2s;
    min-height: 27rem;

    &:hover {
      background: ${theme.colors.shapes};
      transform: scale(1.005);
    }
  `}

  img {
    width: 100%;
    height: auto;
    object-fit: cover;
  }

  h4 {
    max-height: 6rem;
    overflow: hidden;
    text-overflow: ellipsis;
  }
`;

export const BadgeWrapper = styled.div<BadgeProps>`
  ${({ visible }) => css`
    visibility: ${visible ? 'visible' : 'hidden'};
  `}
`;

export const Badge = styled.span`
  ${({ theme }) => css`
    background: ${theme.colors.badge};
    color: ${theme.colors.main};
    font-size: ${theme.font.sizes.caption}rem;
    font-weight: bold;
    padding: 0.25rem 0.5rem;
    border-radius: 0.25rem;
    line-height: 1rem;
    letter-spacing: 0.4px;
  `}
`;

export const Link = styled.span<LinkProps>`
  ${({ theme, type }) => css`
    color: ${theme.colors.link};
    display: flex;
    align-items: center;
    position: absolute;
    bottom: 1rem;
    align-self: flex-start;
    font-weight: ${theme.font.weight.semiBold};

    svg {
      ${!!type && modifiers[type](theme)}
    }

    ${customMedia.between('initial', 'medium')`
      font-size: ${theme.font.sizes.caption}rem;
    `}

    ${customMedia.greaterThan('medium')`
      font-size: ${theme.font.sizes.body2}rem;
    `}
  `}
`;

export const GuideShape = styled.div`
  ${customMedia.between('initial', 'large')`
      display: none;
  `}
  ${customMedia.greaterThan('large')`
      ${({ theme }) => css`
        color: ${theme.colors.shapes};
        position: absolute;
        top: -25%;
        left: 0;
        width: 40%;
        z-index: -1;
      `}
  `}
`;

export const Cases = styled(Guides)``;

export const ButtonWrapper = styled.div`
  display: flex;
  justify-content: center;
`;

export const CasesWrapper = styled(GuidesWrapper)`
  ${customMedia.between('initial', 'medium')`
      padding-bottom: 2rem;
  `}

  ${customMedia.between('medium', 'large')`
      padding-bottom: 2.5rem;  
  `}

  ${customMedia.greaterThan('large')`
      padding-bottom: 3rem;
  `}
`;

export const CaseShape = styled.div`
  ${customMedia.between('initial', 'large')`
      display: none;
  `}

  ${customMedia.greaterThan('large')`
      ${({ theme }) => css`
        color: ${theme.colors.shapes};
        position: absolute;
        top: 50%;
        right: 0;
        width: 40%;
        z-index: -1;
      `}
  `}
`;

export const Library = styled(Cases)``;

export const LibraryWrapper = styled(CasesWrapper)`
  flex-wrap: wrap;
`;

export const Cta = styled.section`
  display: flex;
  justify-content: center;
  align-items: center;
  ${customMedia.between('initial', 'medium')`
      padding: 3rem 0;
  `}

  ${customMedia.between('medium', 'large')`
      padding: 5rem 0;
  `}

  ${customMedia.greaterThan('large')`
      padding: 6rem 0;
  `}
`;
