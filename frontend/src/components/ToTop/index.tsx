import { useEffect, useState } from 'react';
import * as S from './styles';

const ToTop = () => {
  const [isVisible, setIsVisible] = useState(false);

  const toggleVisibility = () => {
    if (window.pageYOffset > 300) {
      setIsVisible(true);
    } else {
      setIsVisible(false);
    }
  };

  const scrollToTop = () => {
    window.scrollTo({
      top: 0,
      behavior: 'smooth',
    });
  };

  useEffect(() => {
    window.addEventListener('scroll', toggleVisibility);

    return () => {
      window.removeEventListener('scroll', toggleVisibility);
    };
  }, []);

  return (
    <S.Button isVisible={isVisible} onClick={scrollToTop}>
      <svg
        width="20"
        height="12"
        viewBox="0 0 20 12"
        fill="none"
        xmlns="http://www.w3.org/2000/svg"
      >
        <path
          fillRule="evenodd"
          clipRule="evenodd"
          d="M19.4713 9.97616C19.4658 9.89549 19.4664 9.87496 19.4527 9.79509C19.4216 9.61548 19.3533 9.44274 19.253 9.29034C19.2023 9.21327 19.1433 9.146 19.0804 9.07879L11.0567 1.07845C10.9973 1.02325 10.9838 1.00785 10.919 0.958843C10.8463 0.903841 10.7679 0.856305 10.6854 0.81717C10.3249 0.64623 9.89715 0.64623 9.53669 0.81717C9.45418 0.856305 9.37574 0.903841 9.30299 0.958843C9.23827 1.00785 9.2247 1.02325 9.16545 1.07845L1.14169 9.07879C1.08633 9.13793 1.07082 9.15146 1.02174 9.216C0.892756 9.38547 0.805698 9.58548 0.769391 9.79509C0.743581 9.94476 0.743581 10.0986 0.769391 10.2482C0.790119 10.3679 0.827296 10.4847 0.879584 10.5943C1.07824 11.0109 1.49033 11.3009 1.95049 11.3481C2.13236 11.3667 2.31758 11.3477 2.49182 11.2926C2.63699 11.2466 2.77399 11.1759 2.89529 11.0841C2.96008 11.0351 2.97358 11.0197 3.03289 10.9645L10.1111 3.90704L17.1892 10.9645L17.2559 11.0267C17.3188 11.0777 17.3334 11.0922 17.4014 11.1366C17.5287 11.2199 17.6702 11.2812 17.8181 11.3172C17.9365 11.3459 18.0587 11.3584 18.1804 11.3543C18.6428 11.3386 19.0737 11.0772 19.3005 10.6752C19.3751 10.5429 19.4268 10.3979 19.4527 10.2482C19.4664 10.1684 19.4658 10.1478 19.4713 10.0672C19.4713 10.0368 19.4713 10.0065 19.4713 9.97616Z"
          fill="currentColor"
        />
      </svg>
    </S.Button>
  );
};
export default ToTop;
