/* tslint:disable */
/* eslint-disable */
// @generated
// This file was automatically generated and should not be edited.

// ====================================================
// GraphQL fragment: HeroFragment
// ====================================================

export interface HeroFragment_heroSection_btnPrimary {
  __typename: "ComponentBtnBtnPrimary";
  text: string;
  url: string;
}

export interface HeroFragment_heroSection_img_data_attributes {
  __typename: "UploadFile";
  alternativeText: string | null;
  url: string;
  width: number | null;
  height: number | null;
}

export interface HeroFragment_heroSection_img_data {
  __typename: "UploadFileEntity";
  attributes: HeroFragment_heroSection_img_data_attributes | null;
}

export interface HeroFragment_heroSection_img {
  __typename: "UploadFileEntityResponse";
  data: HeroFragment_heroSection_img_data | null;
}

export interface HeroFragment_heroSection {
  __typename: "ComponentHomeHeroSection";
  title: string;
  subtitle: string;
  btnPrimary: HeroFragment_heroSection_btnPrimary;
  img: HeroFragment_heroSection_img;
}

export interface HeroFragment {
  __typename: "HomePage";
  heroSection: HeroFragment_heroSection;
}
