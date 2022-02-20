/* tslint:disable */
/* eslint-disable */
// @generated
// This file was automatically generated and should not be edited.

// ====================================================
// GraphQL fragment: HeroFragment
// ====================================================

export interface HeroFragment_heroSection_btn {
  __typename: "ComponentButtonBtn";
  text: string;
  url: string;
}

export interface HeroFragment_heroSection_img {
  __typename: "UploadFile";
  alternativeText: string | null;
  url: string;
  width: number | null;
  height: number | null;
}

export interface HeroFragment_heroSection {
  __typename: "ComponentHomePageHeroSection";
  title: string;
  subtitle: string;
  btn: HeroFragment_heroSection_btn | null;
  img: HeroFragment_heroSection_img | null;
}

export interface HeroFragment {
  __typename: "HomePage";
  heroSection: HeroFragment_heroSection | null;
}
