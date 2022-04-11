import theme from 'styles/theme';
import * as S from './styles';

export type HeadingProps = {
  size?: keyof typeof theme.font.sizes;
  weight?: keyof typeof theme.font.weight;
  lineHeight?: 'normal' | number;
  level?: 1 | 2 | 3 | 4 | 5 | 6;
  fontColor?: keyof typeof theme.colors;
  marginTop?: keyof typeof theme.spacings;
  marginRight?: keyof typeof theme.spacings;
  marginBottom?: keyof typeof theme.spacings;
  marginLeft?: keyof typeof theme.spacings;
  textTransform?: 'uppercase' | 'lowercase' | 'capitalize' | 'none';
  children: string;
};

const Heading = ({
  fontColor,
  level = 1,
  size = 'h1',
  weight = 'semiBold',
  lineHeight,
  marginTop = 'none',
  marginRight = 'none',
  marginBottom = 'none',
  marginLeft = 'none',
  textTransform = 'none',
  children,
}: HeadingProps) => {
  return (
    <S.Heading
      fontColor={fontColor}
      level={level}
      size={size}
      weight={weight}
      lineHeight={lineHeight}
      marginTop={marginTop}
      marginRight={marginRight}
      marginBottom={marginBottom}
      marginLeft={marginLeft}
      textTransform={textTransform}
    >
      {children}
    </S.Heading>
  );
};
export default Heading;
