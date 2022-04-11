import { AnchorHTMLAttributes, ButtonHTMLAttributes } from 'react';
import * as S from './styles';

type ButtonTypes =
  | AnchorHTMLAttributes<HTMLAnchorElement>
  | ButtonHTMLAttributes<HTMLButtonElement>;

export type ButtonProps = {
  variation?: 'primary' | 'secondary' | 'text';
  buttonDisplay?: 'inline-block' | 'block';
  as?: React.ElementType;
} & ButtonTypes;

const Button = ({
  children,
  variation = 'primary',
  buttonDisplay = 'inline-block',
  ...props
}: ButtonProps) => {
  return (
    <S.Button variation={variation} buttonDisplay={buttonDisplay} {...props}>
      {!!children && <>{children}</>}
    </S.Button>
  );
};
export default Button;
