import { Container } from 'components/Container';
import Cta from 'components/Cta';
import Footer from 'components/Footer';
import Heading from 'components/Heading';
import Menu from 'components/Menu';
import * as S from '../BePart/styles';

type ImgProps = {
  url: string;
  alternativeText: string;
};

export type BePartTemplateProps = {
  hero: {
    title: string;
    subtitle: string;
    img: {
      url: string;
      alternativeText: string;
    };
  };
  learn: {
    title: string;
    images: ImgProps[];
  };
  checklist: {
    title: string;
    subtitle: string;
    img: {
      url: string;
      alternativeText: string;
    };
  };
  networking: {
    imgTop: {
      url: string;
      alternativeText: string;
    };
    title: string;
    subtitle: string;
    imgBottom: {
      url: string;
      alternativeText: string;
    };
  };
  cases: {
    img: {
      url: string;
      alternativeText: string;
    };
    title: string;
    subtitle: string;
  };
  cta: {
    title: string;
    link: {
      text: string;
      url: string;
    };
  };
};

export default function BePart({
  hero,
  learn,
  checklist,
  networking,
  cases,
  cta,
}: BePartTemplateProps) {
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
        <S.Hero>
          <Container>
            <S.Content id="main">
              <Heading size="h2" fontColor="title">
                {hero.title}
              </Heading>
              <S.Description>{hero.subtitle}</S.Description>
            </S.Content>
            <S.HeroImg src={hero.img.url} alt={hero.img.alternativeText} />
          </Container>
        </S.Hero>

        <S.Section>
          <Container>
            <Heading size="h3" fontColor="title" level={2}>
              {learn.title}
            </Heading>
            <S.ImagesWrapper>
              {learn.images &&
                learn.images.map((image, index) => (
                  <img
                    key={index}
                    src={image.url}
                    alt={image.alternativeText}
                  />
                ))}
            </S.ImagesWrapper>
          </Container>
        </S.Section>
        <S.Checklist>
          <Container className="container">
            <S.Content>
              <Heading size="h3" fontColor="title" level={2}>
                {checklist.title}
              </Heading>
              <S.Description>{checklist.subtitle}</S.Description>
            </S.Content>
            <S.ImageWrapper>
              <img
                src={checklist.img.url}
                alt={checklist.img.alternativeText}
              />
            </S.ImageWrapper>
          </Container>
          <S.ChecklistShape>
            <svg
              xmlns="http://www.w3.org/2000/svg"
              fill="none"
              viewBox="0 0 498 952"
            >
              <path
                fill="currentColor"
                fillOpacity=".7"
                d="M259.749 208.755C220.962 21.852-3.582-10.945.043 2.747v936.265c75.691 25.864 229.521 30.58 239.311-157.461 12.237-235.052 149.568-44.5 240.669-247.603S287.748 343.672 259.749 208.755Z"
              />
            </svg>
          </S.ChecklistShape>
        </S.Checklist>
        <S.Networking>
          <S.ImageWrapperTop>
            <img
              src={networking.imgTop.url}
              alt={networking.imgTop.alternativeText}
            />
          </S.ImageWrapperTop>
          <Heading size="h3" fontColor="title" level={2}>
            {networking.title}
          </Heading>
          <S.Description>{networking.subtitle}</S.Description>
          <S.ImageWrapperBottom>
            <img
              src={networking.imgBottom.url}
              alt={networking.imgBottom.alternativeText}
            />
          </S.ImageWrapperBottom>
        </S.Networking>
        <S.Cases>
          <Container className="container">
            <S.ImageWrapper>
              <img src={cases.img.url} alt={cases.img.alternativeText} />
            </S.ImageWrapper>
            <S.Content>
              <Heading size="h3" fontColor="title" level={2}>
                {cases.title}
              </Heading>
              <S.Description>{cases.subtitle}</S.Description>
            </S.Content>
          </Container>
          <S.CaseShape>
            <svg
              xmlns="http://www.w3.org/2000/svg"
              fill="none"
              viewBox="0 0 498 952"
            >
              <path
                fill="currentColor"
                fillOpacity=".7"
                d="M238.251 208.755C277.038 21.852 501.582-10.945 497.957 2.747v936.265c-75.691 25.864-229.521 30.58-239.311-157.461-12.237-235.052-149.568-44.5-240.67-247.603-91.1-203.103 192.276-190.276 220.275-325.193Z"
              />
            </svg>
          </S.CaseShape>
        </S.Cases>
        <S.Section style={{ marginBottom: 0 }}>
          <Container>
            <Cta
              color="dark"
              typeImage="default"
              title={cta.title}
              link={cta.link}
            />
          </Container>
        </S.Section>
      </S.Wrapper>
      <Footer />
    </>
  );
}
