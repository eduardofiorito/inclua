import Button from 'components/Button';
import Heading from 'components/Heading';
import * as S from './styles';

export type CtaProps = {
  title: string;
  link: {
    url: string;
    text: string;
  };
  color: 'light' | 'dark';
  typeImage: 'default' | 'design' | 'dev' | 'tester';
};

const Cta = ({ title, link, color, typeImage }: CtaProps) => {
  const image = {
    default: () => <img className="default" src="/images/default.svg" alt="" />,
    design: () => <img src="/images/designer.svg" alt="" />,
    dev: () => <img src="/images/dev.svg" alt="" />,
    tester: () => <img src="/images/tester.svg" alt="" />,
  };

  return (
    <S.Wrapper color={color}>
      <S.Content>
        <Heading
          level={2}
          size="h4"
          weight="medium"
          marginBottom="small"
          lineHeight={2}
        >
          {title}
        </Heading>
        <Button
          as="a"
          variation="primary"
          href={link.url}
          buttonDisplay="inline-block"
        >
          {link.text}
        </Button>
      </S.Content>
      <S.WrapperImage>{!!typeImage && image[typeImage]()}</S.WrapperImage>
    </S.Wrapper>
  );
};
export default Cta;
