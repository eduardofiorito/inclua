import Button from 'components/Button';
import { Container } from 'components/Container';
import Footer from 'components/Footer';
import Heading from 'components/Heading';
import Sidebar, { ItemProps } from 'components/Sidebar';
import Menu from 'components/Menu';
import * as S from './styles';

import { KeyboardArrowDown } from '@styled-icons/material-rounded/KeyboardArrowDown';
import ToTop from 'components/ToTop';
import { useQuery } from '@apollo/client';
import { useRouter } from 'next/router';
import {
  parseQueryStringToFilter,
  parseQueryStringToWhere,
} from 'utils/filter';
import { ParsedUrlQueryInput } from 'querystring';

import {
  QueryChecklists,
  QueryChecklistsVariables,
  QueryChecklists_checklists,
} from 'graphql/generated/QueryChecklists';
import { QUERY_CHECKLISTS } from 'graphql/queries/checklists';
import Checklist from 'components/Checklist';
import Head from 'next/head';

type ChecklistsItems = {
  title: string;
  description: string;
  btnShowMore: string;
  empty: {
    text: string;
    img: {
      alternativeText: string;
      url: string;
    };
  };
};

export type ChecklistsTemplateProps = {
  filterItems: ItemProps[];
  checklistsSingle: ChecklistsItems;
};

const ChecklistTemplate = ({
  filterItems,
  checklistsSingle,
}: ChecklistsTemplateProps) => {
  const { push, query } = useRouter();

  const { data, loading, fetchMore } = useQuery<
    QueryChecklists,
    QueryChecklistsVariables
  >(QUERY_CHECKLISTS, {
    notifyOnNetworkStatusChange: true,
    variables: {
      start: 0,
      limit: 4,
      where: parseQueryStringToWhere({ queryString: query, filterItems }),
      sort: query.sort as string | null,
    },
  });

  if (!data) return <p>loading...</p>;

  const { checklists, checklistsConnection } = data;

  const hasMoreChecklists =
    checklists.length < (checklistsConnection?.values?.length || 0);

  const handleFilter = (items: ParsedUrlQueryInput) => {
    push({
      pathname: '/checklists',
      query: items,
    });
    return;
  };

  const handleShowMore = () => {
    fetchMore({
      variables: { limit: 1, start: data?.checklists.length },
    });
  };

  return (
    <>
      <Head>
        <title>Checklists | Inclua</title>
      </Head>

      <Menu authenticated={false} />
      <S.Wrapper>
        <Container>
          <Heading size="h2" fontColor="title">
            {checklistsSingle.title}
          </Heading>
          <S.Description>{checklistsSingle.description}</S.Description>
          <S.Section>
            <Sidebar
              url="/checklists"
              items={filterItems}
              onFilter={handleFilter}
              initialValues={parseQueryStringToFilter({
                queryString: query,
                filterItems,
              })}
            />
            <S.Checklists id="main">
              {data.checklists.length ? (
                <>
                  <>
                    {data?.checklists.map(
                      (checklist: QueryChecklists_checklists, index) => (
                        <Checklist
                          key={index}
                          title={checklist.title}
                          description={checklist.description}
                          accordions={checklist.accordion}
                        />
                      ),
                    )}
                  </>
                  {hasMoreChecklists && (
                    <S.ShowMore>
                      {loading ? (
                        <svg
                          width="120"
                          height="30"
                          xmlns="http://www.w3.org/2000/svg"
                          fill="currentColor"
                        >
                          <circle cx="15" cy="15" r="15">
                            <animate
                              attributeName="r"
                              from="15"
                              to="15"
                              begin="0s"
                              dur="0.8s"
                              values="15;9;15"
                              calcMode="linear"
                              repeatCount="indefinite"
                            />
                            <animate
                              attributeName="fill-opacity"
                              from="1"
                              to="1"
                              begin="0s"
                              dur="0.8s"
                              values="1;.5;1"
                              calcMode="linear"
                              repeatCount="indefinite"
                            />
                          </circle>
                          <circle cx="60" cy="15" r="9" fillOpacity=".3">
                            <animate
                              attributeName="r"
                              from="9"
                              to="9"
                              begin="0s"
                              dur="0.8s"
                              values="9;15;9"
                              calcMode="linear"
                              repeatCount="indefinite"
                            />
                            <animate
                              attributeName="fill-opacity"
                              from=".5"
                              to=".5"
                              begin="0s"
                              dur="0.8s"
                              values=".5;1;.5"
                              calcMode="linear"
                              repeatCount="indefinite"
                            />
                          </circle>
                          <circle cx="105" cy="15" r="15">
                            <animate
                              attributeName="r"
                              from="15"
                              to="15"
                              begin="0s"
                              dur="0.8s"
                              values="15;9;15"
                              calcMode="linear"
                              repeatCount="indefinite"
                            />
                            <animate
                              attributeName="fill-opacity"
                              from="1"
                              to="1"
                              begin="0s"
                              dur="0.8s"
                              values="1;.5;1"
                              calcMode="linear"
                              repeatCount="indefinite"
                            />
                          </circle>
                        </svg>
                      ) : (
                        <Button
                          variation="secondary"
                          buttonDisplay="block"
                          onClick={handleShowMore}
                        >
                          {checklistsSingle.btnShowMore}
                          <KeyboardArrowDown size={38} />
                        </Button>
                      )}
                    </S.ShowMore>
                  )}
                </>
              ) : (
                <S.Empty>
                  <img
                    src={checklistsSingle.empty.img.url}
                    alt={checklistsSingle.empty.img.alternativeText}
                  />
                  <Heading
                    fontColor="title"
                    level={2}
                    size="h4"
                    lineHeight={2}
                    marginTop="small"
                  >
                    {checklistsSingle.empty.text}
                  </Heading>
                </S.Empty>
              )}
            </S.Checklists>
          </S.Section>
        </Container>
        <S.Shape>
          <svg
            width="696"
            height="386"
            viewBox="0 0 696 386"
            fill="none"
            xmlns="http://www.w3.org/2000/svg"
          >
            <path
              fillRule="evenodd"
              clipRule="evenodd"
              d="M696 386C561.974 379.778 396.089 330.013 387.734 155.156C381.934 33.7938 280.105 48.4677 181.875 62.6229C97.7517 74.7453 16.2684 86.4873 0 12.0816V0H696V386Z"
              fill="currentColor"
              fillOpacity="0.7"
            />
          </svg>
        </S.Shape>
      </S.Wrapper>
      <Footer />
      <ToTop />
    </>
  );
};
export default ChecklistTemplate;
