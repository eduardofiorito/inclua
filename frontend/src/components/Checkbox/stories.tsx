import { Story, Meta } from '@storybook/react/types-6-0';

import Checkbox, { CheckboxProps } from '.';

export default {
  title: 'Form/Checkbox',
  component: Checkbox,
  argTypes: {
    onCheck: { action: 'checked' },
  },
} as Meta<CheckboxProps>;

export const Default: Story<CheckboxProps> = (args) => (
  <>
    <div style={{ padding: 10 }}>
      <Checkbox
        name="category"
        label="Article"
        labelFor="article"
        isChecked
        {...args}
      />
    </div>

    <div style={{ padding: 10 }}>
      <Checkbox name="category" label="Course" labelFor="course" {...args} />
    </div>

    <div style={{ padding: 10 }}>
      <Checkbox name="category" label="Video" labelFor="video" {...args} />
    </div>
  </>
);
