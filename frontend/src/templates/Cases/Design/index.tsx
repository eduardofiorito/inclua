import * as S from './styles';
import { Container } from 'components/Container';
import CaseCard from 'components/CaseCard';

export type CaseDesignTemplateProps = {
  casesDesign: ItemsDesignProps[];
};

export type ItemsDesignProps = {
  imgCard: {
    url: string;
    alternativeText: string;
  };
  title: string;
  excerpt: string;
  slug: string;
  type: string;
  tags: string[];
};

const CaseDesignTemplate = ({ casesDesign }: CaseDesignTemplateProps) => {
  return (
    <Container>
      <S.Wrapper>
        {casesDesign.map((caseDesign, index) => (
          <CaseCard
            key={index}
            img={caseDesign.imgCard}
            title={caseDesign.title}
            excerpt={caseDesign.excerpt}
            linkUrl={caseDesign.slug}
            tags={caseDesign.tags}
          />
        ))}
      </S.Wrapper>
    </Container>
  );
};
export default CaseDesignTemplate;
