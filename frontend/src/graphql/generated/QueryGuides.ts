/* tslint:disable */
/* eslint-disable */
// @generated
// This file was automatically generated and should not be edited.

// ====================================================
// GraphQL query operation: QueryGuides
// ====================================================

export interface QueryGuides_guides_tag {
  __typename: "Tag";
  name: string;
}

export interface QueryGuides_guides_category {
  __typename: "Category";
  name: string;
}

export interface QueryGuides_guides_subcategory {
  __typename: "Subcategoria";
  name: string;
}

export interface QueryGuides_guides_icon {
  __typename: "UploadFile";
  url: string;
  alternativeText: string | null;
}

export interface QueryGuides_guides {
  __typename: "Guides";
  tag: QueryGuides_guides_tag | null;
  category: QueryGuides_guides_category | null;
  subcategory: QueryGuides_guides_subcategory | null;
  title: string;
  excerpt: string;
  readingTime: string;
  slug: string;
  icon: QueryGuides_guides_icon | null;
}

export interface QueryGuides_guidesConnection_values {
  __typename: "Guides";
  id: string;
}

export interface QueryGuides_guidesConnection {
  __typename: "GuidesConnection";
  values: (QueryGuides_guidesConnection_values | null)[] | null;
}

export interface QueryGuides_guidesSingle_empty_img {
  __typename: "UploadFile";
  alternativeText: string | null;
  url: string;
}

export interface QueryGuides_guidesSingle_empty {
  __typename: "ComponentLibraryEmpty";
  text: string;
  img: QueryGuides_guidesSingle_empty_img | null;
}

export interface QueryGuides_guidesSingle {
  __typename: "GuidesSingle";
  title: string;
  description: string;
  btnShowMore: string;
  empty: QueryGuides_guidesSingle_empty | null;
}

export interface QueryGuides {
  guides: QueryGuides_guides[];
  guidesConnection: QueryGuides_guidesConnection | null;
  guidesSingle: QueryGuides_guidesSingle | null;
}

export interface QueryGuidesVariables {
  start?: number | null;
  limit: number;
  sort?: string | null;
  where?: any | null;
}
