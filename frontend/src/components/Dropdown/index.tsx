import { useState } from 'react';
import * as S from './styles';
import { Container } from 'components/Container/';

export type DropdownProps = {
  title: React.ReactNode;
  children: React.ReactNode;
};

const Dropdown = ({ title, children }: DropdownProps) => {
  const [isOpen, setIsOpen] = useState(false);

  const handleLink = (e: React.MouseEvent<HTMLElement>) => {
    e.preventDefault();
    setIsOpen(!isOpen);
  };

  return (
    <>
      <S.Link isOpen={isOpen} onClick={handleLink} href="/">
        {title}
        {!isOpen ? (
          <svg
            width="16"
            height="10"
            viewBox="0 0 16 10"
            fill="none"
            xmlns="http://www.w3.org/2000/svg"
            style={{ marginLeft: '8px' }}
          >
            <path
              d="M1.88 0L8 6.18084L14.12 0L16 1.90283L8 10L0 1.90283L1.88 0Z"
              fill="currentColor"
            />
          </svg>
        ) : (
          <svg
            width="16"
            height="10"
            viewBox="0 0 16 10"
            fill="none"
            xmlns="http://www.w3.org/2000/svg"
            style={{ marginLeft: '8px' }}
          >
            <path
              d="M14.12 10L8 3.81916L1.88 10L-4.76837e-07 8.09717L8 -1.74356e-07L16 8.09717L14.12 10Z"
              fill="currentColor"
            />
          </svg>
        )}
      </S.Link>
      <S.Content aria-hidden={!isOpen}>
        <Container>{children}</Container>
      </S.Content>
      <S.Overlay aria-hidden={!isOpen} onClick={() => setIsOpen(!isOpen)} />
    </>
  );
};
export default Dropdown;
