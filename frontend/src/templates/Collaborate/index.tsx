import styled, { css } from 'styled-components';
import * as TabsPrimitive from '@radix-ui/react-tabs';
import { Container } from 'components/Container';
import Heading from 'components/Heading';
import Menu from 'components/Menu';
import Footer from 'components/Footer';
import ToTop from 'components/ToTop';
import { customMedia } from 'utils/generateMediaBreakpoint';
import TextField from 'components/TextField';
import Button from 'components/Button';

import { Email, Message } from '@styled-icons/material-outlined';
import Head from 'next/head';

const StyledTabs = styled(TabsPrimitive.Root)`
  display: flex;
  flex-direction: column;
  width: 100%;
`;

const StyledList = styled(TabsPrimitive.List)`
  ${({ theme }) => css`
    flex-shrink: 0;
    display: flex;
    border-bottom: 1px solid ${theme.colors.border};
    width: 100%;

    ${customMedia.between('initial', 'medium')`
      flex-direction: column;
      gap: 1rem;
    `}

    ${customMedia.between('medium', 'large')`
      padding: ${theme.spacings.xlarge}rem 0;
    `}
  `}
`;

const StyledTrigger = styled(TabsPrimitive.Trigger)`
  ${({ theme }) => css`
    all: unset;
    font-family: inherit;
    padding: 0 20px;
    height: 45px;
    flex: 1;
    display: flex;
    align-items: center;
    justify-content: center;
    font-size: ${theme.font.sizes.body1}rem;
    line-height: 1em;
    color: ${theme.colors.text};
    user-select: none;
    cursor: pointer;

    &:first-child {
      border-top-left-radius: 6px;
    }

    &:last-child {
      border-top-right-radius: 6px;
    }
    &:hover {
      color: ${theme.colors.primary400};
    }

    &[data-state='active'] {
      color: ${theme.colors.primary400};
      box-shadow: inset 0 -1px 0 0 currentColor, 0 2px 0 0 currentColor;
    }

    &:focus {
      position: relative;
      box-shadow: 0 0 0 2px ${theme.colors.strong};
    }
  `}
`;

const StyledContent = styled(TabsPrimitive.Content)`
  ${({ theme }) => css`
    flex-grow: 1;
    border-bottom-left-radius: 6px;
    border-bottom-right-radius: 6px;
    outline: none;
    &:focus {
      box-shadow: 0 0 0 2px ${theme.colors.strong};
    }
  `}
`;

// Exports
export const Tabs = StyledTabs;
export const TabsList = StyledList;
export const TabsTrigger = StyledTrigger;
export const TabsContent = StyledContent;

export const Wrapper = styled.main`
  ${({ theme }) => css`
    position: relative;

    ${customMedia.between('initial', 'medium')`
      padding: ${theme.spacings.large}rem 0;
    `}

    ${customMedia.between('medium', 'large')`
      padding: ${theme.spacings.xlarge}rem 0;
    `}

    ${customMedia.greaterThan('large')`
      padding: ${theme.spacings.xxlarge}rem 0;
    `}
  `}
`;

export const Description = styled.h2`
  ${({ theme }) => css`
    color: ${theme.colors.subtitle};

    ${customMedia.between('initial', 'large')`
      width: 100%;
      margin-top: ${theme.spacings.xsmall}rem;
      font-size: ${theme.font.sizes.h6}rem;
      line-height: 1.5rem;
    `}

    ${customMedia.greaterThan('large')`
      ${({ theme }) => css`
        width: 80%;
        margin-top: ${theme.spacings.small}rem;
        font-size: ${theme.font.sizes.h5}rem;
        line-height: 2rem;
      `}
    `}
  `}
`;

export const Shape = styled.div`
  ${customMedia.between('initial', 'large')`
      display: none;
  `}

  ${customMedia.greaterThan('large')`
      ${({ theme }) => css`
        position: absolute;
        top: 0;
        right: 0;
        color: ${theme.colors.shapes};
        z-index: -1;
      `}
  `}
`;

const Text = styled.p`
  ${({ theme }) => css`
    color: ${theme.colors.text};
    max-width: 500px;

    ${customMedia.between('initial', 'medium')`
      font-size: ${theme.font.sizes.h5}rem;
      line-height: 1.25rem;
    `}

    ${customMedia.between('medium', 'large')`
      font-size: ${theme.font.sizes.h5}rem;
      line-height: 1.5rem;
    `}

    ${customMedia.greaterThan('large')`
      font-size: ${theme.font.sizes.h4}rem;
      line-height: 2rem;
    `}
  `}
`;

export const Form = styled.form`
  display: flex;
  flex-direction: column;
  gap: 1.5rem;
`;

export const FormWrapper = styled.div`
  ${customMedia.between('initial', 'medium')`
      width: 100%;
    `}

  ${customMedia.greaterThan('medium')`
      width: 40%;
    `}
`;

export const Content = styled.div`
  display: flex;
  justify-content: space-between;
  padding: 3rem 0;
`;

