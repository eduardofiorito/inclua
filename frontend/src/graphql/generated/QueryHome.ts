/* tslint:disable */
/* eslint-disable */
// @generated
// This file was automatically generated and should not be edited.

import { ENUM_COMPONENTHOMEGUIDECARD_TYPE, ENUM_CONTENTLIBRARY_TYPECONTENT } from "./globalTypes";

// ====================================================
// GraphQL query operation: QueryHome
// ====================================================

export interface QueryHome_homePage_data_attributes_heroSection_btnPrimary {
  __typename: "ComponentBtnBtnPrimary";
  text: string;
  url: string;
}

export interface QueryHome_homePage_data_attributes_heroSection_img_data_attributes {
  __typename: "UploadFile";
  alternativeText: string | null;
  url: string;
  width: number | null;
  height: number | null;
}

export interface QueryHome_homePage_data_attributes_heroSection_img_data {
  __typename: "UploadFileEntity";
  attributes: QueryHome_homePage_data_attributes_heroSection_img_data_attributes | null;
}

export interface QueryHome_homePage_data_attributes_heroSection_img {
  __typename: "UploadFileEntityResponse";
  data: QueryHome_homePage_data_attributes_heroSection_img_data | null;
}

export interface QueryHome_homePage_data_attributes_heroSection {
  __typename: "ComponentHomeHeroSection";
  title: string;
  subtitle: string;
  btnPrimary: QueryHome_homePage_data_attributes_heroSection_btnPrimary;
  img: QueryHome_homePage_data_attributes_heroSection_img;
}

export interface QueryHome_homePage_data_attributes_guidesSection_guideCard_img_data_attributes {
  __typename: "UploadFile";
  alternativeText: string | null;
  url: string;
  width: number | null;
  height: number | null;
}

export interface QueryHome_homePage_data_attributes_guidesSection_guideCard_img_data {
  __typename: "UploadFileEntity";
  attributes: QueryHome_homePage_data_attributes_guidesSection_guideCard_img_data_attributes | null;
}

export interface QueryHome_homePage_data_attributes_guidesSection_guideCard_img {
  __typename: "UploadFileEntityResponse";
  data: QueryHome_homePage_data_attributes_guidesSection_guideCard_img_data | null;
}

export interface QueryHome_homePage_data_attributes_guidesSection_guideCard {
  __typename: "ComponentHomeGuideCard";
  badge: string | null;
  img: QueryHome_homePage_data_attributes_guidesSection_guideCard_img;
  type: ENUM_COMPONENTHOMEGUIDECARD_TYPE;
  title: string;
  description: string;
  linkUrl: string;
  linkText: string;
}

export interface QueryHome_homePage_data_attributes_guidesSection {
  __typename: "ComponentHomeGuidesSection";
  title: string;
  guideCard: (QueryHome_homePage_data_attributes_guidesSection_guideCard | null)[];
}

export interface QueryHome_homePage_data_attributes_casesSection_cases_data_attributes_imgCard_data_attributes {
  __typename: "UploadFile";
  alternativeText: string | null;
  url: string;
  width: number | null;
  height: number | null;
}

export interface QueryHome_homePage_data_attributes_casesSection_cases_data_attributes_imgCard_data {
  __typename: "UploadFileEntity";
  attributes: QueryHome_homePage_data_attributes_casesSection_cases_data_attributes_imgCard_data_attributes | null;
}

export interface QueryHome_homePage_data_attributes_casesSection_cases_data_attributes_imgCard {
  __typename: "UploadFileEntityResponse";
  data: QueryHome_homePage_data_attributes_casesSection_cases_data_attributes_imgCard_data | null;
}

export interface QueryHome_homePage_data_attributes_casesSection_cases_data_attributes_category_data_attributes {
  __typename: "Category";
  name: string;
}

export interface QueryHome_homePage_data_attributes_casesSection_cases_data_attributes_category_data {
  __typename: "CategoryEntity";
  attributes: QueryHome_homePage_data_attributes_casesSection_cases_data_attributes_category_data_attributes | null;
}

export interface QueryHome_homePage_data_attributes_casesSection_cases_data_attributes_category {
  __typename: "CategoryEntityResponse";
  data: QueryHome_homePage_data_attributes_casesSection_cases_data_attributes_category_data | null;
}

export interface QueryHome_homePage_data_attributes_casesSection_cases_data_attributes_tags_data_attributes {
  __typename: "Tag";
  name: string;
}

export interface QueryHome_homePage_data_attributes_casesSection_cases_data_attributes_tags_data {
  __typename: "TagEntity";
  attributes: QueryHome_homePage_data_attributes_casesSection_cases_data_attributes_tags_data_attributes | null;
}

