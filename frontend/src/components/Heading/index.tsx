import theme from 'styles/theme';
import * as S from './styles';

export type HeadingProps = {
  size?: keyof typeof theme.font.sizes;
  weight?: keyof typeof theme.font.weight;
  lineHeight?: number;
  level?: 1 | 2 | 3 | 4 | 5 | 6;
  fontColor?: keyof typeof theme.colors;
  marginTop?: keyof typeof theme.spacings;
  marginRight?: keyof typeof theme.spacings;
  marginBottom?: keyof typeof theme.spacings;
  marginLeft?: keyof typeof theme.spacings;
  children: string;
};

const Heading = ({
  level = 1,
  size = 'h1',
  weight = 'semiBold',
  lineHeight = 1,
  marginTop = 'none',
  marginRight = 'none',
  marginBottom = 'none',
  marginLeft = 'none',
  children,
}: HeadingProps) => {
  return (
    <S.Heading
      level={level}
      size={size}
      weight={weight}
      lineHeight={lineHeight}
      marginTop={marginTop}
      marginRight={marginRight}
      marginBottom={marginBottom}
      marginLeft={marginLeft}
    >
      {children}
    </S.Heading>
  );
};
export default Heading;
