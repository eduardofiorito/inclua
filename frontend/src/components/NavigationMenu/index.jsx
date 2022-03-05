/* eslint-disable  */

import styled, { css, keyframes } from 'styled-components';
import React from 'react';
import * as NavigationMenuPrimitive from '@radix-ui/react-navigation-menu';
import { ChevronDownIcon } from '@radix-ui/react-icons';
import { customMedia } from 'utils/generateMediaBreakpoint';

const enterFromRight = keyframes`
  from { transform: translateX(200px); opacity: 0;}
  to { transform: translateX(0); opacity: 1;}
`;

const enterFromLeft = keyframes`
  from { transform: translateX(-200px); opacity: 0;}
  to { transform: translateX(0); opacity: 1; }
`;

const exitToRight = keyframes`
  from { transform: translateX(0); opacity: 1;}
  to { transform: translateX(200px); opacity: 0;}
`;

const exitToLeft = keyframes`
  from { transform: translateX(0); opacity: 1; }
  to { transform: translateX(-200px); opacity: 0; }
`;

const scaleIn = keyframes`
  from { transform: rotateX(-30deg) scale(0.9); opacity: 0 ;}
  to { transform: rotateX(0deg) scale(1); opacity: 1;}
`;

const scaleOut = keyframes`
  from { transform: rotateX(0deg) scale(1); opacity: 1; }
  to { transform: rotateX(-10deg) scale(0.95); opacity: 0; }
`;

const fadeIn = keyframes`
  from { opacity: 0 }
  to { opacity: 1 }
`;

const fadeOut = keyframes`
  from { opacity: 1 }
  to { opacity: 0 }
`;

const StyledMenu = styled(NavigationMenuPrimitive.Root)`
  position: relative;
  display: flex;
  justify-content: center;
  z-index: 1;

  ${customMedia.between('initial', 'large')`
      display: none;
  `}

  ${customMedia.greaterThan('large')`
      display: block;
  `}
`;

const StyledList = styled(NavigationMenuPrimitive.List)`
  ${({ theme }) => css`
    all: unset;
    display: flex;
    align-items: center;
    justify-content: center;
    padding: ${theme.spacings.xsmall}rem;
    border-radius: 6px;
    list-style: none;
  `}
`;

const StyledTrigger = styled(NavigationMenuPrimitive.Trigger)`
  ${({ theme }) => css`
    all: unset;

    /* itemStyles */
    padding: ${theme.spacings.xsmall}rem ${theme.spacings.small}rem;
    outline: none;
    user-select: none;
    font-weight: ${theme.font.weight.medium};
    border-radius: 4px;
    line-height: 1em;
    font-size: ${theme.font.sizes.body1}rem;
    color: ${theme.colors.primary400};

    &:focus {
      position: relative;
      box-shadow: 0 0 0 2px ${theme.colors.focus};
    }

    &:hover {
      background-color: ${theme.colors.cardBg};
    }

    display: flex;
    align-items: center;
    justify-content: space-between;
    gap: 2px;
  `}
`;

const StyledCaret = styled(ChevronDownIcon)`
  ${({ theme }) => css`
    position: relative;
    color: ${theme.colors.primary400};
    height: 1.125em;
    width: 1.125em;
    top: 1;
  `}

  [data-state=open] & {
    transform: rotate(-180deg);
  }

  @media (prefers-reduced-motion: no-preference) {
    transition: transform 250ms ease;
  }
`;

const StyledTriggerWithCaret = React.forwardRef(
  ({ children, ...props }, forwardedRef) => (
    <StyledTrigger {...props} ref={forwardedRef}>
      {children}
      <StyledCaret aria-hidden />
    </StyledTrigger>
  ),
);

const StyledLink = styled(NavigationMenuPrimitive.Link)`
  ${({ theme }) => css`
    /* itemStyles */
    padding: ${theme.spacings.xsmall}rem ${theme.spacings.large}rem
      ${theme.spacings.xsmall}rem ${theme.spacings.small}rem;
    outline: none;
    user-select: none;
    font-weight: ${theme.font.weight.medium};
    border-radius: 4px;
    line-height: 1em;
    font-size: ${theme.font.sizes.body1}rem;
    color: ${theme.colors.primary400};
    display: block;
    text-decoration: none;
    line-height: 1em;

    svg {
      display: none;
    }

    &:focus {
      position: relative;
      box-shadow: 0 0 0 2px ${theme.colors.focus};
    }

    &:hover {
      background-color: ${theme.colors.button.text.hover};
      position: relative;

      svg {
        display: block;
        position: absolute;
        right: 0.5rem;
        bottom: calc(50% - 9px);
      }
    }
  `}
`;

