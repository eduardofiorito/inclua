// eslint-disable-next-line @typescript-eslint/no-unused-vars
import styled from 'styled-components'; // You need this as well
import { generateMedia, pxToRem } from 'styled-media-query';

const breakpointsInRem = pxToRem({
  initial: '0px',
  xSmall: '375px',
  small: '576px',
  medium: '768px',
  large: '992px',
  xLarge: '1200px',
  xxLarge: '1400px',
  max: '1921px',
});

export const customMedia = generateMedia(breakpointsInRem);
