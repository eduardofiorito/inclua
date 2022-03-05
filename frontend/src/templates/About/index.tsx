import { Container } from 'components/Container';
import Cta from 'components/Cta';
import Footer from 'components/Footer';
import Heading from 'components/Heading';
import Menu from 'components/Menu';
import * as S from '../About/styles';

export type AboutTemplateProps = {
  title: string;
  subtitle: string;
  content: string;
  cta: {
    title: string;
    link: {
      text: string;
      url: string;
    };
  };
};

export default function About({
  title,
  subtitle,
  content,
  cta,
}: AboutTemplateProps) {
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
          <S.Hero>
            <Heading size="h2" fontColor="title">
              {title}
            </Heading>
            <S.Description>{subtitle}</S.Description>
          </S.Hero>
          <S.Content dangerouslySetInnerHTML={{ __html: content }} />
          <Cta
            color="dark"
            typeImage="default"
            title={cta.title}
            link={cta.link}
          />
        </Container>
      </S.Wrapper>
      <Footer />
    </>
  );
}
