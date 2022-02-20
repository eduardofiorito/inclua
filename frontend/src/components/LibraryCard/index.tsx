import Heading from 'components/Heading';
import * as S from './styles';

export type LibraryCardProps = {
  type: string;
  title: string;
  img: {
    url: string;
    alternativeText: string;
  };
  link: {
    text: string;
    url: string;
  };
};

const LibraryCard = ({ type, title, img, link }: LibraryCardProps) => {
  return (
    <S.CardLink href={link.url} target="_blank">
      <S.Card>
        <S.ImageWrapper>
          <img src={img.url} alt={img.alternativeText} />
        </S.ImageWrapper>

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
            size="body1"
            lineHeight={1.5}
            marginBottom="xsmall"
            fontColor="title"
          >
            {title}
          </Heading>
          <S.Link>
            {link.text}
            <svg
              width="16"
              height="19"
              viewBox="0 0 16 19"
              fill="none"
              xmlns="http://www.w3.org/2000/svg"
              style={{ marginLeft: '0.5rem' }}
            >
              <path
                d="M13.5 11.625H12.5C12.3674 11.625 12.2402 11.6843 12.1464 11.7898C12.0527 11.8952 12 12.0383 12 12.1875V16.125H2V4.875H6.5C6.63261 4.875 6.75979 4.81574 6.85355 4.71025C6.94732 4.60476 7 4.46168 7 4.3125V3.1875C7 3.03832 6.94732 2.89524 6.85355 2.78975C6.75979 2.68426 6.63261 2.625 6.5 2.625H1.5C1.10218 2.625 0.720644 2.80279 0.43934 3.11926C0.158035 3.43572 0 3.86495 0 4.3125L0 16.6875C0 17.1351 0.158035 17.5643 0.43934 17.8807C0.720644 18.1972 1.10218 18.375 1.5 18.375H12.5C12.8978 18.375 13.2794 18.1972 13.5607 17.8807C13.842 17.5643 14 17.1351 14 16.6875V12.1875C14 12.0383 13.9473 11.8952 13.8536 11.7898C13.7598 11.6843 13.6326 11.625 13.5 11.625ZM15.25 0.375H11.25C10.5822 0.375 10.2484 1.2859 10.7188 1.81641L11.8353 3.07254L4.21875 11.638C4.14883 11.7164 4.09335 11.8095 4.0555 11.9121C4.01764 12.0147 3.99816 12.1246 3.99816 12.2357C3.99816 12.3467 4.01764 12.4567 4.0555 12.5592C4.09335 12.6618 4.14883 12.7549 4.21875 12.8333L4.92719 13.6289C4.99687 13.7076 5.07966 13.77 5.17082 13.8126C5.26199 13.8552 5.35973 13.8771 5.45844 13.8771C5.55715 13.8771 5.65489 13.8552 5.74605 13.8126C5.83721 13.77 5.92001 13.7076 5.98969 13.6289L13.6025 5.06203L14.7188 6.31641C15.1875 6.84375 16 6.47461 16 5.71875V1.21875C16 0.994974 15.921 0.780362 15.7803 0.622129C15.6397 0.463895 15.4489 0.375 15.25 0.375V0.375Z"
                fill="currentColor"
              />
            </svg>
          </S.Link>
        </S.Content>
      </S.Card>
    </S.CardLink>
  );
};
export default LibraryCard;
