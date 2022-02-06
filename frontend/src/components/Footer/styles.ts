import styled, { css } from 'styled-components';
import { customMedia } from 'utils/generateMediaBreakpoint';

export const Footer = styled.footer`
  position: relative;

  ${customMedia.between('initial', 'small')`
      padding: 4rem 0;
      margin-top: 4rem;
  `}

  ${customMedia.between('small', 'large')`
      padding: 5rem;
      margin-top: 5rem;
  `}

  ${customMedia.greaterThan('large')`
      padding: 6rem;
      margin-top: 5rem;
  `}
`;

export const Content = styled.div`
  display: flex;
  justify-content: space-between;
  flex-wrap: wrap;
  gap: 2rem 1rem;

  &:nth-child(2) {
    margin: 6rem 0 0 0;
  }
`;

export const Column = styled.div`
  display: flex;
  flex-direction: Column;
  gap: 0.3rem 0;

  ${customMedia.between('initial', 'small')`
      width: 100%;
  `}

  ${customMedia.between('small', 'large')`
      width: 48%;
  `}

  ${customMedia.greaterThan('large')`
      width: 23%;
  `}
`;

export const Link = styled.a`
  ${({ theme }) => css`
    text-decoration: none;
    color: ${theme.colors.footer};
    font-size: ${theme.font.sizes.body1}rem;
    line-height: 1.5rem;

    &:hover {
      text-decoration: underline;
    }
  `}
`;

export const Utilities = styled.div`
  display: flex;
  flex-wrap: wrap;
  justify-content: space-between;
  align-items: center;

  ${customMedia.between('initial', 'medium')`
      margin-top: 4rem;
      flex-direction: column;
      gap: 2rem 1rem;
      align-items: baseline;
      flex-direction: column;
  `}

  ${customMedia.between('medium', 'large')`
      margin-top: 5rem;
  `}

  ${customMedia.greaterThan('large')`
      margin-top: 6rem;
  `}
`;

export const Languages = styled.div`
  display: flex;
  align-items: center;
  gap: 1rem 1rem;
  order: 1;

  ${({ theme }) => css`
    p {
      color: ${theme.colors.footer};
      font-size: ${theme.font.sizes.body1}rem;
      line-height: 1.5rem;
    }
  `}
`;

export const Portuguese = styled.button`
  cursor: pointer;
  background: transparent;
  transition: 0.3s;
  &:hover {
    transform: scale(0.97);
  }
`;

export const English = styled.button`
  cursor: pointer;
  background: transparent;
  transition: 0.3s;
  &:hover {
    transform: scale(0.97);
  }
`;

export const Copyright = styled.div`
  display: flex;
  ${({ theme }) => css`
    color: ${theme.colors.primary400};
  `}

  ${customMedia.between('initial', 'medium')`
      order: -1;
  `}

  ${customMedia.greaterThan('medium')`
      order: 2;
  `}

  span {
    margin-left: 0.1rem;
  }
`;

export const Socials = styled.div`
  display: flex;
  gap: 1rem 1rem;
  order: 3;
`;

export const WrapperIcon = styled.a`
  ${({ theme }) => css`
    cursor: pointer;
    display: inline-flex;
    width: 36px;
    background: ${theme.colors.primary400};
    color: ${theme.colors.bg};
    padding: 0.5rem;
    border-radius: 50%;
    transition: 0.3s;

    &:hover {
      background: ${theme.colors.title};
      transform: scale(0.97);
    }
  `}
`;

export const Shape = styled.div`
  position: absolute;
  width: 100%;
  z-index: -1;
  overflow: hidden;
  bottom: 0;
  left: 0;
  right: 0;

  ${({ theme }) => css`
    color: ${theme.colors.shapes};
  `}

  ${customMedia.between('initial', 'medium')`
      display: none;
  `}

  ${customMedia.between('medium', 'xLarge')`
      top: -580px;
      right: -200px;
  `}

  ${customMedia.between('xLarge', 'xxLarge')`
      top: -700px;
  `}

  ${customMedia.between('xxLarge', 'max')`
      top: -750px;
  `}

  ${customMedia.greaterThan('max')`
      display: none;
  `}
`;
