import { useState } from 'react';
import { Email, Lock, ErrorOutline } from '@styled-icons/material-outlined';
import { FormLink, FormWrapper, FormLoading, FormError } from 'components/Form';
import Button from 'components/Button';
import TextField from 'components/TextField';
import * as S from './styles';

import { FieldErrors, signInValidate } from 'utils/validations';
import Heading from 'components/Heading';

const FormSignIn = () => {
  const [formError, setFormError] = useState('');
  const [fieldError, setFieldError] = useState<FieldErrors>({});
  const [values, setValues] = useState({ email: '', password: '' });
  const [loading, setLoading] = useState(false);

  const handleInput = (field: string, value: string) => {
    setValues((s) => ({ ...s, [field]: value }));
  };

  const handleSubmit = async (event: React.FormEvent) => {
    event.preventDefault();
    setLoading(true);
    const errors = signInValidate(values);

    if (Object.keys(errors).length) {
      setFieldError(errors);
      setLoading(false);
      return;
    }

    setFieldError({});

    setLoading(false);

    // jogar o erro
    setFormError('Autenticado com sucesso!');
  };

  return (
    <FormWrapper>
      {!!formError && (
        <FormError>
          <ErrorOutline /> {formError}
        </FormError>
      )}

      <Heading fontColor="title" marginBottom="large" lineHeight={3} size="h3">
        Entrar
      </Heading>

      <S.Form onSubmit={handleSubmit} autoComplete="on" id="main">
        <TextField
          label="E-mail"
          name="email"
          placeholder="seuemail@exemplo.com"
          type="email"
          error={fieldError?.email}
          onInputChange={(v) => handleInput('email', v)}
          icon={<Email />}
        />

        <TextField
          label="Senha"
          name="password"
          placeholder="Digite sua senha"
          type="password"
          error={fieldError?.password}
          onInputChange={(v) => handleInput('password', v)}
          icon={<Lock />}
        />

        <S.ForgotPassword>
          <S.Link href="/forgot-password">Esqueceu sua senha?</S.Link>
        </S.ForgotPassword>

        <S.ButtonWrapper>
          <Button
            type="submit"
            variation="primary"
            buttonDisplay="block"
            disabled={loading}
          >
            {loading ? <FormLoading /> : <span>Entrar</span>}
          </Button>
        </S.ButtonWrapper>

        <FormLink>
          Ainda não tem uma conta?
          <S.Link href="/sign-up"> Criar conta</S.Link>
        </FormLink>
      </S.Form>
    </FormWrapper>
  );
};

export default FormSignIn;
