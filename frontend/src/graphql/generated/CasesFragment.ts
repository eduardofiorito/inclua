/* tslint:disable */
/* eslint-disable */
// @generated
// This file was automatically generated and should not be edited.

// ====================================================
// GraphQL fragment: CasesFragment
// ====================================================

export interface CasesFragment_casesSection_btn {
  __typename: "ComponentButtonBtn";
  text: string;
  url: string;
}

export interface CasesFragment_casesSection_cases_imgCard {
  __typename: "UploadFile";
  alternativeText: string | null;
  url: string;
  width: number | null;
  height: number | null;
}

export interface CasesFragment_casesSection_cases_category {
  __typename: "Category";
  name: string;
}

export interface CasesFragment_casesSection_cases_tags {
  __typename: "Tag";
  name: string;
}

export interface CasesFragment_casesSection_cases {
  __typename: "Case";
  imgCard: CasesFragment_casesSection_cases_imgCard | null;
  category: CasesFragment_casesSection_cases_category | null;
  title: string;
  excerpt: string;
  tags: CasesFragment_casesSection_cases_tags[];
  slug: string;
}

export interface CasesFragment_casesSection {
  __typename: "ComponentHomePageCasesSection";
  title: string;
  btn: CasesFragment_casesSection_btn | null;
  cases: CasesFragment_casesSection_cases[];
}

export interface CasesFragment {
  __typename: "HomePage";
  casesSection: CasesFragment_casesSection | null;
}
