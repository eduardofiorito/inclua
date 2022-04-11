import Heading from 'components/Heading';
import * as S from './styles';

export type CaseCardProps = {
  img: {
    url: string;
    alternativeText: string;
  };
  type?: string;
  title: string;
  excerpt: string;
  tags?: string[];
  linkUrl: string;
};

const CaseCard = ({
  img,
  type,
  title,
  excerpt,
  tags,
  linkUrl,
}: CaseCardProps) => {
  return (
    <S.CardLink href={linkUrl} title={title}>
      <S.Card>
        <img src={img.url} alt={img.alternativeText} />

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
          <Heading
            level={4}
            size="h6"
            lineHeight={1.5}
            marginBottom="xsmall"
            fontColor="title"
          >
            {title}
          </Heading>
          <S.Excerpt>{excerpt}</S.Excerpt>
          <S.TagsWrapper>
            {tags ? tags.map((tag, i) => <S.Tags key={i}>{tag}</S.Tags>) : null}
          </S.TagsWrapper>
        </S.Content>
      </S.Card>
    </S.CardLink>
  );
};
export default CaseCard;
