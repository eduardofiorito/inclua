/* tslint:disable */
/* eslint-disable */
// @generated
// This file was automatically generated and should not be edited.

// ====================================================
// GraphQL fragment: CasesFragment
// ====================================================

export interface CasesFragment_casesSection_cases_data_attributes_imgCard_data_attributes {
  __typename: "UploadFile";
  alternativeText: string | null;
  url: string;
  width: number | null;
  height: number | null;
}

export interface CasesFragment_casesSection_cases_data_attributes_imgCard_data {
  __typename: "UploadFileEntity";
  attributes: CasesFragment_casesSection_cases_data_attributes_imgCard_data_attributes | null;
}

export interface CasesFragment_casesSection_cases_data_attributes_imgCard {
  __typename: "UploadFileEntityResponse";
  data: CasesFragment_casesSection_cases_data_attributes_imgCard_data | null;
}

export interface CasesFragment_casesSection_cases_data_attributes_category_data_attributes {
  __typename: "Category";
  name: string;
}

export interface CasesFragment_casesSection_cases_data_attributes_category_data {
  __typename: "CategoryEntity";
  attributes: CasesFragment_casesSection_cases_data_attributes_category_data_attributes | null;
}

export interface CasesFragment_casesSection_cases_data_attributes_category {
  __typename: "CategoryEntityResponse";
  data: CasesFragment_casesSection_cases_data_attributes_category_data | null;
}

export interface CasesFragment_casesSection_cases_data_attributes_tags_data_attributes {
  __typename: "Tag";
  name: string;
}

export interface CasesFragment_casesSection_cases_data_attributes_tags_data {
  __typename: "TagEntity";
  attributes: CasesFragment_casesSection_cases_data_attributes_tags_data_attributes | null;
}

export interface CasesFragment_casesSection_cases_data_attributes_tags {
  __typename: "TagRelationResponseCollection";
  data: CasesFragment_casesSection_cases_data_attributes_tags_data[];
}

export interface CasesFragment_casesSection_cases_data_attributes {
  __typename: "Case";
  imgCard: CasesFragment_casesSection_cases_data_attributes_imgCard;
  category: CasesFragment_casesSection_cases_data_attributes_category | null;
  title: string;
  excerpt: string;
  tags: CasesFragment_casesSection_cases_data_attributes_tags | null;
  slug: string;
}

export interface CasesFragment_casesSection_cases_data {
  __typename: "CaseEntity";
  attributes: CasesFragment_casesSection_cases_data_attributes | null;
}

export interface CasesFragment_casesSection_cases {
  __typename: "CaseRelationResponseCollection";
  data: CasesFragment_casesSection_cases_data[];
}

export interface CasesFragment_casesSection {
  __typename: "ComponentHomeCasesSection";
  title: string;
  cases: CasesFragment_casesSection_cases | null;
}

export interface CasesFragment {
  __typename: "HomePage";
  casesSection: CasesFragment_casesSection;
}
