/* tslint:disable */
/* eslint-disable */
// @generated
// This file was automatically generated and should not be edited.

// ====================================================
// GraphQL query operation: QueryCasesDesign
// ====================================================

export interface QueryCasesDesign_cases_data_attributes_imgCard_data_attributes {
  __typename: "UploadFile";
  alternativeText: string | null;
  url: string;
  width: number | null;
  height: number | null;
}

export interface QueryCasesDesign_cases_data_attributes_imgCard_data {
  __typename: "UploadFileEntity";
  attributes: QueryCasesDesign_cases_data_attributes_imgCard_data_attributes | null;
}

export interface QueryCasesDesign_cases_data_attributes_imgCard {
  __typename: "UploadFileEntityResponse";
  data: QueryCasesDesign_cases_data_attributes_imgCard_data | null;
}

export interface QueryCasesDesign_cases_data_attributes_tags_data_attributes {
  __typename: "Tag";
  name: string;
}

export interface QueryCasesDesign_cases_data_attributes_tags_data {
  __typename: "TagEntity";
  attributes: QueryCasesDesign_cases_data_attributes_tags_data_attributes | null;
}

export interface QueryCasesDesign_cases_data_attributes_tags {
  __typename: "TagRelationResponseCollection";
  data: QueryCasesDesign_cases_data_attributes_tags_data[];
}

export interface QueryCasesDesign_cases_data_attributes_category_data_attributes {
  __typename: "Category";
  name: string;
}

export interface QueryCasesDesign_cases_data_attributes_category_data {
  __typename: "CategoryEntity";
  attributes: QueryCasesDesign_cases_data_attributes_category_data_attributes | null;
}

export interface QueryCasesDesign_cases_data_attributes_category {
  __typename: "CategoryEntityResponse";
  data: QueryCasesDesign_cases_data_attributes_category_data | null;
}

export interface QueryCasesDesign_cases_data_attributes {
  __typename: "Case";
  imgCard: QueryCasesDesign_cases_data_attributes_imgCard;
  title: string;
  excerpt: string;
  slug: string;
  tags: QueryCasesDesign_cases_data_attributes_tags | null;
  category: QueryCasesDesign_cases_data_attributes_category | null;
}

export interface QueryCasesDesign_cases_data {
  __typename: "CaseEntity";
  attributes: QueryCasesDesign_cases_data_attributes | null;
}

export interface QueryCasesDesign_cases {
  __typename: "CaseEntityResponseCollection";
  data: QueryCasesDesign_cases_data[];
}

export interface QueryCasesDesign {
  cases: QueryCasesDesign_cases | null;
}

export interface QueryCasesDesignVariables {
  start: number;
  limit: number;
  type: string;
}
