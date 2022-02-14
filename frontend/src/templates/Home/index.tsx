import * as S from './styles';
import { Container } from 'components/Container';
import Menu from 'components/Menu';
import ToTop from 'components/ToTop';
import Heading from 'components/Heading';
import Button from 'components/Button';
import CaseCard from 'components/CaseCard';
import Footer from 'components/Footer';
import LibraryCard from 'components/LibraryCard';
import Cta from 'components/Cta';

export type GuideCardProps = {
  badge: string;
  img: {
    alternativeText: string;
    url: string;
  };
  title: string;
  type: string;
  description: string;
  linkUrl: string;
  linkText: string;
};

export type CasesCardProps = {
  img: {
    alternativeText: string;
    url: string;
  };
  category: {
    name: string;
  };
  title: string;
  excerpt: string;
  tags: string[];
  slug: string;
};

export type LibraryCardProps = {
  typeContent: string;
  title: string;
  img: {
    alternativeText: string;
    url: string;
  };
  link: {
    label: string;
    url: string;
  };
};

export type HomeProps = {
  hero: {
    title: string;
    subtitle: string;
    btnPrimary: {
      text: string;
      url: string;
    };
    img: {
      alternativeText: string;
      url: string;
    };
  };
  guides: {
    title: string;
    cards: GuideCardProps[];
  };
  cases: {
    title: string;
    cards: CasesCardProps[];
  };
  library: {
    title: string;
    content_libraries: LibraryCardProps[];
    btn: {
      text: string;
      url: string;
    };
  };
  cta: {
    title: string;
    link: {
      text: string;
      url: string;
    };
  };
};

const Home = ({ hero, guides, cases, library, cta }: HomeProps) => {
  return (
    <>
      <Menu authenticated={false} />

      <S.Hero>
        <Container className="container">
          <S.Content>
            <Heading
              size="h2"
              lineHeight={2.75}
              fontColor="title"
              marginBottom="xsmall"
            >
              {hero.title}
            </Heading>
            <S.Subtitle>{hero.subtitle}</S.Subtitle>
            <Button variation="primary" as={'a'} href={hero.btnPrimary.url}>
              {hero.btnPrimary.text}
            </Button>
          </S.Content>
          <S.WrapperImage>
            <img
              src={`http://localhost:1337${hero.img.url}`}
              alt={hero.img.alternativeText}
              draggable="false"
            />
          </S.WrapperImage>
        </Container>
        <S.HeroShape>
          <svg
            xmlns="http://www.w3.org/2000/svg"
            fill="none"
            viewBox="0 0 2211 1179"
          >
            <path
              fill="currentColor"
              fillOpacity=".7"
              d="M202 314C20.5 263.294 0 60.318 0 0h2211c-1.08 194.242-2.58 646.286 0 1123.5-570.79 106.85-1036.74 116.52-1151.19-520.322C945.348-33.662 393.5 367.5 202 314Z"
            />
          </svg>
        </S.HeroShape>
      </S.Hero>

      <S.Guides>
        <Container>
          <Heading size="h3" lineHeight={2.75} fontColor="title" level={2}>
            {guides.title}
          </Heading>
          <S.GuidesWrapper>
            {guides.cards.map((card, index) => (
              <S.CardLink key={index} href={card.linkUrl}>
                <S.Guide>
                  <S.BadgeWrapper visible={!!card.badge}>
                    <S.Badge>{card.badge}</S.Badge>
                  </S.BadgeWrapper>
                  <img
                    src={`http://localhost:1337${card.img.url}`}
                    alt={card.img.alternativeText}
                  />
                  <Heading
                    level={3}
                    size="caption"
                    lineHeight={1}
                    fontColor="subtitle"
                    marginTop="xsmall"
                    marginBottom="xsmall"
                    textTransform="uppercase"
                  >
                    {card.title}
                  </Heading>
                  <Heading
                    size="h5"
                    level={4}
                    lineHeight={2}
                    fontColor="title"
                    marginBottom="xsmall"
                  >
                    {card.description}
                  </Heading>
                  <S.Link type={card.type}>
                    {card.linkText}
                    <svg
                      width="18"
                      height="18"
                      viewBox="0 0 18 18"
                      fill="none"
                      xmlns="http://www.w3.org/2000/svg"
                      style={{ marginLeft: '.5rem' }}
                    >
                      <path
                        d="M7.65316 1.20563L8.54503 0.290588C8.92266 -0.0968628 9.53331 -0.0968628 9.90693 0.290588L17.7168 8.29929C18.0944 8.68674 18.0944 9.31326 17.7168 9.69659L9.90693 17.7094C9.52929 18.0969 8.91865 18.0969 8.54503 17.7094L7.65316 16.7944C7.27151 16.4028 7.27954 15.7639 7.66923 15.3806L12.5102 10.6487H0.964178C0.429863 10.6487 0 10.2077 0 9.65949V8.34051C0 7.79231 0.429863 7.35127 0.964178 7.35127H12.5102L7.66923 2.61942C7.27553 2.23609 7.26749 1.59721 7.65316 1.20563Z"
                        fill="currentColor"
                      />
                    </svg>
                  </S.Link>
                </S.Guide>
              </S.CardLink>
            ))}
          </S.GuidesWrapper>
        </Container>
        <S.GuideShape>
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
        </S.GuideShape>
      </S.Guides>

      <S.Cases>
        <Container>
          <Heading size="h3" lineHeight={2.75} fontColor="title" level={2}>
            {cases.title}
          </Heading>
          <S.CasesWrapper>
            {cases.cards.map((card, index) => (
              <CaseCard
                key={index}
                img={card.img}
                type={card.category.name}
                title={card.title}
                excerpt={card.excerpt}
                linkUrl={`cases/${card.category.name}/${card.slug}`}
                tags={card.tags}
              />
            ))}
          </S.CasesWrapper>
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

      <S.Library>
        <Container>
          <Heading size="h3" lineHeight={2.75} fontColor="title" level={2}>
            {library.title}
          </Heading>
          <S.LibraryWrapper>
            {library.content_libraries.map((card, index) => (
              <LibraryCard
                key={index}
                type={card.typeContent}
                title={card.title}
                img={card.img}
                link={card.link}
              />
            ))}
          </S.LibraryWrapper>

          <S.ButtonWrapper>
            <Button variation="secondary" as="a" href={library.btn.url}>
              {library.btn.text}
            </Button>
          </S.ButtonWrapper>
        </Container>
      </S.Library>

      <S.Cta>
        <Container>
          <Cta
            title={cta.title}
            link={cta.link}
            color="dark"
            typeImage="default"
          />
        </Container>
      </S.Cta>

      <Footer />
      <ToTop />
    </>
  );
};
export default Home;
