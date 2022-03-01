/* tslint:disable */
/* eslint-disable */
// @generated
// This file was automatically generated and should not be edited.

// ====================================================
// GraphQL query operation: QueryNotFound
// ====================================================

export interface QueryNotFound_notFound_img {
  __typename: "UploadFile";
  alternativeText: string | null;
  url: string;
}

export interface QueryNotFound_notFound_btn {
  __typename: "ComponentButtonBtn";
  text: string;
  url: string;
}

export interface QueryNotFound_notFound {
  __typename: "NotFound";
  img: QueryNotFound_notFound_img | null;
  title: string;
  btn: QueryNotFound_notFound_btn | null;
}

export interface QueryNotFound {
  notFound: QueryNotFound_notFound | null;
}
