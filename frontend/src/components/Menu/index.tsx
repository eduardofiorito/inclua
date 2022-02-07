import { useState } from 'react';
import { Container } from 'components/Container';

import { MenuOutline as MenuIcon } from '@styled-icons/evaicons-outline/MenuOutline';
import { CloseOutline as CloseIcon } from '@styled-icons/evaicons-outline/CloseOutline';

import LogoLink from 'components/LogoLink';

import * as S from './styles';
import Button from 'components/Button';
import Dropdown from 'components/Dropdown';
import DropdownLearn from 'components/Dropdown/DropdownLearn';
import DropdownEvaluate from 'components/Dropdown/DropdownEvaluate';

type MenuProps = {
  authenticated: boolean;
};

const Menu = ({ authenticated = false }: MenuProps) => {
  const [isOpen, setIsOpen] = useState(false);

  return (
    <S.Menu>
      <Container className="container">
        <LogoLink url="/" alternativeText="Inclua Home" width="normal" />

        <S.Nav>
          <S.List>
            <S.ListItem>
              <Dropdown title={'Aprender'}>
                <DropdownLearn />
              </Dropdown>
            </S.ListItem>
            <S.ListItem>
              <Dropdown title={'Avaliar'}>
                <DropdownEvaluate />
              </Dropdown>
            </S.ListItem>
            <S.ListItem>
              <Dropdown title={'Colaborar'}>
                <h1>Teste</h1>
                <h2>Isso é outro teste</h2>
              </Dropdown>
            </S.ListItem>
            <S.ListItem>
              <S.Link href="#">Sobre o Inclua</S.Link>
            </S.ListItem>
            {!!authenticated && (
              <S.ListItem>
                <S.Link href="#">Painel</S.Link>
              </S.ListItem>
            )}
          </S.List>
        </S.Nav>

        <S.WrapperButton>
          {!authenticated && (
            <>
              <Button
                className="signIn"
                href="/sign-in"
                variation="text"
                as={'a'}
                buttonDisplay={'inline-block'}
              >
                Entrar
              </Button>
              <Button
                href="/sign-up"
                variation="primary"
                as={'a'}
                buttonDisplay={'inline-block'}
              >
                Cadastre-se
              </Button>
            </>
          )}
        </S.WrapperButton>

        <S.IconWrapper onClick={() => setIsOpen(true)} aria-label="Menu Mobile">
          <MenuIcon aria-label="Abrir menu" />
        </S.IconWrapper>
        <S.Mobile aria-hidden={!isOpen} isOpen={isOpen}>
          <S.WrapperTop>
            <LogoLink url="/" alternativeText="Inclua Home" width="normal" />
            <CloseIcon
              aria-label="Fechar menu"
              onClick={() => setIsOpen(false)}
            />
          </S.WrapperTop>

          <S.NavMobile>
            <S.ListMobile>
              <S.ListItemMobile>
                <Dropdown title={'Aprender'}>
                  <DropdownLearn />
                </Dropdown>
              </S.ListItemMobile>
              <S.ListItemMobile>
                <Dropdown title={'Avaliar'}>
                  <DropdownEvaluate />
                </Dropdown>
              </S.ListItemMobile>
              <S.ListItemMobile>
                <Dropdown title={'Colaborar'}>
                  <DropdownLearn />
                </Dropdown>
              </S.ListItemMobile>
              <S.ListItemMobile>
                <S.LinkMobile href="#">Sobre o Inclua</S.LinkMobile>
              </S.ListItemMobile>
              {!!authenticated && (
                <S.ListItemMobile>
                  <S.LinkMobile href="#">Painel</S.LinkMobile>
                </S.ListItemMobile>
              )}
            </S.ListMobile>
          </S.NavMobile>
          <S.WrapperButtonMobile>
            {!authenticated && (
              <>
                <Button
                  className="signIn"
                  href="/sign-in"
                  variation="text"
                  as={'a'}
                  buttonDisplay={'block'}
                >
                  Entrar
                </Button>
                <Button
                  href="/sign-up"
                  variation="primary"
                  as={'a'}
                  buttonDisplay={'block'}
                >
                  Cadastre-se
                </Button>
              </>
            )}
          </S.WrapperButtonMobile>
        </S.Mobile>
      </Container>
    </S.Menu>
  );
};

export default Menu;
