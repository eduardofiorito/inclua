import { ComponentMeta, ComponentStory } from '@storybook/react';
import Logo from '.';

export default {
  title: 'Logo',
  component: Logo,
  args: {
    alternativeText: 'Inclua Home',
    width: 'normal',
  },
} as ComponentMeta<typeof Logo>;

export const Default: ComponentStory<typeof Logo> = (args) => (
  <Logo {...args} />
);
