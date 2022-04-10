import { ComponentMeta, ComponentStory } from '@storybook/react';
import LibraryCard from '.';

export default {
  title: 'LibraryCard',
  component: LibraryCard,
  args: {
    type: 'Livro',
    title: 'Cartilha de acessibilidade: Fáscisculo I - WCAG',
    img: {
      url: 'https://res.cloudinary.com/dtz06cfki/image/upload/v1645098956/w3c_cdb2f81286.png',
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
