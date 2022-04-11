/* tslint:disable */
/* eslint-disable */
// @generated
// This file was automatically generated and should not be edited.

// ====================================================
// GraphQL fragment: LibraryFragment
// ====================================================

export interface LibraryFragment_librarySection_content_libraries_content_type {
  __typename: "ContentType";
  name: string;
}

export interface LibraryFragment_librarySection_content_libraries_img {
  __typename: "UploadFile";
  alternativeText: string | null;
  url: string;
}

export interface LibraryFragment_librarySection_content_libraries_link {
  __typename: "ComponentLibraryLink";
  text: string;
  url: string;
}

export interface LibraryFragment_librarySection_content_libraries {
  __typename: "ContentLibrary";
  content_type: LibraryFragment_librarySection_content_libraries_content_type | null;
  title: string;
  img: LibraryFragment_librarySection_content_libraries_img | null;
  link: LibraryFragment_librarySection_content_libraries_link | null;
}

export interface LibraryFragment_librarySection_btn {
  __typename: "ComponentButtonBtn";
  text: string;
  url: string;
}

export interface LibraryFragment_librarySection {
  __typename: "ComponentHomePageLibrarySection";
  title: string;
  content_libraries: LibraryFragment_librarySection_content_libraries[];
  btn: LibraryFragment_librarySection_btn | null;
}

export interface LibraryFragment {
  __typename: "HomePage";
  librarySection: LibraryFragment_librarySection | null;
}
