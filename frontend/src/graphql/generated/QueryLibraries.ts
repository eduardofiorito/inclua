/* tslint:disable */
/* eslint-disable */
// @generated
// This file was automatically generated and should not be edited.

import { ENUM_CONTENTLIBRARY_LANGUAGE } from "./globalTypes";

// ====================================================
// GraphQL query operation: QueryLibraries
// ====================================================

export interface QueryLibraries_contentLibraries_img {
  __typename: "UploadFile";
  url: string;
  alternativeText: string | null;
}

export interface QueryLibraries_contentLibraries_categories {
  __typename: "Category";
  name: string;
}

export interface QueryLibraries_contentLibraries_link {
  __typename: "ComponentLibraryLink";
  text: string;
  url: string;
}

export interface QueryLibraries_contentLibraries_content_type {
  __typename: "ContentType";
  name: string;
}

export interface QueryLibraries_contentLibraries {
  __typename: "ContentLibrary";
  title: string;
  img: QueryLibraries_contentLibraries_img | null;
  categories: QueryLibraries_contentLibraries_categories[];
  language: ENUM_CONTENTLIBRARY_LANGUAGE;
  link: QueryLibraries_contentLibraries_link | null;
  content_type: QueryLibraries_contentLibraries_content_type | null;
}

export interface QueryLibraries_contentLibrariesConnection_values {
  __typename: "ContentLibrary";
  id: string;
}

export interface QueryLibraries_contentLibrariesConnection {
  __typename: "ContentLibraryConnection";
  values: (QueryLibraries_contentLibrariesConnection_values | null)[] | null;
}

export interface QueryLibraries_library_empty_img {
  __typename: "UploadFile";
  alternativeText: string | null;
  url: string;
}

export interface QueryLibraries_library_empty {
  __typename: "ComponentLibraryEmpty";
  text: string;
  img: QueryLibraries_library_empty_img | null;
}

export interface QueryLibraries_library {
  __typename: "Library";
  title: string;
  description: string;
  btnShowMore: string;
  empty: QueryLibraries_library_empty | null;
}

export interface QueryLibraries {
  contentLibraries: QueryLibraries_contentLibraries[];
  contentLibrariesConnection: QueryLibraries_contentLibrariesConnection | null;
  library: QueryLibraries_library | null;
}

export interface QueryLibrariesVariables {
  start?: number | null;
  limit: number;
  sort?: string | null;
  where?: any | null;
}
