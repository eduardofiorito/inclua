import { Story, Meta } from '@storybook/react/types-6-0';

import Sidebar, { SidebarProps } from '.';

export default {
  title: 'Sidebar',
  component: Sidebar,
} as Meta<SidebarProps>;

export const Default: Story<SidebarProps> = (args) => (
  <div style={{ padding: 16, maxWidth: 320 }}>
    <Sidebar {...args} />
  </div>
);
