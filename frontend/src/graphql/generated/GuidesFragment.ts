/* tslint:disable */
/* eslint-disable */
// @generated
// This file was automatically generated and should not be edited.

import { ENUM_COMPONENTHOMEGUIDECARD_TYPE } from "./globalTypes";

// ====================================================
// GraphQL fragment: GuidesFragment
// ====================================================

export interface GuidesFragment_guidesSection_guideCard_img_data_attributes {
  __typename: "UploadFile";
  alternativeText: string | null;
  url: string;
  width: number | null;
  height: number | null;
}

export interface GuidesFragment_guidesSection_guideCard_img_data {
  __typename: "UploadFileEntity";
  attributes: GuidesFragment_guidesSection_guideCard_img_data_attributes | null;
}

export interface GuidesFragment_guidesSection_guideCard_img {
  __typename: "UploadFileEntityResponse";
  data: GuidesFragment_guidesSection_guideCard_img_data | null;
}

export interface GuidesFragment_guidesSection_guideCard {
  __typename: "ComponentHomeGuideCard";
  badge: string | null;
  img: GuidesFragment_guidesSection_guideCard_img;
  type: ENUM_COMPONENTHOMEGUIDECARD_TYPE;
  title: string;
  description: string;
  linkUrl: string;
  linkText: string;
}

export interface GuidesFragment_guidesSection {
  __typename: "ComponentHomeGuidesSection";
  title: string;
  guideCard: (GuidesFragment_guidesSection_guideCard | null)[];
}

export interface GuidesFragment {
  __typename: "HomePage";
  guidesSection: GuidesFragment_guidesSection | null;
}
