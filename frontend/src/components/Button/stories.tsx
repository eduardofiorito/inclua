import { ComponentMeta, ComponentStory } from '@storybook/react';
import Button from '.';

export default {
  title: 'Button',
  component: Button,
  args: {
    children: {
      type: 'string',
    },
    variation: 'primary',
    anchorDisplay: 'inline-block',
  },
} as ComponentMeta<typeof Button>;

export const Btn: ComponentStory<typeof Button> = (args) => (
  <Button {...args} />
);

Btn.args = {
  children: 'Texto do link',
  onClick: () => console.log('Cliquei no botão'),
};

export const Link: ComponentStory<typeof Button> = (args) => (
  <Button {...args} />
);

Link.args = {
  children: 'Texto do link',
  as: 'a',
  href: '/',
};
