/* tslint:disable */
/* eslint-disable */
// @generated
// This file was automatically generated and should not be edited.

// ====================================================
// GraphQL fragment: CtaFragment
// ====================================================

export interface CtaFragment_cta_btn {
  __typename: "ComponentBtnBtnPrimary";
  text: string;
  url: string;
}

export interface CtaFragment_cta {
  __typename: "ComponentAllCta";
  title: string;
  btn: CtaFragment_cta_btn | null;
}

export interface CtaFragment {
  __typename: "HomePage";
  cta: CtaFragment_cta | null;
}
