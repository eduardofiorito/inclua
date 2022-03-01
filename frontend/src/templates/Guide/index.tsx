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

const linkCta = {
  url: '/sign-up',
  text: 'Inscreva-se gratuitamente',
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

type AccessibleTo = {
  name: string;
  description: string;
  icon: {
    alternativeText: string;
    url: string;
  };
};

export type GuideTemplateProps = {
  title: string;
  excerpt: string;
  content: string;
  readingTime: string;
  audioDescription: {
    url: string;
  };
  contentLibraries: contentLibrariesProps[];
  // eslint-disable-next-line @typescript-eslint/no-explicit-any
  subcategory?: any;
  // eslint-disable-next-line @typescript-eslint/no-explicit-any
  category?: any;
  accessibleTo?: AccessibleTo[];
};

const GuideTemplate = ({
  title,
  excerpt,
  content,
  readingTime,
  audioDescription,
  subcategory,
  contentLibraries,
  category,
  accessibleTo,
}: GuideTemplateProps) => {
  useEffect(() => {
    if (typeof window !== 'undefined') {
      Prism.highlightAll();
    }
  }, []);

  return (
    <>
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
          <S.Article>
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
                <S.ReadingTime>{readingTime}</S.ReadingTime>
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

            <S.Divider />

            {accessibleTo.length !== 0 ? (
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
                {accessibleTo.map((item, i) => (
                  <S.Item key={i}>
                    <img src={item.icon.url} alt={item.icon.alternativeText} />
                    <S.ItemContent>
                      <Heading
                        fontColor="title"
                        size="body1"
                        lineHeight={1.5}
                        weight="semiBold"
                        level={3}
                      >
                        {item.name}
                      </Heading>
                      <S.ItemText>{item.description}</S.ItemText>
                    </S.ItemContent>
                  </S.Item>
                ))}
              </S.AccessibleTo>
            ) : null}
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

export default GuideTemplate;
