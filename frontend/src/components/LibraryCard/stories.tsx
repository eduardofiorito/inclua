import { ComponentMeta, ComponentStory } from '@storybook/react';
import LibraryCard from '.';

export default {
  title: 'LibraryCard',
  component: LibraryCard,
  args: {
    type: 'Livro',
    title: 'Cartilha de acessibilidade: Fáscisculo I - WCAG',
    img: {
      url: 'images/w3c.png',
      alternativeText: 'W3c',
    },
    link: {
      text: 'W3C',
      url: 'https://www.w3c.br/pub/Materiais/PublicacoesW3C/cartilha-w3cbr-acessibilidade-web-fasciculo-I.htmlq',
    },
  },
} as ComponentMeta<typeof LibraryCard>;

export const Default: ComponentStory<typeof LibraryCard> = (args) => (
  <LibraryCard {...args} />
);
