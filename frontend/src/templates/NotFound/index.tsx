import Button from 'components/Button';
import Footer from 'components/Footer';
import Heading from 'components/Heading';
import Menu from 'components/Menu';
import Head from 'next/head';
import * as S from './styles';

export type NotFoundTemplateProps = {
  title: string;
  btn: {
    text: string;
    url: string;
  };
  img: {
    alternativeText: string;
    url: string;
  };
};

export default function NotFound({ title, btn, img }: NotFoundTemplateProps) {
  return (
    <>
      <Head>
        <title>404 | Inclua</title>
      </Head>

      <Menu authenticated={false} />
      <S.Wrapper id="main">
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
        <img src={img.url} alt={img.alternativeText} />
        <Heading fontColor="title" size="h4" lineHeight={2}>
          {title}
        </Heading>
        <Button variation="primary" as={'a'} href={btn.url}>
          {btn.text}
        </Button>
      </S.Wrapper>
      <Footer />
    </>
  );
}
