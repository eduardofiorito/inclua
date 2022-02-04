import { ComponentMeta, ComponentStory } from '@storybook/react';
import Anchor from '.';

export default {
  title: 'Anchor',
  component: Anchor,
  args: {
    children: {
      type: 'string',
    },
    variation: 'primary',
    anchorDisplay: 'inline-block',
  },
} as ComponentMeta<typeof Anchor>;

export const Default: ComponentStory<typeof Anchor> = (args) => (
  <Anchor {...args} />
);

Default.args = {
  children: 'Texto do link',
};