const StyledContent = styled(NavigationMenuPrimitive.Content)`
  ${({ theme }) => css`
    padding: ${theme.spacings.medium}rem;
    position: absolute;
    top: 0;
    left: 0;
  `}

  @media only screen and (min-width: 600px) {
    width: auto;
  }

  @media (prefers-reduced-motion: no-preference) {
    animation-duration: 400ms;
    animation-timing-function: ease;
    &[data-motion='from-start'] {
      animation-name: ${enterFromLeft};
    }

    &[data-motion='from-end'] {
      animation-name: ${enterFromRight};
    }

    &[data-motion='to-start'] {
      animation-name: ${exitToLeft};
    }

    &[data-motion='to-end'] {
      animation-name: ${exitToRight};
    }
  }
`;

const StyledIndicator = styled(NavigationMenuPrimitive.Indicator)`
  display: flex;
  align-items: flex-end;
  justify-content: center;
  height: 0.6rem;
  top: 65px;
  overflow: hidden;
  z-index: 1;

  @media (prefers-reduced-motion: no-preference) {
    transition: width, transform 250ms ease;

    &[data-state='visible'] {
      animation: ${fadeIn} 200ms ease;
    }
    &[data-state='hidden'] {
      animation: ${fadeOut} 200ms ease;
    }
  }
`;

const StyledArrow = styled.div`
  ${({ theme }) => css`
    position: relative;
    top: 70%;
    background-color: ${theme.colors.cardBg};
    width: 10px;
    height: 10px;
    transform: rotate(45deg);
    border-top-left-radius: 2px;
  `}
`;

const StyledIndicatorWithArrow = React.forwardRef((props, forwardedRef) => (
  <StyledIndicator {...props} ref={forwardedRef}>
    <StyledArrow />
  </StyledIndicator>
));

const StyledViewport = styled(NavigationMenuPrimitive.Viewport)`
  ${({ theme }) => css`
    position: relative;
    transform-origin: top center;
    margin-top: 10px;
    width: 100%;
    background-color: ${theme.colors.cardBg};
    border-radius: 6px;
    overflow: hidden;
    box-shadow: ${theme.colors.cardShadow};
    height: var(--radix-navigation-menu-viewport-height);
  `}

  @media only screen and (min-width: 600px) {
    width: var(--radix-navigation-menu-viewport-width);
  }

  @media (prefers-reduced-motion: no-preference) {
    transition: width, height, 300ms ease;

    &[data-state='open'] {
      animation: ${scaleIn} 200ms ease;
    }

    &[data-state='closed'] {
      animation: ${scaleOut} 200ms ease;
    }
  }
`;

const NavigationMenu = StyledMenu;
const NavigationMenuList = StyledList;
const NavigationMenuItem = NavigationMenuPrimitive.Item;
const NavigationMenuTrigger = StyledTriggerWithCaret;
const NavigationMenuLink = StyledLink;
const NavigationMenuContent = StyledContent;
const NavigationMenuViewport = StyledViewport;
const NavigationMenuIndicator = StyledIndicatorWithArrow;

const modifiers = {
  one: () => css`
    width: 960px;
  `,

  two: () => css`
    width: 700px;
  `,
};

const ContentList = styled.ul`
  ${({ layout }) => css`
    display: flex;
    margin: 0;
    gap: 0.5rem;
    list-style: none;

    ${!!layout && modifiers[layout]()}
  `}
`;

const ListItem = styled.li`
  margin-bottom: 0.5rem;
`;

const LinkTitle = styled.div`
  ${({ theme }) => css`
    color: ${theme.colors.text};
    line-height: 1.2em;
    margin-bottom: 5px;
    font-size: ${theme.font.sizes.body2}rem;
  `}
`;

