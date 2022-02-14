import styled, { css } from 'styled-components';
import { customMedia } from 'utils/generateMediaBreakpoint';

export const Menu = styled.menu`
  ${({ theme }) => css`
    background: ${theme.colors.bg};
    padding: 1rem 0;
    box-shadow: 0px 6px 8px rgba(6, 38, 107, 0.08),
      0px 1px 18px rgba(6, 38, 107, 0.04), 0px 3px 5px rgba(6, 38, 107, 0.01);
  `}

  .container {
    display: flex;
    justify-content: space-between;
    align-items: center;
  }
`;

export const Nav = styled.nav`
  ${customMedia.between('initial', 'large')`
      display: none;
  `}

  ${customMedia.greaterThan('large')`
      display: flex;
  `}
`;

export const List = styled.ul`
  display: flex;
  align-items: center;
  gap: 2rem;
`;
export const ListItem = styled.li``;

export const Link = styled.a`
  ${({ theme }) => css`
    color: ${theme.colors.primary400};
    font-size: ${theme.font.sizes.body1}rem;
    text-decoration: none;
    letter-spacing: 0.15px;
    font-weight: ${theme.font.weight.medium};

    &:active {
      color: ${theme.colors.title};
    }

    &:hover {
      color: ${theme.colors.title};
    }

    &:focus {
      color: ${theme.colors.title};
    }
  `}
`;

export const WrapperButton = styled.div`
  display: flex;
  gap: 1rem;

  ${customMedia.between('initial', 'large')`
      display: none;
  `}

  ${customMedia.greaterThan('large')`
      display: flex;
  `}
`;

type MenuProps = {
  isOpen: boolean;
};

export const Mobile = styled.div<MenuProps>`
  ${({ isOpen, theme }) => css`
    display: ${isOpen ? 'flex' : 'none'};
    flex-direction: column;
    background: ${theme.colors.bg};
    z-index: ${theme.layers.menu};
    position: absolute;
    top: 0;
    bottom: 0;
    left: 0;
    right: 0;
    height: 100vh;
    width: 100vw;
    overflow: scroll;
    overscroll-behavior: contain;
    scroll-behavior: smooth;
    padding-bottom: 4rem;
  `}
  >
`;

export const WrapperTop = styled.div`
  ${({ theme }) => css`
    display: flex;
    justify-content: space-between;
    color: ${theme.colors.title};
    padding: 1rem;
    svg {
      cursor: pointer;
      width: 2.4rem;
    }
  `}
`;

export const IconWrapper = styled.button`
  background: transparent;
  width: 2rem;
  cursor: pointer;

  ${({ theme }) => css`
    color: ${theme.colors.primary600};

    ${customMedia.greaterThan('large')`
      display: none;
  `}
  `}
`;

export const NavMobile = styled.nav``;

export const ListMobile = styled.ul`
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  margin: 1rem 0 4rem 0;
`;

export const ListItemMobile = styled.li`
  ${({ theme }) => css`
    line-height: 3;
    font-weight: ${theme.font.weight.medium};

    ${customMedia.between('initial', 'large')`
        border-bottom: 1px solid ${theme.colors.border};
        width: 100%;
    `};
  `}
`;

export const LinkMobile = styled.a`
  ${({ theme }) => css`
    position: relative;
    font-size: ${theme.font.sizes.h4}rem;
    color: ${theme.colors.primary400};
    margin: 0.3rem ${theme.spacings.small}rem 0;
    text-decoration: none;
    text-align: center;

    &:hover {
      color: ${theme.colors.title};
    }

    &:focus {
      color: ${theme.colors.title};
    }
  `}
`;

export const WrapperButtonMobile = styled.div`
  gap: 2rem;
  padding: 0 1rem;

  .signIn {
    margin-bottom: 1.5rem;
  }

  ${customMedia.greaterThan('large')`
      .signIn {
        margin-bottom: 0;
      }
  `}
`;
