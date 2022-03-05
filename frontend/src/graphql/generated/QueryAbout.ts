/* tslint:disable */
/* eslint-disable */
// @generated
// This file was automatically generated and should not be edited.

// ====================================================
// GraphQL query operation: QueryAbout
// ====================================================

export interface QueryAbout_about_cta_btn {
  __typename: "ComponentButtonBtn";
  text: string;
  url: string;
}

export interface QueryAbout_about_cta {
  __typename: "ComponentHomePageCta";
  title: string;
  btn: QueryAbout_about_cta_btn | null;
}

export interface QueryAbout_about {
  __typename: "About";
  title: string;
  subtitle: string;
  content: string;
  cta: QueryAbout_about_cta | null;
}

export interface QueryAbout {
  about: QueryAbout_about | null;
}
