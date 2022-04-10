import { useEffect, useState } from 'react';
import xor from 'lodash.xor';
import { CloseOutline as Close } from '@styled-icons/evaicons-outline/CloseOutline';
import { FilterList } from '@styled-icons/material-outlined/FilterList';

import Heading from 'components/Heading';
import Checkbox from 'components/Checkbox';
import Radio from 'components/Radio';

import * as S from './styles';
import { ParsedUrlQueryInput } from 'querystring';
import Button from 'components/Button';

export type ItemProps = {
  title: string;
  name: string;
  type: string;
  fields: Field[];
};

type Field = {
  label: string;
  name: string;
};

type Values = ParsedUrlQueryInput;

export type SidebarProps = {
  items: ItemProps[];
  initialValues?: Values;
  onFilter: (values: Values) => void;
  url: string;
};

const Sidebar = ({
  items,
  onFilter,
  initialValues = {},
  url,
}: SidebarProps) => {
  const [values, setValues] = useState(initialValues);
  const [isOpen, setIsOpen] = useState(false);

  useEffect(() => {
    onFilter(values);
    // this method comes from another template
    // that we don't have access
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [values]);

  const handleRadio = (name: string, value: string | boolean) => {
    setValues((s) => ({ ...s, [name]: value }));
  };

  const handleCheckbox = (name: string, value: string) => {
    const currentList = (values[name] as []) || [];
    setValues((s) => ({ ...s, [name]: xor(currentList, [value]) }));
  };

  const handleFilterMenu = () => {
    setIsOpen(false);
  };

  return (
    <S.Wrapper isOpen={isOpen}>
      <S.Overlay aria-hidden={isOpen} />

      <S.Header>
        <S.OpenWrapper
          title="Abrir filtro"
          onClick={() => setIsOpen(true)}
          aria-label="open filters"
        >
          Filtrar
          <FilterList width={38} />
        </S.OpenWrapper>

        <S.CloseWrapper
          title="Fechar filtro"
          aria-label="close filters"
          onClick={() => setIsOpen(false)}
        >
          <Close width={38} />
        </S.CloseWrapper>
      </S.Header>

      <S.Content id="filter">
        {items.map((item) => (
          <S.Items key={item.title}>
            <Heading level={3} size="body1">
              {item.title}
            </Heading>

            {item.type === 'checkbox' &&
              item.fields.map((field) => (
                <Checkbox
                  key={field.name}
                  name={field.name}
                  label={field.label}
                  labelFor={field.name}
                  isChecked={(values[item.name] as string[])?.includes(
                    field.name,
                  )}
                  onCheck={() => handleCheckbox(item.name, field.name)}
                />
              ))}

            {item.type === 'radio' &&
              item.fields.map((field) => (
                <Radio
                  key={field.name}
                  id={field.name}
                  value={field.name}
                  name={item.name}
                  label={field.label}
                  labelFor={field.name}
                  defaultChecked={
                    String(field.name) === String(values[item.name])
                  }
                  onChange={() => handleRadio(item.name, field.name)}
                />
              ))}
          </S.Items>
        ))}
        <div>
          {Object.keys(values).length ? (
            <Button as="a" href={url} buttonDisplay="block">
              Limpar
            </Button>
          ) : null}
        </div>
      </S.Content>
      <S.Footer>
        <Button onClick={handleFilterMenu}>Filtrar</Button>
      </S.Footer>
    </S.Wrapper>
  );
};

export default Sidebar;
