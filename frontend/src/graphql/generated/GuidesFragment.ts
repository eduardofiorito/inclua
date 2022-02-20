/* tslint:disable */
/* eslint-disable */
// @generated
// This file was automatically generated and should not be edited.

import { ENUM_COMPONENTHOMEPAGEGUIDECARD_TYPE } from "./globalTypes";

// ====================================================
// GraphQL fragment: GuidesFragment
// ====================================================

export interface GuidesFragment_guidesSection_guideCard_img {
  __typename: "UploadFile";
  alternativeText: string | null;
  url: string;
  width: number | null;
  height: number | null;
}

export interface GuidesFragment_guidesSection_guideCard {
  __typename: "ComponentHomePageGuideCard";
  badge: string | null;
  img: GuidesFragment_guidesSection_guideCard_img | null;
  type: ENUM_COMPONENTHOMEPAGEGUIDECARD_TYPE;
  title: string;
  description: string;
  linkUrl: string;
  linkText: string;
}

export interface GuidesFragment_guidesSection {
  __typename: "ComponentHomePageGuidesSection";
  title: string | null;
  guideCard: (GuidesFragment_guidesSection_guideCard | null)[] | null;
}

export interface GuidesFragment {
  __typename: "HomePage";
  guidesSection: GuidesFragment_guidesSection | null;
}
