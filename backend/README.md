# Back-end

Esta é a API do Inclua, construída com Strapi CMS.

## Requisitos

- Este projeto utiliza [PostgreSQL](https://www.postgresql.org/), então, para que funcione, instale em sua máquina local com [pgAdmin 4](https://www.pgadmin.org/download/pgadmin-4-windows/) ou use o [Docker](https://www.docker.com/).

- A configuração do Banco de Dados pode ser encontrada em [config/database.js](config/database.js).

- O Backup pode ser encontrado em [database/dump.sql](database/dump.sql).

## Desenvolvimento

Após clonar este projeto, instale as dependências:

```bash
yarn
```

E execute usando:

```bash
yarn develop
```

As urls para acessar são:

- `http://localhost:1337/admin` - O Dashboard para criar e preencher dados
- `http://localhost:1337/graphql` - GraphQL Playground para testar suas consultas

Na primeira vez que acessar o Admin, você precisará criar um usuário.
