import Button from 'components/Button';
import { Container } from 'components/Container';
import Footer from 'components/Footer';
import Heading from 'components/Heading';
import { Grid } from 'components/Grid';
import LibraryCard from 'components/LibraryCard';
import Sidebar, { ItemProps } from 'components/Sidebar';
import Menu from 'components/Menu';
import * as S from './styles';

import { KeyboardArrowDown } from '@styled-icons/material-rounded/KeyboardArrowDown';
import ToTop from 'components/ToTop';
import { useQuery } from '@apollo/client';
import {
  QueryLibraries,
  QueryLibrariesVariables,
  QueryLibraries_contentLibraries,
} from 'graphql/generated/QueryLibraries';
import { QUERY_LIBRARIES } from 'graphql/queries/libraries';
import { useRouter } from 'next/router';
import {
  parseQueryStringToFilter,
  parseQueryStringToWhere,
} from 'utils/filter';
import { ParsedUrlQueryInput } from 'querystring';

type LibraryItems = {
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

export type LibraryTemplateProps = {
  filterItems: ItemProps[];
  library: LibraryItems;
};

const LibraryTemplate = ({ filterItems, library }: LibraryTemplateProps) => {
  const { push, query } = useRouter();

  const { data, loading, fetchMore } = useQuery<
    QueryLibraries,
    QueryLibrariesVariables
  >(QUERY_LIBRARIES, {
    notifyOnNetworkStatusChange: true,
    variables: {
      start: 0,
      limit: 9,
      where: parseQueryStringToWhere({ queryString: query, filterItems }),
      sort: query.sort as string | null,
    },
  });

  if (!data) return <p>loading...</p>;

  const { contentLibraries, contentLibrariesConnection } = data;

  const hasMoreContentLibraries =
    contentLibraries.length < (contentLibrariesConnection?.values?.length || 0);

  const handleFilter = (items: ParsedUrlQueryInput) => {
    push({
      pathname: '/library',
      query: items,
    });
    return;
  };

  const handleShowMore = () => {
    fetchMore({
      variables: { limit: 3, start: data?.contentLibraries.length },
    });
  };

  return (
    <>
      <Menu authenticated={false} />
      <S.Wrapper>
        <Container>
          <Heading size="h2" fontColor="title">
            {library.title}
          </Heading>
          <S.Description>{library.description}</S.Description>
          <S.Section>
            <Sidebar
              url="/library"
              items={filterItems}
              onFilter={handleFilter}
              initialValues={parseQueryStringToFilter({
                queryString: query,
                filterItems,
              })}
            />
            <S.Library id="main">
              {data.contentLibraries.length ? (
                <>
                  <Grid>
                    {data?.contentLibraries.map(
                      (libraries: QueryLibraries_contentLibraries, index) => (
                        <LibraryCard
                          key={index}
                          type={libraries.content_type.name}
                          title={libraries.title}
                          img={libraries.img}
                          link={libraries.link}
                        />
                      ),
                    )}
                  </Grid>
                  {hasMoreContentLibraries && (
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
                          {library.btnShowMore}
                          <KeyboardArrowDown size={38} />
                        </Button>
                      )}
                    </S.ShowMore>
                  )}
                </>
              ) : (
                <S.Empty>
                  <img
                    src={library.empty.img.url}
                    alt={library.empty.img.alternativeText}
                  />
                  <Heading
                    fontColor="title"
                    level={2}
                    size="h4"
                    lineHeight={2}
                    marginTop="small"
                  >
                    {library.empty.text}
                  </Heading>
                </S.Empty>
              )}
            </S.Library>
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
export default LibraryTemplate;
