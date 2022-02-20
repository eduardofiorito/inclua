/* tslint:disable */
/* eslint-disable */
// @generated
// This file was automatically generated and should not be edited.

// ====================================================
// GraphQL query operation: QueryCasesDesign
// ====================================================

export interface QueryCasesDesign_cases_imgCard {
  __typename: "UploadFile";
  alternativeText: string | null;
  url: string;
  width: number | null;
  height: number | null;
}

export interface QueryCasesDesign_cases_tags {
  __typename: "Tag";
  name: string;
}

export interface QueryCasesDesign_cases_category {
  __typename: "Category";
  name: string;
}

export interface QueryCasesDesign_cases {
  __typename: "Case";
  imgCard: QueryCasesDesign_cases_imgCard | null;
  title: string;
  excerpt: string;
  slug: string;
  tags: QueryCasesDesign_cases_tags[];
  category: QueryCasesDesign_cases_category | null;
}

export interface QueryCasesDesign {
  cases: QueryCasesDesign_cases[];
}

export interface QueryCasesDesignVariables {
  start: number;
  limit: number;
  type: string;
}
