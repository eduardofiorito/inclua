import * as S from './styles';

export type AnchorProps = {
  children?: React.ReactNode;
  variation?: 'primary' | 'secondary' | 'text';
  url?: string;
  anchorDisplay?: 'inline-block' | 'block';
};

const Anchor = ({
  children,
  variation = 'primary',
  url = '/',
  anchorDisplay = 'inline-block',
}: AnchorProps) => {
  return (
    <S.Anchor href={url} variation={variation} anchorDisplay={anchorDisplay}>
      {!!children && <>{children}</>}
    </S.Anchor>
  );
};
export default Anchor;