const LinkText = styled.p`
  ${({ theme }) => css`
    all: unset;
    color: ${theme.colors.text};
    line-height: 1.4em;
    font-weight: initial;
    font-size: ${theme.font.sizes.caption}rem;
  `}
`;

const ContentListItem = React.forwardRef(
  ({ children, title, ...props }, forwardedRef) => (
    <ListItem>
      <NavigationMenuLink {...props} ref={forwardedRef}>
        <LinkTitle>{title}</LinkTitle>
        <LinkText>{children}</LinkText>
      </NavigationMenuLink>
    </ListItem>
  ),
);

const ViewportPosition = styled.div`
  position: absolute;
  display: flex;
  flex: 0 1 auto;
  justify-content: center;
  top: 65px;
  left: -185px;
  perspective: 2000px;
`;

const Guides = styled.div`
  width: 35%;
`;

const Cases = styled.div`
  width: 35%;
`;
const Library = styled.div`
  width: 30%;
`;
const Divider = styled.div`
  ${({ theme }) => css`
    border-right: 1px solid ${theme.colors.border};
  `}
`;

const colorModifier = {
  all: (theme) => css`
    color: ${theme.colors.link};
  `,

  dev: (theme) => css`
    color: ${theme.colors.support.yellow};
  `,

  design: (theme) => css`
    color: ${theme.colors.support.red};
  `,
};

export const SVGWrapper = styled.span`
  ${({ theme, type }) => css`
    ${!!type && colorModifier[type](theme)}
  `}
`;

const ContentListHeader = styled.p`
  ${({ theme }) => css`
    font-size: ${theme.font.sizes.body1}rem;
    color: ${theme.colors.title};
    font-weight: ${theme.font.weight.medium};
    padding: ${theme.spacings.xsmall}rem ${theme.spacings.large}rem
      ${theme.spacings.xsmall}rem ${theme.spacings.small}rem;
    margin-bottom: ${theme.spacings.xsmall}rem;
  `}
`;

