/* tslint:disable */
/* eslint-disable */
// @generated
// This file was automatically generated and should not be edited.

// ====================================================
// GraphQL query operation: QueryCases
// ====================================================

export interface QueryCases_cases_imgCard {
  __typename: "UploadFile";
  alternativeText: string | null;
  url: string;
}

export interface QueryCases_cases_category {
  __typename: "Category";
  name: string;
}

export interface QueryCases_cases_subcategory {
  __typename: "Subcategoria";
  name: string;
}

export interface QueryCases_cases_tags {
  __typename: "Tag";
  name: string;
}

export interface QueryCases_cases {
  __typename: "Case";
  imgCard: QueryCases_cases_imgCard | null;
  category: QueryCases_cases_category | null;
  subcategory: QueryCases_cases_subcategory | null;
  title: string;
  excerpt: string;
  tags: QueryCases_cases_tags[];
  slug: string;
}

export interface QueryCases_casesConnection_values {
  __typename: "Case";
  id: string;
}

export interface QueryCases_casesConnection {
  __typename: "CaseConnection";
  values: (QueryCases_casesConnection_values | null)[] | null;
}

export interface QueryCases_casesSingle_empty_img {
  __typename: "UploadFile";
  alternativeText: string | null;
  url: string;
}

export interface QueryCases_casesSingle_empty {
  __typename: "ComponentLibraryEmpty";
  text: string;
  img: QueryCases_casesSingle_empty_img | null;
}

export interface QueryCases_casesSingle {
  __typename: "CasesSingle";
  title: string;
  description: string;
  btnShowMore: string;
  empty: QueryCases_casesSingle_empty | null;
}

export interface QueryCases {
  cases: QueryCases_cases[];
  casesConnection: QueryCases_casesConnection | null;
  casesSingle: QueryCases_casesSingle | null;
}

export interface QueryCasesVariables {
  start?: number | null;
  limit: number;
  sort?: string | null;
  where?: any | null;
}