export interface QueryHome_homePage_data_attributes_casesSection_cases_data_attributes_tags {
  __typename: "TagRelationResponseCollection";
  data: QueryHome_homePage_data_attributes_casesSection_cases_data_attributes_tags_data[];
}

export interface QueryHome_homePage_data_attributes_casesSection_cases_data_attributes {
  __typename: "Case";
  imgCard: QueryHome_homePage_data_attributes_casesSection_cases_data_attributes_imgCard;
  category: QueryHome_homePage_data_attributes_casesSection_cases_data_attributes_category | null;
  title: string;
  excerpt: string;
  tags: QueryHome_homePage_data_attributes_casesSection_cases_data_attributes_tags | null;
  slug: string;
}

export interface QueryHome_homePage_data_attributes_casesSection_cases_data {
  __typename: "CaseEntity";
  attributes: QueryHome_homePage_data_attributes_casesSection_cases_data_attributes | null;
}

export interface QueryHome_homePage_data_attributes_casesSection_cases {
  __typename: "CaseRelationResponseCollection";
  data: QueryHome_homePage_data_attributes_casesSection_cases_data[];
}

export interface QueryHome_homePage_data_attributes_casesSection {
  __typename: "ComponentHomeCasesSection";
  title: string;
  cases: QueryHome_homePage_data_attributes_casesSection_cases | null;
}

export interface QueryHome_homePage_data_attributes_librarySection_content_libraries_data_attributes_img_data_attributes {
  __typename: "UploadFile";
  alternativeText: string | null;
  url: string;
}

export interface QueryHome_homePage_data_attributes_librarySection_content_libraries_data_attributes_img_data {
  __typename: "UploadFileEntity";
  attributes: QueryHome_homePage_data_attributes_librarySection_content_libraries_data_attributes_img_data_attributes | null;
}

export interface QueryHome_homePage_data_attributes_librarySection_content_libraries_data_attributes_img {
  __typename: "UploadFileEntityResponse";
  data: QueryHome_homePage_data_attributes_librarySection_content_libraries_data_attributes_img_data | null;
}

export interface QueryHome_homePage_data_attributes_librarySection_content_libraries_data_attributes_link {
  __typename: "ComponentLibraryLink";
  text: string;
  url: string;
}

export interface QueryHome_homePage_data_attributes_librarySection_content_libraries_data_attributes {
  __typename: "ContentLibrary";
  typeContent: ENUM_CONTENTLIBRARY_TYPECONTENT | null;
  title: string;
  img: QueryHome_homePage_data_attributes_librarySection_content_libraries_data_attributes_img | null;
  link: QueryHome_homePage_data_attributes_librarySection_content_libraries_data_attributes_link | null;
}

export interface QueryHome_homePage_data_attributes_librarySection_content_libraries_data {
  __typename: "ContentLibraryEntity";
  attributes: QueryHome_homePage_data_attributes_librarySection_content_libraries_data_attributes | null;
}

export interface QueryHome_homePage_data_attributes_librarySection_content_libraries {
  __typename: "ContentLibraryRelationResponseCollection";
  data: QueryHome_homePage_data_attributes_librarySection_content_libraries_data[];
}

export interface QueryHome_homePage_data_attributes_librarySection_btn {
  __typename: "ComponentBtnBtnPrimary";
  text: string;
  url: string;
}

export interface QueryHome_homePage_data_attributes_librarySection {
  __typename: "ComponentHomeLibrarySection";
  title: string;
  content_libraries: QueryHome_homePage_data_attributes_librarySection_content_libraries | null;
  btn: QueryHome_homePage_data_attributes_librarySection_btn;
}

export interface QueryHome_homePage_data_attributes_cta_btn {
  __typename: "ComponentBtnBtnPrimary";
  text: string;
  url: string;
}

export interface QueryHome_homePage_data_attributes_cta {
  __typename: "ComponentAllCta";
  title: string;
  btn: QueryHome_homePage_data_attributes_cta_btn | null;
}

export interface QueryHome_homePage_data_attributes {
  __typename: "HomePage";
  heroSection: QueryHome_homePage_data_attributes_heroSection;
  guidesSection: QueryHome_homePage_data_attributes_guidesSection | null;
  casesSection: QueryHome_homePage_data_attributes_casesSection;
  librarySection: QueryHome_homePage_data_attributes_librarySection;
  cta: QueryHome_homePage_data_attributes_cta | null;
}

export interface QueryHome_homePage_data {
  __typename: "HomePageEntity";
  attributes: QueryHome_homePage_data_attributes | null;
}

export interface QueryHome_homePage {
  __typename: "HomePageEntityResponse";
  data: QueryHome_homePage_data | null;
}

export interface QueryHome {
  homePage: QueryHome_homePage | null;
}
