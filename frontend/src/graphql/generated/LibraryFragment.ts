/* tslint:disable */
/* eslint-disable */
// @generated
// This file was automatically generated and should not be edited.

import { ENUM_CONTENTLIBRARY_TYPECONTENT } from "./globalTypes";

// ====================================================
// GraphQL fragment: LibraryFragment
// ====================================================

export interface LibraryFragment_librarySection_content_libraries_data_attributes_img_data_attributes {
  __typename: "UploadFile";
  alternativeText: string | null;
  url: string;
}

export interface LibraryFragment_librarySection_content_libraries_data_attributes_img_data {
  __typename: "UploadFileEntity";
  attributes: LibraryFragment_librarySection_content_libraries_data_attributes_img_data_attributes | null;
}

export interface LibraryFragment_librarySection_content_libraries_data_attributes_img {
  __typename: "UploadFileEntityResponse";
  data: LibraryFragment_librarySection_content_libraries_data_attributes_img_data | null;
}

export interface LibraryFragment_librarySection_content_libraries_data_attributes_link {
  __typename: "ComponentLibraryLink";
  text: string;
  url: string;
}

export interface LibraryFragment_librarySection_content_libraries_data_attributes {
  __typename: "ContentLibrary";
  typeContent: ENUM_CONTENTLIBRARY_TYPECONTENT | null;
  title: string;
  img: LibraryFragment_librarySection_content_libraries_data_attributes_img | null;
  link: LibraryFragment_librarySection_content_libraries_data_attributes_link | null;
}

export interface LibraryFragment_librarySection_content_libraries_data {
  __typename: "ContentLibraryEntity";
  attributes: LibraryFragment_librarySection_content_libraries_data_attributes | null;
}

export interface LibraryFragment_librarySection_content_libraries {
  __typename: "ContentLibraryRelationResponseCollection";
  data: LibraryFragment_librarySection_content_libraries_data[];
}

export interface LibraryFragment_librarySection_btn {
  __typename: "ComponentBtnBtnPrimary";
  text: string;
  url: string;
}

export interface LibraryFragment_librarySection {
  __typename: "ComponentHomeLibrarySection";
  title: string;
  content_libraries: LibraryFragment_librarySection_content_libraries | null;
  btn: LibraryFragment_librarySection_btn;
}

export interface LibraryFragment {
  __typename: "HomePage";
  librarySection: LibraryFragment_librarySection;
}
