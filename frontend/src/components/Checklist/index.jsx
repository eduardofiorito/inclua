/* eslint-disable react/display-name */
import styled, { css, keyframes } from 'styled-components';
import React from 'react';
import { ChevronDownIcon } from '@radix-ui/react-icons';
import * as AccordionPrimitive from '@radix-ui/react-accordion';
import Heading from 'components/Heading';
import Checkbox from 'components/Checkbox';
import { customMedia } from 'utils/generateMediaBreakpoint';

const slideDown = keyframes`
  from { height: 0 }
  to { height: var(--radix-accordion-content-height) }
`;

const slideUp = keyframes`
  from { height: var(--radix-accordion-content-height) }
  to { height: 0 }
`;

const StyledAccordion = styled(AccordionPrimitive.Root)`
  border-radius: 10px;
  width: 100%;
`;

const StyledItem = styled(AccordionPrimitive.Item)`
  ${({ theme }) => css`
    overflow: hidden;
    margin-top: 1px;
    box-shadow: 0 0 0 1px ${theme.colors.border};
    width: 100%;

    &:focus-within {
      position: relative;
      box-shadow: 0 0 0 3px rgb(13 110 253 / 25%);
    }
  `}
`;

const StyledHeader = styled(AccordionPrimitive.Header)`
  ${({ theme }) => css`
    all: unset;
    border-bottom: 1px solid ${theme.colors.border};
    position: relative;
    display: block;
  `}
`;

const StyledTrigger = styled(AccordionPrimitive.Trigger)`
  ${({ theme }) => css`
    all: unset;
    min-height: 50px;
    display: block;
    align-items: center;
    justify-content: space-between;
    line-height: 1.5rem;
    font-family: ${theme.font.familyTitle};
    font-weight: ${theme.font.weight.semiBold};
    color: ${theme.colors.title};
    margin: 0 !important;
    cursor: pointer;

    ${customMedia.between('initial', 'large')`
      font-size: ${theme.font.sizes.body2}rem;
      padding: ${theme.spacings.xsmall}rem ${theme.spacings.large}rem ${theme.spacings.xsmall}rem ${theme.spacings.small}rem;
      width: calc(100% - 3rem);
    `}

    ${customMedia.greaterThan('large')`
      font-size: ${theme.font.sizes.body1}rem;
      padding: ${theme.spacings.small}rem ${theme.spacings.large}rem ${theme.spacings.small}rem ${theme.spacings.medium}rem;
      width: calc(100% - 3.5rem);
    `}

    &:hover {
      color: ${theme.colors.strong};
    }

    code {
      font-family: ${theme.font.familyCode};
      font-weight: ${theme.font.weight.medium};
      background-color: ${theme.colors.tags};
      color: ${theme.colors.support.red};
      padding: 0.125rem;
      border-radius: 6px;
    }

    a {
      color: ${theme.colors.link};
    }
  `}
`;

const StyledContent = styled(AccordionPrimitive.Content)`
  ${({ theme }) => css`
    overflow: hidden;
    font-size: 15px;
    color: ${theme.colors.text};

    &[data-state='open'] {
      animation: ${slideDown} 300ms cubic-bezier(0.87, 0, 0.13, 1) forwards;
      background-color: ${theme.colors.accordion.content};
    }
    &[data-state='closed'] {
      animation: ${slideUp} 300ms cubic-bezier(0.87, 0, 0.13, 1) forwards;
    }

    code {
      font-family: ${theme.font.familyCode};
      background-color: ${theme.colors.tags};
      color: ${theme.colors.support.red};
      padding: 0.125rem;
      border-radius: 6px;
    }

    a {
      color: ${theme.colors.link};
    }
  `}
`;

const StyledContentText = styled.div`
  ${({ theme }) => css`
    ${customMedia.between('initial', 'large')`
      padding: ${theme.spacings.xsmall}rem ${theme.spacings.small}rem;
    `}

    ${customMedia.greaterThan('large')`
      padding: ${theme.spacings.small}rem ${theme.spacings.medium}rem;
    `}
  `}
`;

