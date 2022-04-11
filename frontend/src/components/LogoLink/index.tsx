import Logo from 'components/Logo';
import * as S from './styles';

export type LogoLinkProps = {
  url: string;
  alternativeText: string;
  width: 'normal' | 'small';
};

const LogoLink = ({ url, alternativeText, width }: LogoLinkProps) => {
  return (
    <S.LogoLink href={url} draggable="false">
      <Logo alternativeText={alternativeText} width={width} />
    </S.LogoLink>
  );
};
export default LogoLink;
