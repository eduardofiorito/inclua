import { ComponentMeta, ComponentStory } from '@storybook/react';
import Dropdown from '.';

export default {
  title: 'Dropdown',
  component: Dropdown,
} as ComponentMeta<typeof Dropdown>;

export const Default: ComponentStory<typeof Dropdown> = (args) => (
  <Dropdown {...args} />
);

Default.args = {
  title: 'Título',
  children: 'Conteudo',
};
