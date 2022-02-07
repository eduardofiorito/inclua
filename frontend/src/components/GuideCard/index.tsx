import Heading from 'components/Heading';
import * as S from './styles';

export type GuideCardProps = {
  type: string;
  title: string;
  img: {
    url: string;
    alternativeText: string;
  };
  linkUrl: string;
  readingTime: string;
};

const GuideCard = ({
  type,
  title,
  img,
  linkUrl,
  readingTime,
}: GuideCardProps) => {
  return (
    <S.CardLink href={linkUrl}>
      <S.Card>
        <S.ImageWrapper>
          <img src={img.url} alt={img.alternativeText} />
        </S.ImageWrapper>

        <Heading
          level={3}
          size="caption"
          textTransform="uppercase"
          fontColor="subtitle"
          marginBottom="xsmall"
        >
          {type}
        </Heading>
        <Heading
          level={4}
          size="h6"
          lineHeight={2}
          marginBottom="xsmall"
          fontColor="title"
        >
          {title}
        </Heading>
        <S.ReadingTime>{readingTime}</S.ReadingTime>
      </S.Card>
    </S.CardLink>
  );
};
export default GuideCard;
