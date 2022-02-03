import theme from 'styles/theme';
import * as S from './styles';

export type HeadingProps = {
  size?: keyof typeof theme.font.sizes;
  weight?: keyof typeof theme.font.weight;
  lineHeight?: number;
  level?: 1 | 2 | 3 | 4 | 5 | 6;
  fontColor?: keyof typeof theme.colors;
  marginY?: keyof typeof theme.spacings;
  marginX?: keyof typeof theme.spacings;
  children: string;
};

const Heading = ({
  fontColor = 'title',
  level = 1,
  size = 'h1',
  weight = 'semiBold',
  lineHeight = 1,
  marginY = 'none',
  marginX = 'none',
  children,
}: HeadingProps) => {
  return (
    <S.Heading
      fontColor={fontColor}
      level={level}
      size={size}
      weight={weight}
      lineHeight={lineHeight}
      marginY={marginY}
      marginX={marginX}
    >
      {children}
    </S.Heading>
  );
};
export default Heading;
