import { ComponentMeta, ComponentStory } from '@storybook/react';
import LogoLink from '.';

export default {
  title: 'LogoLink',
  component: LogoLink,
  args: {
    alternativeText: 'Inclua Home',
    width: 'normal',
  },
} as ComponentMeta<typeof LogoLink>;

export const Default: ComponentStory<typeof LogoLink> = (args) => (
  <LogoLink {...args} />
);
