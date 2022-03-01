/* tslint:disable */
/* eslint-disable */
// @generated
// This file was automatically generated and should not be edited.

// ====================================================
// GraphQL query operation: QueryCaseBySlug
// ====================================================

export interface QueryCaseBySlug_cases_imgCard {
  __typename: "UploadFile";
  alternativeText: string | null;
  url: string;
}

export interface QueryCaseBySlug_cases_audioDescription {
  __typename: "UploadFile";
  url: string;
}

export interface QueryCaseBySlug_cases_author_avatar {
  __typename: "UploadFile";
  url: string;
  alternativeText: string | null;
}

export interface QueryCaseBySlug_cases_author {
  __typename: "Author";
  name: string;
  role: string;
  avatar: QueryCaseBySlug_cases_author_avatar | null;
}

export interface QueryCaseBySlug_cases_tags {
  __typename: "Tag";
  name: string;
  slug: string;
}

export interface QueryCaseBySlug_cases_category {
  __typename: "Category";
  name: string;
  slug: string;
}

export interface QueryCaseBySlug_cases_subcategory {
  __typename: "Subcategoria";
  name: string;
}

export interface QueryCaseBySlug_cases_content_libraries_content_type {
  __typename: "ContentType";
  name: string;
}

export interface QueryCaseBySlug_cases_content_libraries_img {
  __typename: "UploadFile";
  alternativeText: string | null;
  url: string;
}

export interface QueryCaseBySlug_cases_content_libraries_link {
  __typename: "ComponentLibraryLink";
  text: string;
  url: string;
}

export interface QueryCaseBySlug_cases_content_libraries {
  __typename: "ContentLibrary";
  content_type: QueryCaseBySlug_cases_content_libraries_content_type | null;
  title: string;
  img: QueryCaseBySlug_cases_content_libraries_img | null;
  link: QueryCaseBySlug_cases_content_libraries_link | null;
}

export interface QueryCaseBySlug_cases {
  __typename: "Case";
  title: string;
  excerpt: string;
  slug: string;
  content: string;
  imgCard: QueryCaseBySlug_cases_imgCard | null;
  readingTime: string;
  audioDescription: QueryCaseBySlug_cases_audioDescription | null;
  author: QueryCaseBySlug_cases_author | null;
  tags: QueryCaseBySlug_cases_tags[];
  category: QueryCaseBySlug_cases_category | null;
  subcategory: QueryCaseBySlug_cases_subcategory | null;
  content_libraries: QueryCaseBySlug_cases_content_libraries[];
}

export interface QueryCaseBySlug {
  cases: QueryCaseBySlug_cases[];
}

export interface QueryCaseBySlugVariables {
  slug: string;
}