const StyledChevron = styled(ChevronDownIcon)`
  ${({ theme }) => css`
    color: ${theme.colors.title};
    transition: transform 300ms cubic-bezier(0.87, 0, 0.13, 1);
    min-height: 2rem;
    min-width: 2rem;
    position: absolute;
    right: 0;
    top: calc(50% - 1rem);

    [data-state='open'] & {
      transform: rotate(180deg);
    }
  `}
`;

const ChecklistWrapper = styled.section`
  ${({ theme }) => css`
    box-shadow: ${theme.colors.cardShadow};
    border-radius: 10px;
    background-color: ${theme.colors.cardBg};

    ${customMedia.between('initial', 'large')`
      padding: ${theme.spacings.medium}rem ${theme.spacings.small}rem;
    `}

    ${customMedia.greaterThan('large')`
      padding: ${theme.spacings.xlarge}rem ${theme.spacings.xlarge}rem;
    `}
  `}
`;

const Description = styled.p`
  ${({ theme }) => css`
    color: ${theme.colors.subtitle};
    margin-bottom: ${theme.spacings.large}rem;
    line-height: 1.5rem;

    ${customMedia.between('initial', 'medium')`
      font-size: ${theme.font.sizes.caption}rem;
    `}

    ${customMedia.between('medium', 'large')`
      font-size: ${theme.font.sizes.body2}rem;
    `}

    ${customMedia.greaterThan('large')`
      font-size: ${theme.font.sizes.body1}rem;
    `}
  `}
`;

const Guideline = styled.a`
  ${({ theme }) => css`
    color: ${theme.colors.link};
    text-transform: uppercase;
    padding: 0.5rem 0;
    text-underline-offset: ${theme.spacings.xsmall}rem;

    ${customMedia.between('initial', 'large')`
      font-size: ${theme.font.sizes.caption}rem;
    `}

    ${customMedia.greaterThan('large')`
      font-size: ${theme.font.sizes.body2}rem;    
    `}
  `}
`;

const GuidelineText = styled.p`
  ${({ theme }) => css`
    color: ${theme.colors.text};
    margin-top: ${theme.spacings.small}rem;
    line-height: 1.5rem;

    ${customMedia.between('initial', 'large')`
      font-size: ${theme.font.sizes.caption}rem;
    `}

    ${customMedia.greaterThan('large')`
      font-size: ${theme.font.sizes.body2}rem;    
    `}
  `}
`;

const Row = styled.div`
  display: flex;
  flex-direction: row-reverse;

  input {
    margin-right: 1rem;
  }
`;

// Exports
export const Accordion = StyledAccordion;
export const AccordionItem = StyledItem;
export const AccordionTrigger = React.forwardRef(
  ({ children, ...props }, forwardedRef) => (
    <StyledHeader>
      <StyledTrigger {...props} ref={forwardedRef}>
        {children}
      </StyledTrigger>
      <StyledChevron aria-hidden />
    </StyledHeader>
  ),
);
export const AccordionContent = React.forwardRef(
  ({ children, ...props }, forwardedRef) => (
    <StyledContent {...props} ref={forwardedRef}>
      <StyledContentText>{children}</StyledContentText>
    </StyledContent>
  ),
);

export const Checklist = ({ title, description, accordions }) => (
  <ChecklistWrapper>
    <Heading fontColor="title" level={2} size="h4" marginBottom="small">
      {title}
    </Heading>
    <Description>{description}</Description>
    <Accordion type="single" collapsible>
      {accordions &&
        accordions.map((accordion, index) => (
          <Row key={index}>
            <AccordionItem value={`item-${index + 1}`}>
              <AccordionTrigger
                dangerouslySetInnerHTML={{ __html: accordion.title }}
              />
              <AccordionContent>
                <Guideline href={accordion.guidelineLink} target="_blank">
                  {accordion.guidelineText}
                </Guideline>
                <GuidelineText
                  dangerouslySetInnerHTML={{ __html: accordion.content }}
                />
              </AccordionContent>
            </AccordionItem>
            <Checkbox />
          </Row>
        ))}
    </Accordion>
  </ChecklistWrapper>
);

export default Checklist;
