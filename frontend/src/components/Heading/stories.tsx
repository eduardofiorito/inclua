import { ComponentMeta, ComponentStory } from '@storybook/react';
import Heading from '.';

export default {
  title: 'Heading',
  component: Heading,
  args: {
    fontColor: 'title',
    level: 1,
    size: 'h1',
    weight: 'semiBold',
    lineHeight: 1,
  },
} as ComponentMeta<typeof Heading>;

export const Default: ComponentStory<typeof Heading> = (args) => (
  <Heading {...args}>Isso é um Heading</Heading>
);
