import { ComponentMeta, ComponentStory } from '@storybook/react';
import CaseCard from '.';

export default {
  title: 'CaseCard',
  component: CaseCard,
  args: {
    img: {
      url: 'https://res.cloudinary.com/dtz06cfki/image/upload/v1646070598/dog2_d282142de6.png',
      alternativeText: 'Alguma coisa',
    },
    type: 'Cases de Design',
    title:
      'Fisio52: Como a correção da navegação por teclado trouxe mais clientes para a clínica',
    excerpt:
      'Por não funcionar corretamente a navegaçãp pelo teclado, percebemos que muitos pessoas deixavam o  site ',
    tags: ['Navegação', 'Teclado'],
  },
} as ComponentMeta<typeof CaseCard>;

export const Default: ComponentStory<typeof CaseCard> = (args) => (
  <CaseCard {...args} />
);
