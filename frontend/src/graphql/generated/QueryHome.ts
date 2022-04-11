/* tslint:disable */
/* eslint-disable */
// @generated
// This file was automatically generated and should not be edited.

import { ENUM_COMPONENTHOMEPAGEGUIDECARD_TYPE } from "./globalTypes";

// ====================================================
// GraphQL query operation: QueryHome
// ====================================================

export interface QueryHome_homePage_heroSection_btn {
  __typename: "ComponentButtonBtn";
  text: string;
  url: string;
}

export interface QueryHome_homePage_heroSection_img {
  __typename: "UploadFile";
  alternativeText: string | null;
  url: string;
  width: number | null;
  height: number | null;
}

export interface QueryHome_homePage_heroSection {
  __typename: "ComponentHomePageHeroSection";
  title: string;
  subtitle: string;
  btn: QueryHome_homePage_heroSection_btn | null;
  img: QueryHome_homePage_heroSection_img | null;
}

export interface QueryHome_homePage_guidesSection_guideCard_img {
  __typename: "UploadFile";
  alternativeText: string | null;
  url: string;
  width: number | null;
  height: number | null;
}

export interface QueryHome_homePage_guidesSection_guideCard {
  __typename: "ComponentHomePageGuideCard";
  badge: string | null;
  img: QueryHome_homePage_guidesSection_guideCard_img | null;
  type: ENUM_COMPONENTHOMEPAGEGUIDECARD_TYPE;
  title: string;
  description: string;
  linkUrl: string;
  linkText: string;
}

export interface QueryHome_homePage_guidesSection {
  __typename: "ComponentHomePageGuidesSection";
  title: string | null;
  guideCard: (QueryHome_homePage_guidesSection_guideCard | null)[] | null;
}

export interface QueryHome_homePage_casesSection_btn {
  __typename: "ComponentButtonBtn";
  text: string;
  url: string;
}

export interface QueryHome_homePage_casesSection_cases_imgCard {
  __typename: "UploadFile";
  alternativeText: string | null;
  url: string;
  width: number | null;
  height: number | null;
}

export interface QueryHome_homePage_casesSection_cases_category {
  __typename: "Category";
  name: string;
}

export interface QueryHome_homePage_casesSection_cases_tags {
  __typename: "Tag";
  name: string;
}

export interface QueryHome_homePage_casesSection_cases {
  __typename: "Case";
  imgCard: QueryHome_homePage_casesSection_cases_imgCard | null;
  category: QueryHome_homePage_casesSection_cases_category | null;
  title: string;
  excerpt: string;
  tags: QueryHome_homePage_casesSection_cases_tags[];
  slug: string;
}

export interface QueryHome_homePage_casesSection {
  __typename: "ComponentHomePageCasesSection";
  title: string;
  btn: QueryHome_homePage_casesSection_btn | null;
  cases: QueryHome_homePage_casesSection_cases[];
}

export interface QueryHome_homePage_librarySection_content_libraries_content_type {
  __typename: "ContentType";
  name: string;
}

export interface QueryHome_homePage_librarySection_content_libraries_img {
  __typename: "UploadFile";
  alternativeText: string | null;
  url: string;
}

export interface QueryHome_homePage_librarySection_content_libraries_link {
  __typename: "ComponentLibraryLink";
  text: string;
  url: string;
}

export interface QueryHome_homePage_librarySection_content_libraries {
  __typename: "ContentLibrary";
  content_type: QueryHome_homePage_librarySection_content_libraries_content_type | null;
  title: string;
  img: QueryHome_homePage_librarySection_content_libraries_img | null;
  link: QueryHome_homePage_librarySection_content_libraries_link | null;
}

export interface QueryHome_homePage_librarySection_btn {
  __typename: "ComponentButtonBtn";
  text: string;
  url: string;
}

export interface QueryHome_homePage_librarySection {
  __typename: "ComponentHomePageLibrarySection";
  title: string;
  content_libraries: QueryHome_homePage_librarySection_content_libraries[];
  btn: QueryHome_homePage_librarySection_btn | null;
}

export interface QueryHome_homePage_cta_btn {
  __typename: "ComponentButtonBtn";
  text: string;
  url: string;
}

export interface QueryHome_homePage_cta {
  __typename: "ComponentHomePageCta";
  title: string;
  btn: QueryHome_homePage_cta_btn | null;
}

export interface QueryHome_homePage {
  __typename: "HomePage";
  heroSection: QueryHome_homePage_heroSection | null;
  guidesSection: QueryHome_homePage_guidesSection | null;
  casesSection: QueryHome_homePage_casesSection | null;
  librarySection: QueryHome_homePage_librarySection | null;
  cta: QueryHome_homePage_cta | null;
}

export interface QueryHome {
  homePage: QueryHome_homePage | null;
}
