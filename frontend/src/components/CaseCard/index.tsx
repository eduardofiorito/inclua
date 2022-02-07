import Heading from 'components/Heading';
import * as S from './styles';

export type CaseCardProps = {
  imgUrl: string;
  alternativeText: string;
  type: string;
  title: string;
  excerpt: string;
  tags: string[];
  linkUrl: string;
};

const CaseCard = ({
  imgUrl,
  alternativeText,
  type,
  title,
  excerpt,
  tags,
  linkUrl,
}: CaseCardProps) => {
  return (
    <S.CardLink href={linkUrl}>
      <S.Card>
        <img src={imgUrl} alt={alternativeText} />
        <S.Content>
          <Heading
            level={3}
            size="caption"
            textTransform="uppercase"
            fontColor="subtitle"
            marginBottom="xsmall"
          >
            {type}
          </Heading>
          <Heading level={4} size="h5" lineHeight={2} marginBottom="xsmall">
            {title}
          </Heading>
          <S.Excerpt>{excerpt}</S.Excerpt>
          {tags.map((tag, i) => (
            <S.Tags key={i}>{tag}</S.Tags>
          ))}
        </S.Content>
      </S.Card>
    </S.CardLink>
  );
};
export default CaseCard;
