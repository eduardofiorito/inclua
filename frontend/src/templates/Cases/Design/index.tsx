import * as S from './styles';
import { Container } from 'components/Container';
import CaseCard from 'components/CaseCard';

export type DesignCasesTemplateProps = {
  designCases: DesignItemsProps[];
};

export type DesignItemsProps = {
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

const DesignCasesTemplate = ({ designCases }: DesignCasesTemplateProps) => {
  return (
    <Container>
      <S.Wrapper>
        {designCases.map((caseDesign, index) => (
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
export default DesignCasesTemplate;