// Your app...

const Box = styled.section`
  ${({ theme }) => css`
    margin-top: ${theme.spacings.xlarge}rem;
  `}
`;

const Collaborate = () => (
  <>
    <Head>
      <title>Colaborar | Inclua</title>
    </Head>
    <Menu authenticated={false} />
    <Wrapper>
      <Container>
        <Heading size="h2" fontColor="title">
          Tire dúvidas, envie sugestões ou colabore...
        </Heading>
        <Description>
          Ajude-nos a melhorar cada vez mais o projeto e assim contribuir para a
          construção de uma web mais acessível e inclusiva.
        </Description>
        <Box id="main">
          <Tabs defaultValue="tab1">
            <TabsList aria-label="Selecione o formulário correto">
              <TabsTrigger value="tab1">Dúvidas</TabsTrigger>
              <TabsTrigger value="tab2">Sugestões</TabsTrigger>
              <TabsTrigger value="tab3">Colabore</TabsTrigger>
            </TabsList>
            <TabsContent value="tab1">
              <Content>
                <Text>
                  Conta pra gente qual a sua dúvida. Assim que possível
                  entraremos em contato!
                </Text>
                <FormWrapper>
                  <Form autoComplete="on" id="main">
                    <TextField
                      label="Assunto da mensagem (obrigatório)"
                      name="assunto"
                      placeholder="Digite o assunto da mensagem..."
                      type="text"
                      icon={<Message />}
                    />

                    <TextField
                      label="E-mail (obrigatório)"
                      name="email"
                      placeholder="seuemail@exemplo.com"
                      type="email"
                      icon={<Email />}
                    />

                    <TextField
                      label="Qual é a sua dúvida? (obrigatório)"
                      name="duvida"
                      placeholder="Digite sua dúvida aqui..."
                      type="text"
                      style={{ minHeight: '4rem' }}
                    />

                    <Button
                      type="submit"
                      variation="primary"
                      buttonDisplay="block"
                    >
                      <span>Entrar</span>
                    </Button>
                  </Form>
                </FormWrapper>
              </Content>
            </TabsContent>
            <TabsContent value="tab2">
              <Content>
                <Text>
                  Diz pra gente como podemos melhorar ainda mais o Inclua. Toda
                  sugestão é muito bem-vinda!
                </Text>
                <FormWrapper>
                  <Form autoComplete="on" id="main">
                    <TextField
                      label="Assunto da mensagem (obrigatório)"
                      name="assunto"
                      placeholder="Digite o assunto da mensagem..."
                      type="text"
                      icon={<Message />}
                    />

                    <TextField
                      label="E-mail (obrigatório)"
                      name="email"
                      placeholder="seuemail@exemplo.com"
                      type="email"
                      icon={<Email />}
                    />

                    <TextField
                      label="Qual é a sua sugestão? (obrigatório)"
                      name="duvida"
                      placeholder="Digite sua sugestão aqui..."
                      type="text"
                      style={{ minHeight: '4rem' }}
                    />

                    <Button
                      type="submit"
                      variation="primary"
                      buttonDisplay="block"
                    >
                      <span>Entrar</span>
                    </Button>
                  </Form>
                </FormWrapper>
              </Content>
            </TabsContent>
            <TabsContent value="tab3">
              <Content>
                <Text>
                  Colabore conosco para termos uma Web mais acessível.
                </Text>
                <FormWrapper>
                  <Form autoComplete="on" id="main">
                    <TextField
                      label="Assunto da mensagem (obrigatório)"
                      name="assunto"
                      placeholder="Digite o assunto da mensagem..."
                      type="text"
                      icon={<Message />}
                    />

                    <TextField
                      label="E-mail (obrigatório)"
                      name="email"
                      placeholder="seuemail@exemplo.com"
                      type="email"
                      icon={<Email />}
                    />

                    <TextField
                      label="Como você pode colaborar? (obrigatório)"
                      name="duvida"
                      placeholder="Digite aqui..."
                      type="text"
                      style={{ minHeight: '4rem' }}
                    />

                    <Button
                      type="submit"
                      variation="primary"
                      buttonDisplay="block"
                    >
                      <span>Entrar</span>
                    </Button>
                  </Form>
                </FormWrapper>
              </Content>
            </TabsContent>
          </Tabs>
        </Box>
      </Container>
      <Shape>
        <svg
          width="696"
          height="386"
          viewBox="0 0 696 386"
          fill="none"
          xmlns="http://www.w3.org/2000/svg"
        >
          <path
            fillRule="evenodd"
            clipRule="evenodd"
            d="M696 386C561.974 379.778 396.089 330.013 387.734 155.156C381.934 33.7938 280.105 48.4677 181.875 62.6229C97.7517 74.7453 16.2684 86.4873 0 12.0816V0H696V386Z"
            fill="currentColor"
            fillOpacity="0.7"
          />
        </svg>
      </Shape>
    </Wrapper>
    <Footer />
    <ToTop />
  </>
);

export default Collaborate;
