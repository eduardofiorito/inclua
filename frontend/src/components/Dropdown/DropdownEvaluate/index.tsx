import * as S from './styles';

const DropdownEvaluate = () => {
  return (
    <S.Wrapper>
      <S.Column>
        <S.Title>Checklist Geral</S.Title>
        <S.LinkWrapper>
          <S.Link href="/checklists?category=Geral">
            Ver todos
            <svg
              width="18"
              height="18"
              viewBox="0 0 18 18"
              fill="none"
              xmlns="http://www.w3.org/2000/svg"
              className="arrow"
            >
              <path
                d="M7.65316 1.20563L8.54503 0.290588C8.92266 -0.0968628 9.53331 -0.0968628 9.90693 0.290588L17.7168 8.29929C18.0944 8.68674 18.0944 9.31326 17.7168 9.69659L9.90693 17.7094C9.52929 18.0969 8.91865 18.0969 8.54503 17.7094L7.65316 16.7944C7.27151 16.4028 7.27954 15.7639 7.66923 15.3806L12.5102 10.6487H0.964178C0.429863 10.6487 0 10.2077 0 9.65949V8.34051C0 7.79231 0.429863 7.35127 0.964178 7.35127H12.5102L7.66923 2.61942C7.27553 2.23609 7.26749 1.59721 7.65316 1.20563Z"
                fill="#646DC8"
              />
            </svg>
          </S.Link>
        </S.LinkWrapper>
      </S.Column>
      <S.Column>
        <S.Title>Checklist de Design</S.Title>
        <S.LinkWrapper>
          <S.Link href="/checklists?category=Design">
            Ver todos
            <svg
              width="18"
              height="18"
              viewBox="0 0 18 18"
              fill="none"
              xmlns="http://www.w3.org/2000/svg"
              className="arrow"
            >
              <path
                d="M7.65316 1.20563L8.54503 0.290588C8.92266 -0.0968628 9.53331 -0.0968628 9.90693 0.290588L17.7168 8.29929C18.0944 8.68674 18.0944 9.31326 17.7168 9.69659L9.90693 17.7094C9.52929 18.0969 8.91865 18.0969 8.54503 17.7094L7.65316 16.7944C7.27151 16.4028 7.27954 15.7639 7.66923 15.3806L12.5102 10.6487H0.964178C0.429863 10.6487 0 10.2077 0 9.65949V8.34051C0 7.79231 0.429863 7.35127 0.964178 7.35127H12.5102L7.66923 2.61942C7.27553 2.23609 7.26749 1.59721 7.65316 1.20563Z"
                fill="#DE515A"
              />
            </svg>
          </S.Link>
        </S.LinkWrapper>
      </S.Column>
      <S.Column>
        <S.Title>Checklist de Desenvolvimento</S.Title>
        <S.LinkWrapper>
          <S.Link href="/checklists?category=Desenvolvimento">
            Ver todos
            <svg
              width="18"
              height="18"
              viewBox="0 0 18 18"
              fill="none"
              xmlns="http://www.w3.org/2000/svg"
              className="arrow"
            >
              <path
                d="M7.65316 1.20563L8.54503 0.290588C8.92266 -0.0968628 9.53331 -0.0968628 9.90693 0.290588L17.7168 8.29929C18.0944 8.68674 18.0944 9.31326 17.7168 9.69659L9.90693 17.7094C9.52929 18.0969 8.91865 18.0969 8.54503 17.7094L7.65316 16.7944C7.27151 16.4028 7.27954 15.7639 7.66923 15.3806L12.5102 10.6487H0.964178C0.429863 10.6487 0 10.2077 0 9.65949V8.34051C0 7.79231 0.429863 7.35127 0.964178 7.35127H12.5102L7.66923 2.61942C7.27553 2.23609 7.26749 1.59721 7.65316 1.20563Z"
                fill="#EBB129"
              />
            </svg>
          </S.Link>
        </S.LinkWrapper>
      </S.Column>
    </S.Wrapper>
  );
};
export default DropdownEvaluate;
