/* tslint:disable */

/* eslint-disable */
// @generated
// This file was automatically generated and should not be edited.

// ====================================================
// GraphQL query operation: QueryGuideBySlug
// ====================================================

export interface QueryGuideBySlug_guides_audioDescription {
  __typename: "UploadFile";
  url: string;
}

export interface QueryGuideBySlug_guides_category {
  __typename: "Category";
  name: string;
  slug: string;
}

export interface QueryGuideBySlug_guides_subcategory {
  __typename: "Subcategoria";
  name: string;
}

export interface QueryGuideBySlug_guides_content_libraries_content_type {
  __typename: "ContentType";
  name: string;
}

export interface QueryGuideBySlug_guides_content_libraries_img {
  __typename: "UploadFile";
  alternativeText: string | null;
  url: string;
}

export interface QueryGuideBySlug_guides_content_libraries_link {
  __typename: "ComponentLibraryLink";
  text: string;
  url: string;
}

export interface QueryGuideBySlug_guides_content_libraries {
  __typename: "ContentLibrary";
  content_type: QueryGuideBySlug_guides_content_libraries_content_type | null;
  title: string;
  img: QueryGuideBySlug_guides_content_libraries_img | null;
  link: QueryGuideBySlug_guides_content_libraries_link | null;
}

export interface QueryGuideBySlug_guides_accessible_tos_icon {
  __typename: "UploadFile";
  alternativeText: string | null;
  url: string;
}

export interface QueryGuideBySlug_guides_accessible_tos {
  __typename: "AccessibleTo";
  name: string;
  description: string;
  icon: QueryGuideBySlug_guides_accessible_tos_icon | null;
}

export interface QueryGuideBySlug_guides {
  __typename: "Guides";
  title: string;
  excerpt: string;
  slug: string;
  content: string;
  readingTime: string;
  audioDescription: QueryGuideBySlug_guides_audioDescription | null;
  category: QueryGuideBySlug_guides_category | null;
  subcategory: QueryGuideBySlug_guides_subcategory | null;
  content_libraries: QueryGuideBySlug_guides_content_libraries[];
  accessible_tos: QueryGuideBySlug_guides_accessible_tos[];
}

export interface QueryGuideBySlug {
  guides: QueryGuideBySlug_guides[];
}

export interface QueryGuideBySlugVariables {
  slug: string;
}
