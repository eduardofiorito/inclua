/* tslint:disable */
/* eslint-disable */
// @generated
// This file was automatically generated and should not be edited.

// ====================================================
// GraphQL query operation: QueryChecklists
// ====================================================

export interface QueryChecklists_checklistSingle_empty_img {
  __typename: "UploadFile";
  alternativeText: string | null;
  url: string;
}

export interface QueryChecklists_checklistSingle_empty {
  __typename: "ComponentLibraryEmpty";
  text: string;
  img: QueryChecklists_checklistSingle_empty_img | null;
}

export interface QueryChecklists_checklistSingle {
  __typename: "ChecklistSingle";
  title: string;
  description: string;
  btnShowMore: string;
  empty: QueryChecklists_checklistSingle_empty | null;
}

export interface QueryChecklists_checklists_accordion {
  __typename: "ComponentChecklistAccordion";
  title: string;
  guidelineText: string;
  guidelineLink: string;
  content: string;
}

export interface QueryChecklists_checklists_category {
  __typename: "Category";
  name: string;
}

export interface QueryChecklists_checklists_tag {
  __typename: "Tag";
  slug: string;
}

export interface QueryChecklists_checklists {
  __typename: "Checklist";
  title: string;
  description: string;
  accordion: (QueryChecklists_checklists_accordion | null)[] | null;
  category: QueryChecklists_checklists_category | null;
  tag: QueryChecklists_checklists_tag | null;
}

export interface QueryChecklists_checklistsConnection_values {
  __typename: "Checklist";
  id: string;
}

export interface QueryChecklists_checklistsConnection {
  __typename: "ChecklistConnection";
  values: (QueryChecklists_checklistsConnection_values | null)[] | null;
}

export interface QueryChecklists {
  checklistSingle: QueryChecklists_checklistSingle | null;
  checklists: QueryChecklists_checklists[];
  checklistsConnection: QueryChecklists_checklistsConnection | null;
}

export interface QueryChecklistsVariables {
  start?: number | null;
  limit: number;
  sort?: string | null;
  where?: any | null;
}
