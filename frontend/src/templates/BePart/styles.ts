import styled, { css } from 'styled-components';
import { customMedia } from 'utils/generateMediaBreakpoint';

export const Wrapper = styled.main`
  position: relative;

  ${customMedia.between('initial', 'large')`
      h1, h2 {
        text-align: center;
      }
  `}

  ${customMedia.greaterThan('large')`
      h1, h2 {
        text-align: left;
      }
  `}
`;

export const Hero = styled.section`
  ${({ theme }) => css`
    ${customMedia.between('initial', 'medium')`
      padding: ${theme.spacings.large}rem 0;
    `}

    ${customMedia.between('medium', 'large')`
      padding: ${theme.spacings.xlarge}rem 0;
    `}

    ${customMedia.greaterThan('large')`
      padding: 8rem 0;
    `}
  `}
`;

export const Content = styled.div`
  ${customMedia.greaterThan('large')`
    max-width: 530px;    
  `}
`;

export const Description = styled.p`
  ${({ theme }) => css`
    color: ${theme.colors.subtitle};

    ${customMedia.between('initial', 'medium')`
      margin-top: ${theme.spacings.xsmall}rem;
      font-size: ${theme.font.sizes.body1}rem;
      line-height: 1.5rem;
      text-align: center;
    `}

    ${customMedia.between('medium', 'large')`
      margin-top: ${theme.spacings.xsmall}rem;
      font-size: ${theme.font.sizes.h6}rem;
      line-height: 1.5rem;
      text-align: center;
    `}

    ${customMedia.greaterThan('large')`
      ${({ theme }) => css`
        margin-top: ${theme.spacings.small}rem;
        font-size: ${theme.font.sizes.h5}rem;
        line-height: 2rem;
        text-align: left;
      `}
    `}
  `}
`;

export const HeroImg = styled.img`
  width: 100%;
  height: auto;
  max-width: 260px;

  ${customMedia.between('initial', 'large')`
      position: relative;
      display: block;
      margin: 0 auto;
      margin-top: 2rem;
  `}

  ${customMedia.greaterThan('large')`
      position: absolute;
      right: 180px;
      top: 160px;
      margin: 0;
  `}
`;

export const Section = styled.section`
  ${({ theme }) => css`
    ${customMedia.between('initial', 'medium')`
      padding: ${theme.spacings.large}rem 0;
    `}

    ${customMedia.between('medium', 'large')`
      padding: ${theme.spacings.xlarge}rem 0;
    `}

    ${customMedia.greaterThan('large')`
      padding: ${theme.spacings.xxxlarge}rem 0;
    `}
  `}
`;

export const ImagesWrapper = styled.section`
  ${({ theme }) => css`
    display: flex;
    justify-content: center;
    flex-direction: row-reverse;
    flex-wrap: wrap;

    img {
      width: 100%;
      height: auto;
      max-height: 70px;
      max-width: 360px;
    }

    ${customMedia.between('initial', 'medium')`
      margin-top: ${theme.spacings.medium}rem;
    `}

    ${customMedia.between('medium', 'large')`
      margin-top: ${theme.spacings.large}rem;
    `}

    ${customMedia.greaterThan('large')`
      margin-top: ${theme.spacings.xlarge}rem;
    `}
  `}
`;

export const Checklist = styled(Section)`
  position: relative;

  .container {
    display: flex;

    justify-content: space-between;

    ${customMedia.between('initial', 'large')`
      flex-direction: column;
      gap: 1rem;
  `}

    ${customMedia.greaterThan('large')`
      gap: 2rem;
      flex-direction: row;
      align-items: center;
  `}
  }
`;

export const ChecklistShape = styled.div`
  ${customMedia.between('initial', 'large')`
      display: none;
  `}
  ${customMedia.greaterThan('large')`
      ${({ theme }) => css`
        color: ${theme.colors.shapes};
        position: absolute;
        top: -80%;
        left: 0;
        width: 48%;
        z-index: -1;
      `}
  `}
`;

export const Networking = styled.section`
  display: flex;
  flex-direction: column;
  align-items: center;

  h2 {
    text-align: center;
    max-width: 800px;
  }

  p {
    text-align: center;
    max-width: 800px;
  }
`;

export const ImageWrapper = styled.figure`
  ${customMedia.between('initial', 'large')`
      margin: 0 auto;
  `}

  ${customMedia.greaterThan('large')`
      margin: 0;
  `}

  img {
    width: 100%;
    height: auto;
    max-width: 460px;
  }
`;

export const ImageWrapperTop = styled.figure`
  img {
    width: 100%;
    height: auto;
  }

  ${({ theme }) => css`
    ${customMedia.between('initial', 'medium')`
      display: none;
    `}

    ${customMedia.between('medium', 'large')`
      margin-bottom: ${theme.spacings.large}rem;
    `}

    ${customMedia.greaterThan('large')`
       margin-bottom: 0;
    `}
  `}
`;

export const ImageWrapperBottom = styled.figure`
  img {
    width: 100%;
    height: auto;
  }

  ${({ theme }) => css`
    ${customMedia.between('initial', 'medium')`
      display: none;
    `}

    ${customMedia.between('medium', 'large')`
      margin-bottom: ${theme.spacings.large}rem;
    `}

    ${customMedia.greaterThan('large')`
       margin-top: ${theme.spacings.large}rem;
    `}
  `}
`;

export const Cases = styled(Section)`
  position: relative;

  .container {
    display: flex;

    ${customMedia.between('initial', 'large')`
      flex-direction: column-reverse;
      gap: 1rem;
  `}

    ${customMedia.greaterThan('large')`
      align-items: center;
      justify-content: space-between;
      gap: 2rem;
  `}
  }
`;

export const CaseShape = styled.div`
  ${customMedia.between('initial', 'large')`
      display: none;
  `}

  ${customMedia.greaterThan('large')`
      ${({ theme }) => css`
        color: ${theme.colors.shapes};
        position: absolute;
        top: -130%;
        right: 0;
        width: 40%;
        z-index: -1;
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