const NavigationMenuComp = () => {
  return (
    <NavigationMenu>
      <NavigationMenuList>
        <NavigationMenuItem>
          <NavigationMenuTrigger>Aprender</NavigationMenuTrigger>
          <NavigationMenuContent>
            <ContentList layout="one">
              <Guides>
                <ContentListHeader>Guias de Acessibilidade</ContentListHeader>
                <ContentListItem
                  title="Para todos"
                  href="/guides?category=Para+todos&sort=created_at%3Adesc"
                >
                  O que todo profissional deve saber sobre acessibilidade e
                  design inclusivo.
                  <SVGWrapper type="all">
                    <svg
                      width="15"
                      height="15"
                      viewBox="0 0 18 18"
                      fill="none"
                      xmlns="http://www.w3.org/2000/svg"
                      style={{ marginLeft: '.5rem' }}
                    >
                      <path
                        d="M7.65316 1.20563L8.54503 0.290588C8.92266 -0.0968628 9.53331 -0.0968628 9.90693 0.290588L17.7168 8.29929C18.0944 8.68674 18.0944 9.31326 17.7168 9.69659L9.90693 17.7094C9.52929 18.0969 8.91865 18.0969 8.54503 17.7094L7.65316 16.7944C7.27151 16.4028 7.27954 15.7639 7.66923 15.3806L12.5102 10.6487H0.964178C0.429863 10.6487 0 10.2077 0 9.65949V8.34051C0 7.79231 0.429863 7.35127 0.964178 7.35127H12.5102L7.66923 2.61942C7.27553 2.23609 7.26749 1.59721 7.65316 1.20563Z"
                        fill="currentColor"
                      />
                    </svg>
                  </SVGWrapper>
                </ContentListItem>
                <ContentListItem
                  title="Para Designers"
                  href="/guides?category=Design&sort=created_at%3Adesc"
                >
                  Boas práticas de inclusão e acessibilidade em UX, conteúdos e
                  UI.
                  <SVGWrapper type="design">
                    <svg
                      width="15"
                      height="15"
                      viewBox="0 0 18 18"
                      fill="none"
                      xmlns="http://www.w3.org/2000/svg"
                      style={{ marginLeft: '.5rem' }}
                    >
                      <path
                        d="M7.65316 1.20563L8.54503 0.290588C8.92266 -0.0968628 9.53331 -0.0968628 9.90693 0.290588L17.7168 8.29929C18.0944 8.68674 18.0944 9.31326 17.7168 9.69659L9.90693 17.7094C9.52929 18.0969 8.91865 18.0969 8.54503 17.7094L7.65316 16.7944C7.27151 16.4028 7.27954 15.7639 7.66923 15.3806L12.5102 10.6487H0.964178C0.429863 10.6487 0 10.2077 0 9.65949V8.34051C0 7.79231 0.429863 7.35127 0.964178 7.35127H12.5102L7.66923 2.61942C7.27553 2.23609 7.26749 1.59721 7.65316 1.20563Z"
                        fill="currentColor"
                      />
                    </svg>
                  </SVGWrapper>
                </ContentListItem>
                <ContentListItem
                  title="Para devs"
                  href="/guides?category=Desenvolvimento&sort=created_at%3Adesc"
                >
                  Boas práticas de acessibilidade e inclusão em códigos html e
                  mobile.
                  <SVGWrapper type="dev">
                    <svg
                      width="15"
                      height="15"
                      viewBox="0 0 18 18"
                      fill="none"
                      xmlns="http://www.w3.org/2000/svg"
                      style={{ marginLeft: '.5rem' }}
                    >
                      <path
                        d="M7.65316 1.20563L8.54503 0.290588C8.92266 -0.0968628 9.53331 -0.0968628 9.90693 0.290588L17.7168 8.29929C18.0944 8.68674 18.0944 9.31326 17.7168 9.69659L9.90693 17.7094C9.52929 18.0969 8.91865 18.0969 8.54503 17.7094L7.65316 16.7944C7.27151 16.4028 7.27954 15.7639 7.66923 15.3806L12.5102 10.6487H0.964178C0.429863 10.6487 0 10.2077 0 9.65949V8.34051C0 7.79231 0.429863 7.35127 0.964178 7.35127H12.5102L7.66923 2.61942C7.27553 2.23609 7.26749 1.59721 7.65316 1.20563Z"
                        fill="currentColor"
                      />
                    </svg>
                  </SVGWrapper>
                </ContentListItem>
                <ContentListItem title="Ver todos os guias" href="/guides">
                  <SVGWrapper type="all">
                    <svg
                      width="15"
                      height="15"
                      viewBox="0 0 18 18"
                      fill="none"
                      xmlns="http://www.w3.org/2000/svg"
                      style={{ marginLeft: '.5rem' }}
                    >
                      <path
                        d="M7.65316 1.20563L8.54503 0.290588C8.92266 -0.0968628 9.53331 -0.0968628 9.90693 0.290588L17.7168 8.29929C18.0944 8.68674 18.0944 9.31326 17.7168 9.69659L9.90693 17.7094C9.52929 18.0969 8.91865 18.0969 8.54503 17.7094L7.65316 16.7944C7.27151 16.4028 7.27954 15.7639 7.66923 15.3806L12.5102 10.6487H0.964178C0.429863 10.6487 0 10.2077 0 9.65949V8.34051C0 7.79231 0.429863 7.35127 0.964178 7.35127H12.5102L7.66923 2.61942C7.27553 2.23609 7.26749 1.59721 7.65316 1.20563Z"
                        fill="currentColor"
                      />
                    </svg>
                  </SVGWrapper>
                </ContentListItem>
              </Guides>
              <Divider />
              <Cases>
                <ContentListHeader>Estudos de Caso</ContentListHeader>
                <ContentListItem
                  title="Para todos"
                  href="/cases?category=Para+todos&sort=created_at%3Adesc"
                >
                  Lorem ipsum dolor sit amet consectetur
                  <SVGWrapper type="all">
                    <svg
                      width="15"
                      height="15"
                      viewBox="0 0 18 18"
                      fill="none"
                      xmlns="http://www.w3.org/2000/svg"
                      style={{ marginLeft: '.5rem' }}
                    >
                      <path
                        d="M7.65316 1.20563L8.54503 0.290588C8.92266 -0.0968628 9.53331 -0.0968628 9.90693 0.290588L17.7168 8.29929C18.0944 8.68674 18.0944 9.31326 17.7168 9.69659L9.90693 17.7094C9.52929 18.0969 8.91865 18.0969 8.54503 17.7094L7.65316 16.7944C7.27151 16.4028 7.27954 15.7639 7.66923 15.3806L12.5102 10.6487H0.964178C0.429863 10.6487 0 10.2077 0 9.65949V8.34051C0 7.79231 0.429863 7.35127 0.964178 7.35127H12.5102L7.66923 2.61942C7.27553 2.23609 7.26749 1.59721 7.65316 1.20563Z"
                        fill="currentColor"
                      />
                    </svg>
                  </SVGWrapper>
                </ContentListItem>
                <ContentListItem
                  title="Para Designers"
                  href="/cases?category=Design&sort=created_at%3Adesc"
                >
                  Lorem ipsum dolor sit amet consectetur
                  <SVGWrapper type="design">
                    <svg
                      width="15"
                      height="15"
                      viewBox="0 0 18 18"
                      fill="none"
                      xmlns="http://www.w3.org/2000/svg"
                      style={{ marginLeft: '.5rem' }}
                    >
                      <path
                        d="M7.65316 1.20563L8.54503 0.290588C8.92266 -0.0968628 9.53331 -0.0968628 9.90693 0.290588L17.7168 8.29929C18.0944 8.68674 18.0944 9.31326 17.7168 9.69659L9.90693 17.7094C9.52929 18.0969 8.91865 18.0969 8.54503 17.7094L7.65316 16.7944C7.27151 16.4028 7.27954 15.7639 7.66923 15.3806L12.5102 10.6487H0.964178C0.429863 10.6487 0 10.2077 0 9.65949V8.34051C0 7.79231 0.429863 7.35127 0.964178 7.35127H12.5102L7.66923 2.61942C7.27553 2.23609 7.26749 1.59721 7.65316 1.20563Z"
                        fill="currentColor"
                      />
                    </svg>
                  </SVGWrapper>
                </ContentListItem>
                <ContentListItem
                  title="Para Devs"
                  href="/cases?category=Desenvolvimento&sort=created_at%3Adesc"
                >
                  Lorem ipsum dolor sit amet consectetur
                  <SVGWrapper type="dev">
                    <svg
                      width="15"
                      height="15"
                      viewBox="0 0 18 18"
                      fill="none"
                      xmlns="http://www.w3.org/2000/svg"
                      style={{ marginLeft: '.5rem' }}
                    >
                      <path
                        d="M7.65316 1.20563L8.54503 0.290588C8.92266 -0.0968628 9.53331 -0.0968628 9.90693 0.290588L17.7168 8.29929C18.0944 8.68674 18.0944 9.31326 17.7168 9.69659L9.90693 17.7094C9.52929 18.0969 8.91865 18.0969 8.54503 17.7094L7.65316 16.7944C7.27151 16.4028 7.27954 15.7639 7.66923 15.3806L12.5102 10.6487H0.964178C0.429863 10.6487 0 10.2077 0 9.65949V8.34051C0 7.79231 0.429863 7.35127 0.964178 7.35127H12.5102L7.66923 2.61942C7.27553 2.23609 7.26749 1.59721 7.65316 1.20563Z"
                        fill="currentColor"
                      />
                    </svg>
                  </SVGWrapper>
                </ContentListItem>
                <ContentListItem title="Ver todos os cases" href="/cases">
                  <SVGWrapper type="all">
                    <svg
                      width="15"
                      height="15"
                      viewBox="0 0 18 18"
                      fill="none"
                      xmlns="http://www.w3.org/2000/svg"
                      style={{ marginLeft: '.5rem' }}
                    >
                      <path
                        d="M7.65316 1.20563L8.54503 0.290588C8.92266 -0.0968628 9.53331 -0.0968628 9.90693 0.290588L17.7168 8.29929C18.0944 8.68674 18.0944 9.31326 17.7168 9.69659L9.90693 17.7094C9.52929 18.0969 8.91865 18.0969 8.54503 17.7094L7.65316 16.7944C7.27151 16.4028 7.27954 15.7639 7.66923 15.3806L12.5102 10.6487H0.964178C0.429863 10.6487 0 10.2077 0 9.65949V8.34051C0 7.79231 0.429863 7.35127 0.964178 7.35127H12.5102L7.66923 2.61942C7.27553 2.23609 7.26749 1.59721 7.65316 1.20563Z"
                        fill="currentColor"
                      />
                    </svg>
                  </SVGWrapper>
                </ContentListItem>
              </Cases>
              <Divider />
              <Library>
                <ContentListHeader>Biblioteca de Links</ContentListHeader>
                <ContentListItem
                  title="Artigos"
                  href="/library?content_type=Artigos"
                >
                  <SVGWrapper type="all">
                    <svg
                      width="15"
                      height="15"
                      viewBox="0 0 18 18"
                      fill="none"
                      xmlns="http://www.w3.org/2000/svg"
                      style={{ marginLeft: '.5rem' }}
                    >
                      <path
                        d="M7.65316 1.20563L8.54503 0.290588C8.92266 -0.0968628 9.53331 -0.0968628 9.90693 0.290588L17.7168 8.29929C18.0944 8.68674 18.0944 9.31326 17.7168 9.69659L9.90693 17.7094C9.52929 18.0969 8.91865 18.0969 8.54503 17.7094L7.65316 16.7944C7.27151 16.4028 7.27954 15.7639 7.66923 15.3806L12.5102 10.6487H0.964178C0.429863 10.6487 0 10.2077 0 9.65949V8.34051C0 7.79231 0.429863 7.35127 0.964178 7.35127H12.5102L7.66923 2.61942C7.27553 2.23609 7.26749 1.59721 7.65316 1.20563Z"
                        fill="currentColor"
                      />
                    </svg>
                  </SVGWrapper>
                </ContentListItem>
                <ContentListItem
                  title="Cursos"
                  href="/library?content_type=Cursos"
                >
                  <SVGWrapper type="all">
                    <svg
                      width="15"
                      height="15"
                      viewBox="0 0 18 18"
                      fill="none"
                      xmlns="http://www.w3.org/2000/svg"
                      style={{ marginLeft: '.5rem' }}
                    >
                      <path
                        d="M7.65316 1.20563L8.54503 0.290588C8.92266 -0.0968628 9.53331 -0.0968628 9.90693 0.290588L17.7168 8.29929C18.0944 8.68674 18.0944 9.31326 17.7168 9.69659L9.90693 17.7094C9.52929 18.0969 8.91865 18.0969 8.54503 17.7094L7.65316 16.7944C7.27151 16.4028 7.27954 15.7639 7.66923 15.3806L12.5102 10.6487H0.964178C0.429863 10.6487 0 10.2077 0 9.65949V8.34051C0 7.79231 0.429863 7.35127 0.964178 7.35127H12.5102L7.66923 2.61942C7.27553 2.23609 7.26749 1.59721 7.65316 1.20563Z"
                        fill="currentColor"
                      />
                    </svg>
                  </SVGWrapper>
                </ContentListItem>
                <ContentListItem
                  title="Ferramentas"
                  href="/library?content_type=Ferramentas"
                >
                  <SVGWrapper type="all">
                    <svg
                      width="15"
                      height="15"
                      viewBox="0 0 18 18"
                      fill="none"
                      xmlns="http://www.w3.org/2000/svg"
                      style={{ marginLeft: '.5rem' }}
                    >
                      <path
                        d="M7.65316 1.20563L8.54503 0.290588C8.92266 -0.0968628 9.53331 -0.0968628 9.90693 0.290588L17.7168 8.29929C18.0944 8.68674 18.0944 9.31326 17.7168 9.69659L9.90693 17.7094C9.52929 18.0969 8.91865 18.0969 8.54503 17.7094L7.65316 16.7944C7.27151 16.4028 7.27954 15.7639 7.66923 15.3806L12.5102 10.6487H0.964178C0.429863 10.6487 0 10.2077 0 9.65949V8.34051C0 7.79231 0.429863 7.35127 0.964178 7.35127H12.5102L7.66923 2.61942C7.27553 2.23609 7.26749 1.59721 7.65316 1.20563Z"
                        fill="currentColor"
                      />
                    </svg>
                  </SVGWrapper>
                </ContentListItem>
                <ContentListItem
                  title="Livros"
                  href="/library?content_type=Livros"
                >
                  <SVGWrapper type="all">
                    <svg
                      width="15"
                      height="15"
                      viewBox="0 0 18 18"
                      fill="none"
                      xmlns="http://www.w3.org/2000/svg"
                      style={{ marginLeft: '.5rem' }}
                    >
                      <path
                        d="M7.65316 1.20563L8.54503 0.290588C8.92266 -0.0968628 9.53331 -0.0968628 9.90693 0.290588L17.7168 8.29929C18.0944 8.68674 18.0944 9.31326 17.7168 9.69659L9.90693 17.7094C9.52929 18.0969 8.91865 18.0969 8.54503 17.7094L7.65316 16.7944C7.27151 16.4028 7.27954 15.7639 7.66923 15.3806L12.5102 10.6487H0.964178C0.429863 10.6487 0 10.2077 0 9.65949V8.34051C0 7.79231 0.429863 7.35127 0.964178 7.35127H12.5102L7.66923 2.61942C7.27553 2.23609 7.26749 1.59721 7.65316 1.20563Z"
                        fill="currentColor"
                      />
                    </svg>
                  </SVGWrapper>
                </ContentListItem>
                <ContentListItem
                  title="Vídeos"
                  href="/library?content_type=Videos"
                >
                  <SVGWrapper type="all">
                    <svg
                      width="15"
                      height="15"
                      viewBox="0 0 18 18"
                      fill="none"
                      xmlns="http://www.w3.org/2000/svg"
                      style={{ marginLeft: '.5rem' }}
                    >
                      <path
                        d="M7.65316 1.20563L8.54503 0.290588C8.92266 -0.0968628 9.53331 -0.0968628 9.90693 0.290588L17.7168 8.29929C18.0944 8.68674 18.0944 9.31326 17.7168 9.69659L9.90693 17.7094C9.52929 18.0969 8.91865 18.0969 8.54503 17.7094L7.65316 16.7944C7.27151 16.4028 7.27954 15.7639 7.66923 15.3806L12.5102 10.6487H0.964178C0.429863 10.6487 0 10.2077 0 9.65949V8.34051C0 7.79231 0.429863 7.35127 0.964178 7.35127H12.5102L7.66923 2.61942C7.27553 2.23609 7.26749 1.59721 7.65316 1.20563Z"
                        fill="currentColor"
                      />
                    </svg>
                  </SVGWrapper>
                </ContentListItem>
                <ContentListItem title="Ver todos os links" href="/library">
                  <SVGWrapper type="all">
                    <svg
                      width="15"
                      height="15"
                      viewBox="0 0 18 18"
                      fill="none"
                      xmlns="http://www.w3.org/2000/svg"
                      style={{ marginLeft: '.5rem' }}
                    >
                      <path
                        d="M7.65316 1.20563L8.54503 0.290588C8.92266 -0.0968628 9.53331 -0.0968628 9.90693 0.290588L17.7168 8.29929C18.0944 8.68674 18.0944 9.31326 17.7168 9.69659L9.90693 17.7094C9.52929 18.0969 8.91865 18.0969 8.54503 17.7094L7.65316 16.7944C7.27151 16.4028 7.27954 15.7639 7.66923 15.3806L12.5102 10.6487H0.964178C0.429863 10.6487 0 10.2077 0 9.65949V8.34051C0 7.79231 0.429863 7.35127 0.964178 7.35127H12.5102L7.66923 2.61942C7.27553 2.23609 7.26749 1.59721 7.65316 1.20563Z"
                        fill="currentColor"
                      />
                    </svg>
                  </SVGWrapper>
                </ContentListItem>
              </Library>
            </ContentList>
          </NavigationMenuContent>
        </NavigationMenuItem>

        <NavigationMenuItem>
          <NavigationMenuTrigger>Avaliar</NavigationMenuTrigger>
          <NavigationMenuContent>
            <ContentListHeader>Checklists</ContentListHeader>
            <ContentList layout="two">
              <ContentListItem
                title="Checklist Geral"
                href="/checklists?category=Geral"
              >
                <SVGWrapper type="all">
                  <svg
                    width="15"
                    height="15"
                    viewBox="0 0 18 18"
                    fill="none"
                    xmlns="http://www.w3.org/2000/svg"
                    style={{ marginLeft: '.5rem' }}
                  >
                    <path
                      d="M7.65316 1.20563L8.54503 0.290588C8.92266 -0.0968628 9.53331 -0.0968628 9.90693 0.290588L17.7168 8.29929C18.0944 8.68674 18.0944 9.31326 17.7168 9.69659L9.90693 17.7094C9.52929 18.0969 8.91865 18.0969 8.54503 17.7094L7.65316 16.7944C7.27151 16.4028 7.27954 15.7639 7.66923 15.3806L12.5102 10.6487H0.964178C0.429863 10.6487 0 10.2077 0 9.65949V8.34051C0 7.79231 0.429863 7.35127 0.964178 7.35127H12.5102L7.66923 2.61942C7.27553 2.23609 7.26749 1.59721 7.65316 1.20563Z"
                      fill="currentColor"
                    />
                  </svg>
                </SVGWrapper>
              </ContentListItem>

              <ContentListItem
                title="Checklist de Design"
                href="/checklists?category=Design"
              >
                <SVGWrapper type="design">
                  <svg
                    width="15"
                    height="15"
                    viewBox="0 0 18 18"
                    fill="none"
                    xmlns="http://www.w3.org/2000/svg"
                    style={{ marginLeft: '1rem' }}
                  >
                    <path
                      d="M7.65316 1.20563L8.54503 0.290588C8.92266 -0.0968628 9.53331 -0.0968628 9.90693 0.290588L17.7168 8.29929C18.0944 8.68674 18.0944 9.31326 17.7168 9.69659L9.90693 17.7094C9.52929 18.0969 8.91865 18.0969 8.54503 17.7094L7.65316 16.7944C7.27151 16.4028 7.27954 15.7639 7.66923 15.3806L12.5102 10.6487H0.964178C0.429863 10.6487 0 10.2077 0 9.65949V8.34051C0 7.79231 0.429863 7.35127 0.964178 7.35127H12.5102L7.66923 2.61942C7.27553 2.23609 7.26749 1.59721 7.65316 1.20563Z"
                      fill="currentColor"
                    />
                  </svg>
                </SVGWrapper>
              </ContentListItem>

              <ContentListItem
                title="Checklist de Desenvolvimento"
                href="/checklists?category=Desenvolvimento"
              >
                <SVGWrapper type="dev">
                  <svg
                    width="15"
                    height="15"
                    viewBox="0 0 18 18"
                    fill="none"
                    xmlns="http://www.w3.org/2000/svg"
                    style={{ marginLeft: '1rem' }}
                  >
                    <path
                      d="M7.65316 1.20563L8.54503 0.290588C8.92266 -0.0968628 9.53331 -0.0968628 9.90693 0.290588L17.7168 8.29929C18.0944 8.68674 18.0944 9.31326 17.7168 9.69659L9.90693 17.7094C9.52929 18.0969 8.91865 18.0969 8.54503 17.7094L7.65316 16.7944C7.27151 16.4028 7.27954 15.7639 7.66923 15.3806L12.5102 10.6487H0.964178C0.429863 10.6487 0 10.2077 0 9.65949V8.34051C0 7.79231 0.429863 7.35127 0.964178 7.35127H12.5102L7.66923 2.61942C7.27553 2.23609 7.26749 1.59721 7.65316 1.20563Z"
                      fill="currentColor"
                    />
                  </svg>
                </SVGWrapper>
              </ContentListItem>
            </ContentList>
          </NavigationMenuContent>
        </NavigationMenuItem>

        <NavigationMenuItem>
          <NavigationMenuLink href="/about">Colaborar</NavigationMenuLink>
        </NavigationMenuItem>

        <NavigationMenuItem>
          <NavigationMenuLink href="/about">
            Conheça o inclua
          </NavigationMenuLink>
        </NavigationMenuItem>

        <NavigationMenuIndicator />
      </NavigationMenuList>

      <ViewportPosition>
        <NavigationMenuViewport />
      </ViewportPosition>
    </NavigationMenu>
  );
};

export default NavigationMenuComp;
