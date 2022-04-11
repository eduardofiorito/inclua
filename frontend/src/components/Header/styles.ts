import styled, { css } from 'styled-components';
import { customMedia } from 'utils/generateMediaBreakpoint';

export const Wrapper = styled.header`
  ${({ theme }) => css`
    padding: 0.5rem 0;
    background: ${theme.colors.bg};
    border-bottom: 1px solid ${theme.colors.border};

    ${customMedia.between('initial', 'medium')`
      position: absolute;
      top: -200px;
    `}

    ${customMedia.greaterThan('medium')`
      display: block;
    `}

    div {
      display: flex;
      align-items: center;
      justify-content: space-between;
    }
  `}

  button {
    ${({ theme }) => css`
      border-radius: 50%;
      width: 24px;
      height: 24px;
      cursor: pointer;
      color: ${theme.colors.title};
      background: transparent;
      display: flex;
      align-items: center;
      justify-content: center;
      transition: background ease-in 0.15s;
      justify-content: flex-end;

      &:hover {
        color: ${theme.colors.bg};
        border: 1px solid ${theme.colors.title};
        background: ${theme.colors.title};
      }
      &:focus {
        ${({ theme }) => css`
          outline: 2px solid ${theme.colors.strong};
          border-radius: 50%;
        `}
      }
    `}
  }
`;

export const A11yMenu = styled.ul`
  ${customMedia.between('initial', 'medium')`
      display: none;
  `}

  ${customMedia.greaterThan('medium')`
      display: flex;
      gap: 1rem;
  `}
`;

export const A11yItem = styled.li``;

export const A11yLink = styled.a`
  ${({ theme }) => css`
    text-decoration: none;
    color: ${theme.colors.title};
    font-size: ${theme.font.sizes.caption}rem;
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

export const RightMenu = styled.div`
  display: flex;

  ${customMedia.between('initial', 'medium')`
      position: absolute;
      top: 228px;
      right: 0;
      left: 38vw;
      gap: 1rem;
    `}

  ${customMedia.greaterThan('medium')`
      display: block;
      gap: 0.5rem;
    `}
`;
