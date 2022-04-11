import { Container } from 'components/Container';
import Cta from 'components/Cta';
import Footer from 'components/Footer/';
import { Grid } from 'components/Grid';
import Heading from 'components/Heading';
import LibraryCard from 'components/LibraryCard';
import Menu from 'components/Menu';
import ToTop from 'components/ToTop';

import Prism from 'prismjs';

import {
  FacebookShareButton,
  FacebookIcon,
  EmailShareButton,
  EmailIcon,
  LinkedinShareButton,
  LinkedinIcon,
  TwitterShareButton,
  TwitterIcon,
  WhatsappShareButton,
  WhatsappIcon,
} from 'next-share';

import * as S from './styles';
import { useEffect } from 'react';
import Head from 'next/head';

const linkCta = {
  url: '/sign-up',
  text: 'Inscreva-se gratuitamente',
};

type TagsProps = {
  name: string;
  slug: string;
};

type contentLibrariesProps = {
  content_type: {
    name: string;
  };
  title: string;
  img: {
    alternativeText: string;
    url: string;
  };
  link: {
    text: string;
    url: string;
  };
};

export type CaseTemplateProps = {
  slug: string;
  title: string;
  excerpt: string;
  content: string;
  readingTime: string;
  audioDescription: {
    url: string;
  };
  author?: {
    name: string;
    role: string;
    avatar: {
      alternativeText: string;
      url: string;
    };
  };
  tags?: TagsProps[];
  contentLibraries: contentLibrariesProps[];
  // eslint-disable-next-line @typescript-eslint/no-explicit-any
  subcategory?: any;
  // eslint-disable-next-line @typescript-eslint/no-explicit-any
  category?: any;
};

const CaseTemplate = ({
  title,
  excerpt,
  content,
  readingTime,
  audioDescription,
  author,
  subcategory,
  tags,
  contentLibraries,
  category,
}: CaseTemplateProps) => {
  useEffect(() => {
    if (typeof window !== 'undefined') {
      Prism.highlightAll();
    }
  }, []);

  return (
    <>
      <Head>
        <title>{title} | Inclua</title>
        <meta name="description" content={excerpt} />
      </Head>

      <Menu authenticated={false} />

      <S.Wrapper>
        <S.Shape>
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
        </S.Shape>
        <Container>
          <S.Article id="main">
            <S.Header>
              {subcategory && <S.Top>{subcategory.name}</S.Top>}
              <Heading
                fontColor="title"
                level={1}
                size="h2"
                lineHeight={2.75}
                marginTop="small"
                marginBottom="xsmall"
              >
                {title}
              </Heading>
              <S.Excerpt>{excerpt}</S.Excerpt>

              <S.HeaderWrapper>
                <S.TagsWrapper>
                  {tags &&
                    tags.map((tag, i) => <S.Tags key={i}>{tag.name}</S.Tags>)}
                </S.TagsWrapper>
                <S.ReadingTime>{readingTime}</S.ReadingTime>
              </S.HeaderWrapper>

              <S.HeaderWrapper>
                <S.Author>
                  <S.Avatar
                    src={author.avatar.url}
                    alt={author.avatar.alternativeText}
                  />
                  <S.Informations>
                    <S.Name>{author.name}</S.Name>
                    <S.Role>{author.role}</S.Role>
                  </S.Informations>
                </S.Author>
                <S.Share>
                  <FacebookShareButton
                    url={'https://github.com/inclua'}
                    quote={title}
                    windowWidth={800}
                    windowHeight={600}
                  >
                    <FacebookIcon size={32} round />
                  </FacebookShareButton>
                  <LinkedinShareButton url={'https://github.com/inclua'}>
                    <LinkedinIcon size={32} round />
                  </LinkedinShareButton>
                  <TwitterShareButton
                    url={'https://github.com/inclua'}
                    title={title}
                  >
                    <TwitterIcon size={32} round />
                  </TwitterShareButton>
                  <WhatsappShareButton
                    url={'https://github.com/inclua'}
                    title={title}
                    separator=":: "
                  >
                    <WhatsappIcon size={32} round />
                  </WhatsappShareButton>
                  <EmailShareButton
                    url={'https://github.com/inclua'}
                    subject={title}
                    body="body"
                  >
                    <EmailIcon size={32} round />
                  </EmailShareButton>
                </S.Share>
              </S.HeaderWrapper>

              {audioDescription && (
                <S.HeaderWrapper>
                  <S.Audio controls>
                    <source src={audioDescription.url} type="audio/mpeg" />O seu
                    navegador não suporta o elemento de áudio.
                  </S.Audio>
                </S.HeaderWrapper>
              )}
            </S.Header>

            <S.Divider />

            <S.PrismWrapper>
              <S.Content dangerouslySetInnerHTML={{ __html: content }} />
            </S.PrismWrapper>

            <S.AccessibleTo>
              <Heading
                fontColor="title"
                size="h6"
                lineHeight={1.5}
                weight="semiBold"
                level={2}
              >
                Esse conteúdo te ajudará a tornar acessível para:
              </Heading>
              <S.Item>
                <img src="/images/conexaolenta.svg" alt="" />
                <S.ItemContent>
                  <Heading
                    fontColor="title"
                    size="body1"
                    lineHeight={1.5}
                    weight="semiBold"
                    level={3}
                  >
                    Conexão Lenta
                  </Heading>
                  <S.ItemText>
                    Para pessoas com conexões lentas com a internet, onde as
                    imagens não são carregadas.
                  </S.ItemText>
                </S.ItemContent>
              </S.Item>
              <S.Item>
                <S.ItemImage src="/images/deficienciaVisual.svg" alt="" />
                <S.ItemContent>
                  <Heading
                    fontColor="title"
                    size="body1"
                    lineHeight={1.5}
                    weight="semiBold"
                    level={3}
                  >
                    Deficiência Visual
                  </Heading>
                  <S.ItemText>
                    Pessoas com cegueira e baixa visão que fazem uso de leitores
                    de tela.
                  </S.ItemText>
                </S.ItemContent>
              </S.Item>
            </S.AccessibleTo>
          </S.Article>

          <S.Footer>
            {contentLibraries.length !== 0 ? (
              <S.Library>
                <Heading
                  fontColor="title"
                  size="h6"
                  lineHeight={1.5}
                  weight="semiBold"
                  level={2}
                  marginBottom="small"
                >
                  Continue aprendendo sobre o assunto
                </Heading>
                <Grid>
                  {contentLibraries.map((library, i) => (
                    <LibraryCard
                      key={i}
                      type={library.content_type.name}
                      title={library.title}
                      img={library.img}
                      link={library.link}
                    ></LibraryCard>
                  ))}
                </Grid>
              </S.Library>
            ) : null}

            {category && (
              <Cta
                title="Cadastre-se  e estude com conteúdos selecionados para você"
                link={linkCta}
                color="light"
                typeImage={category.slug}
              />
            )}
          </S.Footer>
        </Container>
      </S.Wrapper>

      <Footer />
      <ToTop />
    </>
  );
};

export default CaseTemplate;
