/* tslint:disable */
/* eslint-disable */
// @generated
// This file was automatically generated and should not be edited.

// ====================================================
// GraphQL query operation: QueryBePart
// ====================================================

export interface QueryBePart_bePart_heroSection_img {
  __typename: "UploadFile";
  url: string;
  alternativeText: string | null;
}

export interface QueryBePart_bePart_heroSection {
  __typename: "ComponentBePartHero";
  title: string;
  subtitle: string;
  img: QueryBePart_bePart_heroSection_img | null;
}

export interface QueryBePart_bePart_learnSection_images {
  __typename: "UploadFile";
  url: string;
  alternativeText: string | null;
}

export interface QueryBePart_bePart_learnSection {
  __typename: "ComponentBePartLearn";
  title: string;
  images: QueryBePart_bePart_learnSection_images[];
}

export interface QueryBePart_bePart_checklistSection_img {
  __typename: "UploadFile";
  url: string;
  alternativeText: string | null;
}

export interface QueryBePart_bePart_checklistSection {
  __typename: "ComponentBePartHero";
  title: string;
  subtitle: string;
  img: QueryBePart_bePart_checklistSection_img | null;
}

export interface QueryBePart_bePart_networkingSection_imgTop {
  __typename: "UploadFile";
  alternativeText: string | null;
  url: string;
}

export interface QueryBePart_bePart_networkingSection_imgBottom {
  __typename: "UploadFile";
  alternativeText: string | null;
  url: string;
}

export interface QueryBePart_bePart_networkingSection {
  __typename: "ComponentBePartNetworking";
  imgTop: QueryBePart_bePart_networkingSection_imgTop | null;
  title: string;
  subtitle: string;
  imgBottom: QueryBePart_bePart_networkingSection_imgBottom | null;
}

export interface QueryBePart_bePart_casesAlt_img {
  __typename: "UploadFile";
  url: string;
  alternativeText: string | null;
}

export interface QueryBePart_bePart_casesAlt {
  __typename: "ComponentBePartHero";
  title: string;
  subtitle: string;
  img: QueryBePart_bePart_casesAlt_img | null;
}

export interface QueryBePart_bePart_cta_btn {
  __typename: "ComponentButtonBtn";
  text: string;
  url: string;
}

export interface QueryBePart_bePart_cta {
  __typename: "ComponentHomePageCta";
  title: string;
  btn: QueryBePart_bePart_cta_btn | null;
}

export interface QueryBePart_bePart {
  __typename: "BePart";
  heroSection: QueryBePart_bePart_heroSection | null;
  learnSection: QueryBePart_bePart_learnSection | null;
  checklistSection: QueryBePart_bePart_checklistSection | null;
  networkingSection: QueryBePart_bePart_networkingSection | null;
  casesAlt: QueryBePart_bePart_casesAlt | null;
  cta: QueryBePart_bePart_cta | null;
}

export interface QueryBePart {
  bePart: QueryBePart_bePart | null;
}
