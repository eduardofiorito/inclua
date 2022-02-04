import { AnchorHTMLAttributes, ButtonHTMLAttributes } from 'react';
import * as S from './styles';

type ButtonTypes =
  | AnchorHTMLAttributes<HTMLAnchorElement>
  | ButtonHTMLAttributes<HTMLButtonElement>;

export type ButtonProps = {
  variation?: 'primary' | 'secondary' | 'text';
  anchorDisplay?: 'inline-block' | 'block';
  as?: React.ElementType;
} & ButtonTypes;

const Button = ({
  children,
  variation = 'primary',
  anchorDisplay = 'inline-block',
  ...props
}: ButtonProps) => {
  return (
    <S.Button variation={variation} anchorDisplay={anchorDisplay} {...props}>
      {!!children && <>{children}</>}
    </S.Button>
  );
};
export default Button;
