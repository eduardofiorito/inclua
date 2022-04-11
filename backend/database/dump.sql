PGDMP     *             
        z            incluaV3-db    14.1    14.1 �   �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    34073    incluaV3-db    DATABASE     m   CREATE DATABASE "incluaV3-db" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE "incluaV3-db";
                postgres    false            b           1259    42952    404s    TABLE     ;  CREATE TABLE public."404s" (
    id integer NOT NULL,
    title character varying(255),
    published_at timestamp with time zone,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public."404s";
       public         heap    postgres    false            d           1259    42961    404s_components    TABLE       CREATE TABLE public."404s_components" (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    "404_id" integer NOT NULL
);
 %   DROP TABLE public."404s_components";
       public         heap    postgres    false            c           1259    42960    404s_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public."404s_components_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."404s_components_id_seq";
       public          postgres    false    356            �           0    0    404s_components_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."404s_components_id_seq" OWNED BY public."404s_components".id;
          public          postgres    false    355            a           1259    42951    404s_id_seq    SEQUENCE     �   CREATE SEQUENCE public."404s_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public."404s_id_seq";
       public          postgres    false    354            �           0    0    404s_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public."404s_id_seq" OWNED BY public."404s".id;
          public          postgres    false    353            <           1259    34768    Subcategory    TABLE     �  CREATE TABLE public."Subcategory" (
    id integer NOT NULL,
    name character varying(255),
    slug character varying(255),
    locale character varying(255),
    published_at timestamp with time zone,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    category integer
);
 !   DROP TABLE public."Subcategory";
       public         heap    postgres    false            >           1259    34781    Subcategory__localizations    TABLE     �   CREATE TABLE public."Subcategory__localizations" (
    id integer NOT NULL,
    "Subcategory_id" integer,
    subcategoria_id integer
);
 0   DROP TABLE public."Subcategory__localizations";
       public         heap    postgres    false            =           1259    34780 !   Subcategory__localizations_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Subcategory__localizations_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public."Subcategory__localizations_id_seq";
       public          postgres    false    318            �           0    0 !   Subcategory__localizations_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public."Subcategory__localizations_id_seq" OWNED BY public."Subcategory__localizations".id;
          public          postgres    false    317            ;           1259    34767    Subcategory_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Subcategory_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."Subcategory_id_seq";
       public          postgres    false    316            �           0    0    Subcategory_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."Subcategory_id_seq" OWNED BY public."Subcategory".id;
          public          postgres    false    315            z           1259    59264    abouts    TABLE     �  CREATE TABLE public.abouts (
    id integer NOT NULL,
    title character varying(255),
    subtitle character varying(255),
    content text,
    locale character varying(255),
    published_at timestamp with time zone,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.abouts;
       public         heap    postgres    false            |           1259    59275    abouts__localizations    TABLE     {   CREATE TABLE public.abouts__localizations (
    id integer NOT NULL,
    about_id integer,
    related_about_id integer
);
 )   DROP TABLE public.abouts__localizations;
       public         heap    postgres    false            {           1259    59274    abouts__localizations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.abouts__localizations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.abouts__localizations_id_seq;
       public          postgres    false    380            �           0    0    abouts__localizations_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.abouts__localizations_id_seq OWNED BY public.abouts__localizations.id;
          public          postgres    false    379            ~           1259    59282    abouts_components    TABLE       CREATE TABLE public.abouts_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    about_id integer NOT NULL
);
 %   DROP TABLE public.abouts_components;
       public         heap    postgres    false            }           1259    59281    abouts_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.abouts_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.abouts_components_id_seq;
       public          postgres    false    382            �           0    0    abouts_components_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.abouts_components_id_seq OWNED BY public.abouts_components.id;
          public          postgres    false    381            y           1259    59263    abouts_id_seq    SEQUENCE     �   CREATE SEQUENCE public.abouts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.abouts_id_seq;
       public          postgres    false    378            �           0    0    abouts_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.abouts_id_seq OWNED BY public.abouts.id;
          public          postgres    false    377            T           1259    34904    accessible_tos    TABLE     �  CREATE TABLE public.accessible_tos (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    locale character varying(255),
    published_at timestamp with time zone,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
 "   DROP TABLE public.accessible_tos;
       public         heap    postgres    false            V           1259    34915    accessible_tos__localizations    TABLE     �   CREATE TABLE public.accessible_tos__localizations (
    id integer NOT NULL,
    accessible_to_id integer,
    "accessible-to_id" integer
);
 1   DROP TABLE public.accessible_tos__localizations;
       public         heap    postgres    false            U           1259    34914 $   accessible_tos__localizations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.accessible_tos__localizations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.accessible_tos__localizations_id_seq;
       public          postgres    false    342            �           0    0 $   accessible_tos__localizations_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.accessible_tos__localizations_id_seq OWNED BY public.accessible_tos__localizations.id;
          public          postgres    false    341            `           1259    42936 ,   accessible_tos_guides__guides_accessible_tos    TABLE     �   CREATE TABLE public.accessible_tos_guides__guides_accessible_tos (
    id integer NOT NULL,
    guide_id integer,
    "accessible-to_id" integer
);
 @   DROP TABLE public.accessible_tos_guides__guides_accessible_tos;
       public         heap    postgres    false            _           1259    42935 3   accessible_tos_guides__guides_accessible_tos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.accessible_tos_guides__guides_accessible_tos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 J   DROP SEQUENCE public.accessible_tos_guides__guides_accessible_tos_id_seq;
       public          postgres    false    352            �           0    0 3   accessible_tos_guides__guides_accessible_tos_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.accessible_tos_guides__guides_accessible_tos_id_seq OWNED BY public.accessible_tos_guides__guides_accessible_tos.id;
          public          postgres    false    351            S           1259    34903    accessible_tos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.accessible_tos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.accessible_tos_id_seq;
       public          postgres    false    340            �           0    0    accessible_tos_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.accessible_tos_id_seq OWNED BY public.accessible_tos.id;
          public          postgres    false    339            �            1259    34426    authors    TABLE     �  CREATE TABLE public.authors (
    id integer NOT NULL,
    name character varying(255),
    role character varying(255),
    email character varying(255),
    password character varying(255),
    slug character varying(255),
    locale character varying(255),
    published_at timestamp with time zone,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.authors;
       public         heap    postgres    false            �            1259    34439    authors__localizations    TABLE     ~   CREATE TABLE public.authors__localizations (
    id integer NOT NULL,
    author_id integer,
    related_author_id integer
);
 *   DROP TABLE public.authors__localizations;
       public         heap    postgres    false            �            1259    34438    authors__localizations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.authors__localizations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.authors__localizations_id_seq;
       public          postgres    false    254            �           0    0    authors__localizations_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.authors__localizations_id_seq OWNED BY public.authors__localizations.id;
          public          postgres    false    253            �            1259    34425    authors_id_seq    SEQUENCE     �   CREATE SEQUENCE public.authors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.authors_id_seq;
       public          postgres    false    252            �           0    0    authors_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.authors_id_seq OWNED BY public.authors.id;
          public          postgres    false    251            �           1259    59311    be_parts    TABLE       CREATE TABLE public.be_parts (
    id integer NOT NULL,
    published_at timestamp with time zone,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.be_parts;
       public         heap    postgres    false            �           1259    59320    be_parts_components    TABLE       CREATE TABLE public.be_parts_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    be_part_id integer NOT NULL
);
 '   DROP TABLE public.be_parts_components;
       public         heap    postgres    false            �           1259    59319    be_parts_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.be_parts_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.be_parts_components_id_seq;
       public          postgres    false    388            �           0    0    be_parts_components_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.be_parts_components_id_seq OWNED BY public.be_parts_components.id;
          public          postgres    false    387            �           1259    59310    be_parts_id_seq    SEQUENCE     �   CREATE SEQUENCE public.be_parts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.be_parts_id_seq;
       public          postgres    false    386            �           0    0    be_parts_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.be_parts_id_seq OWNED BY public.be_parts.id;
          public          postgres    false    385                        1259    34447    cases    TABLE       CREATE TABLE public.cases (
    id integer NOT NULL,
    title character varying(255),
    excerpt text,
    slug character varying(255),
    content text,
    "readingTime" character varying(255),
    locale character varying(255),
    published_at timestamp with time zone,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    category integer,
    author integer,
    subcategory integer
);
    DROP TABLE public.cases;
       public         heap    postgres    false            @           1259    34795    casesSingle    TABLE     �  CREATE TABLE public."casesSingle" (
    id integer NOT NULL,
    title text,
    description text,
    "btnShowMore" character varying(255),
    locale character varying(255),
    published_at timestamp with time zone,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
 !   DROP TABLE public."casesSingle";
       public         heap    postgres    false            B           1259    34806    casesSingle__localizations    TABLE     �   CREATE TABLE public."casesSingle__localizations" (
    id integer NOT NULL,
    "casesSingle_id" integer,
    "cases-design_id" integer
);
 0   DROP TABLE public."casesSingle__localizations";
       public         heap    postgres    false            A           1259    34805 !   casesSingle__localizations_id_seq    SEQUENCE     �   CREATE SEQUENCE public."casesSingle__localizations_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public."casesSingle__localizations_id_seq";
       public          postgres    false    322            �           0    0 !   casesSingle__localizations_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public."casesSingle__localizations_id_seq" OWNED BY public."casesSingle__localizations".id;
          public          postgres    false    321            D           1259    34813    casesSingle_components    TABLE       CREATE TABLE public."casesSingle_components" (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    "casesSingle_id" integer NOT NULL
);
 ,   DROP TABLE public."casesSingle_components";
       public         heap    postgres    false            C           1259    34812    casesSingle_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public."casesSingle_components_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public."casesSingle_components_id_seq";
       public          postgres    false    324            �           0    0    casesSingle_components_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public."casesSingle_components_id_seq" OWNED BY public."casesSingle_components".id;
          public          postgres    false    323            ?           1259    34794    casesSingle_id_seq    SEQUENCE     �   CREATE SEQUENCE public."casesSingle_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."casesSingle_id_seq";
       public          postgres    false    320                        0    0    casesSingle_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."casesSingle_id_seq" OWNED BY public."casesSingle".id;
          public          postgres    false    319                       1259    34460    cases__localizations    TABLE     x   CREATE TABLE public.cases__localizations (
    id integer NOT NULL,
    case_id integer,
    related_case_id integer
);
 (   DROP TABLE public.cases__localizations;
       public         heap    postgres    false                       1259    34459    cases__localizations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cases__localizations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.cases__localizations_id_seq;
       public          postgres    false    258                       0    0    cases__localizations_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.cases__localizations_id_seq OWNED BY public.cases__localizations.id;
          public          postgres    false    257            ^           1259    34994 0   cases_content_libraries__content_libraries_cases    TABLE     �   CREATE TABLE public.cases_content_libraries__content_libraries_cases (
    id integer NOT NULL,
    case_id integer,
    "content-library_id" integer
);
 D   DROP TABLE public.cases_content_libraries__content_libraries_cases;
       public         heap    postgres    false            ]           1259    34993 7   cases_content_libraries__content_libraries_cases_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cases_content_libraries__content_libraries_cases_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 N   DROP SEQUENCE public.cases_content_libraries__content_libraries_cases_id_seq;
       public          postgres    false    350                       0    0 7   cases_content_libraries__content_libraries_cases_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.cases_content_libraries__content_libraries_cases_id_seq OWNED BY public.cases_content_libraries__content_libraries_cases.id;
          public          postgres    false    349            2           1259    34715    cases_designs    TABLE     �  CREATE TABLE public.cases_designs (
    id integer NOT NULL,
    title text,
    description text,
    "btnShowMore" character varying(255),
    locale character varying(255),
    published_at timestamp with time zone,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
 !   DROP TABLE public.cases_designs;
       public         heap    postgres    false            4           1259    34726    cases_designs__localizations    TABLE     �   CREATE TABLE public.cases_designs__localizations (
    id integer NOT NULL,
    cases_design_id integer,
    "cases-design_id" integer
);
 0   DROP TABLE public.cases_designs__localizations;
       public         heap    postgres    false            3           1259    34725 #   cases_designs__localizations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cases_designs__localizations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.cases_designs__localizations_id_seq;
       public          postgres    false    308                       0    0 #   cases_designs__localizations_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.cases_designs__localizations_id_seq OWNED BY public.cases_designs__localizations.id;
          public          postgres    false    307            6           1259    34733    cases_designs_components    TABLE       CREATE TABLE public.cases_designs_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    cases_design_id integer NOT NULL
);
 ,   DROP TABLE public.cases_designs_components;
       public         heap    postgres    false            5           1259    34732    cases_designs_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cases_designs_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.cases_designs_components_id_seq;
       public          postgres    false    310                       0    0    cases_designs_components_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.cases_designs_components_id_seq OWNED BY public.cases_designs_components.id;
          public          postgres    false    309            1           1259    34714    cases_designs_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cases_designs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.cases_designs_id_seq;
       public          postgres    false    306                       0    0    cases_designs_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.cases_designs_id_seq OWNED BY public.cases_designs.id;
          public          postgres    false    305            �            1259    34446    cases_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cases_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.cases_id_seq;
       public          postgres    false    256                       0    0    cases_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.cases_id_seq OWNED BY public.cases.id;
          public          postgres    false    255            F           1259    34828    cases_singles    TABLE     �  CREATE TABLE public.cases_singles (
    id integer NOT NULL,
    title character varying(255),
    description character varying(255),
    "btnShowMore" character varying(255),
    locale character varying(255),
    published_at timestamp with time zone,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
 !   DROP TABLE public.cases_singles;
       public         heap    postgres    false            H           1259    34839    cases_singles__localizations    TABLE     �   CREATE TABLE public.cases_singles__localizations (
    id integer NOT NULL,
    cases_single_id integer,
    "cases-single_id" integer
);
 0   DROP TABLE public.cases_singles__localizations;
       public         heap    postgres    false            G           1259    34838 #   cases_singles__localizations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cases_singles__localizations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.cases_singles__localizations_id_seq;
       public          postgres    false    328                       0    0 #   cases_singles__localizations_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.cases_singles__localizations_id_seq OWNED BY public.cases_singles__localizations.id;
          public          postgres    false    327            J           1259    34846    cases_singles_components    TABLE       CREATE TABLE public.cases_singles_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    cases_single_id integer NOT NULL
);
 ,   DROP TABLE public.cases_singles_components;
       public         heap    postgres    false            I           1259    34845    cases_singles_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cases_singles_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.cases_singles_components_id_seq;
       public          postgres    false    330                       0    0    cases_singles_components_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.cases_singles_components_id_seq OWNED BY public.cases_singles_components.id;
          public          postgres    false    329            E           1259    34827    cases_singles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cases_singles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.cases_singles_id_seq;
       public          postgres    false    326            	           0    0    cases_singles_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.cases_singles_id_seq OWNED BY public.cases_singles.id;
          public          postgres    false    325                       1259    34563    cases_tags__tags_cases    TABLE     q   CREATE TABLE public.cases_tags__tags_cases (
    id integer NOT NULL,
    tag_id integer,
    case_id integer
);
 *   DROP TABLE public.cases_tags__tags_cases;
       public         heap    postgres    false                       1259    34562    cases_tags__tags_cases_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cases_tags__tags_cases_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.cases_tags__tags_cases_id_seq;
       public          postgres    false    278            
           0    0    cases_tags__tags_cases_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.cases_tags__tags_cases_id_seq OWNED BY public.cases_tags__tags_cases.id;
          public          postgres    false    277                       1259    34468 
   categories    TABLE     �  CREATE TABLE public.categories (
    id integer NOT NULL,
    name character varying(255),
    slug character varying(255),
    locale character varying(255),
    published_at timestamp with time zone,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.categories;
       public         heap    postgres    false                       1259    34481    categories__localizations    TABLE     �   CREATE TABLE public.categories__localizations (
    id integer NOT NULL,
    category_id integer,
    related_category_id integer
);
 -   DROP TABLE public.categories__localizations;
       public         heap    postgres    false                       1259    34480     categories__localizations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.categories__localizations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.categories__localizations_id_seq;
       public          postgres    false    262                       0    0     categories__localizations_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.categories__localizations_id_seq OWNED BY public.categories__localizations.id;
          public          postgres    false    261                       1259    34578 :   categories_content_libraries__content_libraries_categories    TABLE     �   CREATE TABLE public.categories_content_libraries__content_libraries_categories (
    id integer NOT NULL,
    "content-library_id" integer,
    category_id integer
);
 N   DROP TABLE public.categories_content_libraries__content_libraries_categories;
       public         heap    postgres    false                       1259    34577 ?   categories_content_libraries__content_libraries_categori_id_seq    SEQUENCE     �   CREATE SEQUENCE public.categories_content_libraries__content_libraries_categori_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 V   DROP SEQUENCE public.categories_content_libraries__content_libraries_categori_id_seq;
       public          postgres    false    282                       0    0 ?   categories_content_libraries__content_libraries_categori_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.categories_content_libraries__content_libraries_categori_id_seq OWNED BY public.categories_content_libraries__content_libraries_categories.id;
          public          postgres    false    281                       1259    34467    categories_id_seq    SEQUENCE     �   CREATE SEQUENCE public.categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.categories_id_seq;
       public          postgres    false    260                       0    0    categories_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;
          public          postgres    false    259            t           1259    51104    checklist_singles    TABLE     �  CREATE TABLE public.checklist_singles (
    id integer NOT NULL,
    title character varying(255),
    description character varying(255),
    "btnShowMore" character varying(255),
    published_at timestamp with time zone,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
 %   DROP TABLE public.checklist_singles;
       public         heap    postgres    false            v           1259    51115    checklist_singles_components    TABLE       CREATE TABLE public.checklist_singles_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    checklist_single_id integer NOT NULL
);
 0   DROP TABLE public.checklist_singles_components;
       public         heap    postgres    false            u           1259    51114 #   checklist_singles_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.checklist_singles_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.checklist_singles_components_id_seq;
       public          postgres    false    374                       0    0 #   checklist_singles_components_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.checklist_singles_components_id_seq OWNED BY public.checklist_singles_components.id;
          public          postgres    false    373            s           1259    51103    checklist_singles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.checklist_singles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.checklist_singles_id_seq;
       public          postgres    false    372                       0    0    checklist_singles_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.checklist_singles_id_seq OWNED BY public.checklist_singles.id;
          public          postgres    false    371            n           1259    51069 
   checklists    TABLE     �  CREATE TABLE public.checklists (
    id integer NOT NULL,
    title character varying(255),
    description text,
    locale character varying(255),
    published_at timestamp with time zone,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    category integer,
    slug character varying(255),
    tag integer
);
    DROP TABLE public.checklists;
       public         heap    postgres    false            p           1259    51080    checklists__localizations    TABLE     �   CREATE TABLE public.checklists__localizations (
    id integer NOT NULL,
    checklist_id integer,
    related_checklist_id integer
);
 -   DROP TABLE public.checklists__localizations;
       public         heap    postgres    false            o           1259    51079     checklists__localizations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.checklists__localizations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.checklists__localizations_id_seq;
       public          postgres    false    368                       0    0     checklists__localizations_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.checklists__localizations_id_seq OWNED BY public.checklists__localizations.id;
          public          postgres    false    367            r           1259    51087    checklists_components    TABLE     
  CREATE TABLE public.checklists_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    checklist_id integer NOT NULL
);
 )   DROP TABLE public.checklists_components;
       public         heap    postgres    false            q           1259    51086    checklists_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.checklists_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.checklists_components_id_seq;
       public          postgres    false    370                       0    0    checklists_components_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.checklists_components_id_seq OWNED BY public.checklists_components.id;
          public          postgres    false    369            m           1259    51068    checklists_id_seq    SEQUENCE     �   CREATE SEQUENCE public.checklists_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.checklists_id_seq;
       public          postgres    false    366                       0    0    checklists_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.checklists_id_seq OWNED BY public.checklists.id;
          public          postgres    false    365            x           1259    59256     checklists_tags__tags_checklists    TABLE     �   CREATE TABLE public.checklists_tags__tags_checklists (
    id integer NOT NULL,
    checklist_id integer,
    tag_id integer
);
 4   DROP TABLE public.checklists_tags__tags_checklists;
       public         heap    postgres    false            w           1259    59255 '   checklists_tags__tags_checklists_id_seq    SEQUENCE     �   CREATE SEQUENCE public.checklists_tags__tags_checklists_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public.checklists_tags__tags_checklists_id_seq;
       public          postgres    false    376                       0    0 '   checklists_tags__tags_checklists_id_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public.checklists_tags__tags_checklists_id_seq OWNED BY public.checklists_tags__tags_checklists.id;
          public          postgres    false    375            �           1259    59357    components_be_part_checklists    TABLE     �   CREATE TABLE public.components_be_part_checklists (
    id integer NOT NULL,
    title character varying(255),
    subtitle text
);
 1   DROP TABLE public.components_be_part_checklists;
       public         heap    postgres    false            �           1259    59356 $   components_be_part_checklists_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_be_part_checklists_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.components_be_part_checklists_id_seq;
       public          postgres    false    394                       0    0 $   components_be_part_checklists_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.components_be_part_checklists_id_seq OWNED BY public.components_be_part_checklists.id;
          public          postgres    false    393            �           1259    59302    components_be_part_heroes    TABLE     �   CREATE TABLE public.components_be_part_heroes (
    id integer NOT NULL,
    title character varying(255),
    subtitle text
);
 -   DROP TABLE public.components_be_part_heroes;
       public         heap    postgres    false                       1259    59301     components_be_part_heroes_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_be_part_heroes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.components_be_part_heroes_id_seq;
       public          postgres    false    384                       0    0     components_be_part_heroes_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.components_be_part_heroes_id_seq OWNED BY public.components_be_part_heroes.id;
          public          postgres    false    383            �           1259    59334    components_be_part_learns    TABLE     [   CREATE TABLE public.components_be_part_learns (
    id integer NOT NULL,
    title text
);
 -   DROP TABLE public.components_be_part_learns;
       public         heap    postgres    false            �           1259    59333     components_be_part_learns_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_be_part_learns_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.components_be_part_learns_id_seq;
       public          postgres    false    390                       0    0     components_be_part_learns_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.components_be_part_learns_id_seq OWNED BY public.components_be_part_learns.id;
          public          postgres    false    389            �           1259    59344    components_be_part_networkings    TABLE     �   CREATE TABLE public.components_be_part_networkings (
    id integer NOT NULL,
    title character varying(255),
    subtitle character varying(255)
);
 2   DROP TABLE public.components_be_part_networkings;
       public         heap    postgres    false            �           1259    59343 %   components_be_part_networkings_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_be_part_networkings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.components_be_part_networkings_id_seq;
       public          postgres    false    392                       0    0 %   components_be_part_networkings_id_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public.components_be_part_networkings_id_seq OWNED BY public.components_be_part_networkings.id;
          public          postgres    false    391            �            1259    34334    components_button_btns    TABLE     w   CREATE TABLE public.components_button_btns (
    id integer NOT NULL,
    text text,
    url character varying(255)
);
 *   DROP TABLE public.components_button_btns;
       public         heap    postgres    false            �            1259    34333    components_button_btns_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_button_btns_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.components_button_btns_id_seq;
       public          postgres    false    234                       0    0    components_button_btns_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.components_button_btns_id_seq OWNED BY public.components_button_btns.id;
          public          postgres    false    233            l           1259    51060    components_checklist_accordions    TABLE     �   CREATE TABLE public.components_checklist_accordions (
    id integer NOT NULL,
    title text,
    "guidelineText" character varying(255),
    "guidelineLink" character varying(255),
    content text
);
 3   DROP TABLE public.components_checklist_accordions;
       public         heap    postgres    false            k           1259    51059 &   components_checklist_accordions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_checklist_accordions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.components_checklist_accordions_id_seq;
       public          postgres    false    364                       0    0 &   components_checklist_accordions_id_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.components_checklist_accordions_id_seq OWNED BY public.components_checklist_accordions.id;
          public          postgres    false    363                       1259    34606 #   components_home_page_cases_sections    TABLE     w   CREATE TABLE public.components_home_page_cases_sections (
    id integer NOT NULL,
    title character varying(255)
);
 7   DROP TABLE public.components_home_page_cases_sections;
       public         heap    postgres    false                       1259    34613 *   components_home_page_cases_sections__cases    TABLE     �   CREATE TABLE public.components_home_page_cases_sections__cases (
    id integer NOT NULL,
    components_home_page_cases_section_id integer,
    case_id integer
);
 >   DROP TABLE public.components_home_page_cases_sections__cases;
       public         heap    postgres    false                       1259    34612 1   components_home_page_cases_sections__cases_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_home_page_cases_sections__cases_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 H   DROP SEQUENCE public.components_home_page_cases_sections__cases_id_seq;
       public          postgres    false    286                       0    0 1   components_home_page_cases_sections__cases_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.components_home_page_cases_sections__cases_id_seq OWNED BY public.components_home_page_cases_sections__cases.id;
          public          postgres    false    285            L           1259    34861 .   components_home_page_cases_sections_components    TABLE     <  CREATE TABLE public.components_home_page_cases_sections_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_home_page_cases_section_id integer NOT NULL
);
 B   DROP TABLE public.components_home_page_cases_sections_components;
       public         heap    postgres    false            K           1259    34860 5   components_home_page_cases_sections_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_home_page_cases_sections_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 L   DROP SEQUENCE public.components_home_page_cases_sections_components_id_seq;
       public          postgres    false    332                       0    0 5   components_home_page_cases_sections_components_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.components_home_page_cases_sections_components_id_seq OWNED BY public.components_home_page_cases_sections_components.id;
          public          postgres    false    331                       1259    34605 *   components_home_page_cases_sections_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_home_page_cases_sections_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 A   DROP SEQUENCE public.components_home_page_cases_sections_id_seq;
       public          postgres    false    284                       0    0 *   components_home_page_cases_sections_id_seq    SEQUENCE OWNED BY     y   ALTER SEQUENCE public.components_home_page_cases_sections_id_seq OWNED BY public.components_home_page_cases_sections.id;
          public          postgres    false    283                        1259    34620    components_home_page_ctas    TABLE     m   CREATE TABLE public.components_home_page_ctas (
    id integer NOT NULL,
    title character varying(255)
);
 -   DROP TABLE public.components_home_page_ctas;
       public         heap    postgres    false            "           1259    34627 $   components_home_page_ctas_components    TABLE     (  CREATE TABLE public.components_home_page_ctas_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_home_page_cta_id integer NOT NULL
);
 8   DROP TABLE public.components_home_page_ctas_components;
       public         heap    postgres    false            !           1259    34626 +   components_home_page_ctas_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_home_page_ctas_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 B   DROP SEQUENCE public.components_home_page_ctas_components_id_seq;
       public          postgres    false    290                       0    0 +   components_home_page_ctas_components_id_seq    SEQUENCE OWNED BY     {   ALTER SEQUENCE public.components_home_page_ctas_components_id_seq OWNED BY public.components_home_page_ctas_components.id;
          public          postgres    false    289                       1259    34619     components_home_page_ctas_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_home_page_ctas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.components_home_page_ctas_id_seq;
       public          postgres    false    288                       0    0     components_home_page_ctas_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.components_home_page_ctas_id_seq OWNED BY public.components_home_page_ctas.id;
          public          postgres    false    287            �            1259    34396     components_home_page_guide_cards    TABLE       CREATE TABLE public.components_home_page_guide_cards (
    id integer NOT NULL,
    badge character varying(255),
    title character varying(255),
    description text,
    "linkUrl" character varying(255),
    "linkText" character varying(255),
    type character varying(255)
);
 4   DROP TABLE public.components_home_page_guide_cards;
       public         heap    postgres    false            �            1259    34395 '   components_home_page_guide_cards_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_home_page_guide_cards_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public.components_home_page_guide_cards_id_seq;
       public          postgres    false    246                       0    0 '   components_home_page_guide_cards_id_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public.components_home_page_guide_cards_id_seq OWNED BY public.components_home_page_guide_cards.id;
          public          postgres    false    245            �            1259    34405 $   components_home_page_guides_sections    TABLE     x   CREATE TABLE public.components_home_page_guides_sections (
    id integer NOT NULL,
    title character varying(255)
);
 8   DROP TABLE public.components_home_page_guides_sections;
       public         heap    postgres    false            �            1259    34412 /   components_home_page_guides_sections_components    TABLE     >  CREATE TABLE public.components_home_page_guides_sections_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_home_page_guides_section_id integer NOT NULL
);
 C   DROP TABLE public.components_home_page_guides_sections_components;
       public         heap    postgres    false            �            1259    34411 6   components_home_page_guides_sections_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_home_page_guides_sections_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 M   DROP SEQUENCE public.components_home_page_guides_sections_components_id_seq;
       public          postgres    false    250                        0    0 6   components_home_page_guides_sections_components_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.components_home_page_guides_sections_components_id_seq OWNED BY public.components_home_page_guides_sections_components.id;
          public          postgres    false    249            �            1259    34404 +   components_home_page_guides_sections_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_home_page_guides_sections_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 B   DROP SEQUENCE public.components_home_page_guides_sections_id_seq;
       public          postgres    false    248            !           0    0 +   components_home_page_guides_sections_id_seq    SEQUENCE OWNED BY     {   ALTER SEQUENCE public.components_home_page_guides_sections_id_seq OWNED BY public.components_home_page_guides_sections.id;
          public          postgres    false    247            �            1259    34343 "   components_home_page_hero_sections    TABLE     �   CREATE TABLE public.components_home_page_hero_sections (
    id integer NOT NULL,
    title character varying(255),
    subtitle text
);
 6   DROP TABLE public.components_home_page_hero_sections;
       public         heap    postgres    false            �            1259    34352 -   components_home_page_hero_sections_components    TABLE     :  CREATE TABLE public.components_home_page_hero_sections_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_home_page_hero_section_id integer NOT NULL
);
 A   DROP TABLE public.components_home_page_hero_sections_components;
       public         heap    postgres    false            �            1259    34351 4   components_home_page_hero_sections_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_home_page_hero_sections_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 K   DROP SEQUENCE public.components_home_page_hero_sections_components_id_seq;
       public          postgres    false    238            "           0    0 4   components_home_page_hero_sections_components_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.components_home_page_hero_sections_components_id_seq OWNED BY public.components_home_page_hero_sections_components.id;
          public          postgres    false    237            �            1259    34342 )   components_home_page_hero_sections_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_home_page_hero_sections_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE public.components_home_page_hero_sections_id_seq;
       public          postgres    false    236            #           0    0 )   components_home_page_hero_sections_id_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public.components_home_page_hero_sections_id_seq OWNED BY public.components_home_page_hero_sections.id;
          public          postgres    false    235            $           1259    34641 %   components_home_page_library_sections    TABLE     y   CREATE TABLE public.components_home_page_library_sections (
    id integer NOT NULL,
    title character varying(255)
);
 9   DROP TABLE public.components_home_page_library_sections;
       public         heap    postgres    false            &           1259    34648 8   components_home_page_library_sections__content_libraries    TABLE     �   CREATE TABLE public.components_home_page_library_sections__content_libraries (
    id integer NOT NULL,
    components_home_page_library_section_id integer,
    "content-library_id" integer
);
 L   DROP TABLE public.components_home_page_library_sections__content_libraries;
       public         heap    postgres    false            %           1259    34647 ?   components_home_page_library_sections__content_libraries_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_home_page_library_sections__content_libraries_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 V   DROP SEQUENCE public.components_home_page_library_sections__content_libraries_id_seq;
       public          postgres    false    294            $           0    0 ?   components_home_page_library_sections__content_libraries_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.components_home_page_library_sections__content_libraries_id_seq OWNED BY public.components_home_page_library_sections__content_libraries.id;
          public          postgres    false    293            (           1259    34655 0   components_home_page_library_sections_components    TABLE     @  CREATE TABLE public.components_home_page_library_sections_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_home_page_library_section_id integer NOT NULL
);
 D   DROP TABLE public.components_home_page_library_sections_components;
       public         heap    postgres    false            '           1259    34654 7   components_home_page_library_sections_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_home_page_library_sections_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 N   DROP SEQUENCE public.components_home_page_library_sections_components_id_seq;
       public          postgres    false    296            %           0    0 7   components_home_page_library_sections_components_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.components_home_page_library_sections_components_id_seq OWNED BY public.components_home_page_library_sections_components.id;
          public          postgres    false    295            #           1259    34640 ,   components_home_page_library_sections_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_home_page_library_sections_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 C   DROP SEQUENCE public.components_home_page_library_sections_id_seq;
       public          postgres    false    292            &           0    0 ,   components_home_page_library_sections_id_seq    SEQUENCE OWNED BY     }   ALTER SEQUENCE public.components_home_page_library_sections_id_seq OWNED BY public.components_home_page_library_sections.id;
          public          postgres    false    291            *           1259    34675    components_library_empties    TABLE     m   CREATE TABLE public.components_library_empties (
    id integer NOT NULL,
    text character varying(255)
);
 .   DROP TABLE public.components_library_empties;
       public         heap    postgres    false            )           1259    34674 !   components_library_empties_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_library_empties_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.components_library_empties_id_seq;
       public          postgres    false    298            '           0    0 !   components_library_empties_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.components_library_empties_id_seq OWNED BY public.components_library_empties.id;
          public          postgres    false    297                       1259    34488    components_library_links    TABLE     �   CREATE TABLE public.components_library_links (
    id integer NOT NULL,
    text character varying(255),
    url character varying(255)
);
 ,   DROP TABLE public.components_library_links;
       public         heap    postgres    false                       1259    34487    components_library_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_library_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.components_library_links_id_seq;
       public          postgres    false    264            (           0    0    components_library_links_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.components_library_links_id_seq OWNED BY public.components_library_links.id;
          public          postgres    false    263            
           1259    34497    content_libraries    TABLE     �  CREATE TABLE public.content_libraries (
    id integer NOT NULL,
    title character varying(255),
    language character varying(255),
    locale character varying(255),
    published_at timestamp with time zone,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    content_type integer
);
 %   DROP TABLE public.content_libraries;
       public         heap    postgres    false                       1259    34508     content_libraries__localizations    TABLE     �   CREATE TABLE public.content_libraries__localizations (
    id integer NOT NULL,
    content_library_id integer,
    "content-library_id" integer
);
 4   DROP TABLE public.content_libraries__localizations;
       public         heap    postgres    false                       1259    34507 '   content_libraries__localizations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.content_libraries__localizations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public.content_libraries__localizations_id_seq;
       public          postgres    false    268            )           0    0 '   content_libraries__localizations_id_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public.content_libraries__localizations_id_seq OWNED BY public.content_libraries__localizations.id;
          public          postgres    false    267                       1259    34515    content_libraries_components    TABLE       CREATE TABLE public.content_libraries_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    content_library_id integer NOT NULL
);
 0   DROP TABLE public.content_libraries_components;
       public         heap    postgres    false                       1259    34514 #   content_libraries_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.content_libraries_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.content_libraries_components_id_seq;
       public          postgres    false    270            *           0    0 #   content_libraries_components_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.content_libraries_components_id_seq OWNED BY public.content_libraries_components.id;
          public          postgres    false    269            R           1259    34897 2   content_libraries_guides__guides_content_libraries    TABLE     �   CREATE TABLE public.content_libraries_guides__guides_content_libraries (
    id integer NOT NULL,
    guide_id integer,
    "content-library_id" integer
);
 F   DROP TABLE public.content_libraries_guides__guides_content_libraries;
       public         heap    postgres    false            Q           1259    34896 9   content_libraries_guides__guides_content_libraries_id_seq    SEQUENCE     �   CREATE SEQUENCE public.content_libraries_guides__guides_content_libraries_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 P   DROP SEQUENCE public.content_libraries_guides__guides_content_libraries_id_seq;
       public          postgres    false    338            +           0    0 9   content_libraries_guides__guides_content_libraries_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.content_libraries_guides__guides_content_libraries_id_seq OWNED BY public.content_libraries_guides__guides_content_libraries.id;
          public          postgres    false    337            	           1259    34496    content_libraries_id_seq    SEQUENCE     �   CREATE SEQUENCE public.content_libraries_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.content_libraries_id_seq;
       public          postgres    false    266            ,           0    0    content_libraries_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.content_libraries_id_seq OWNED BY public.content_libraries.id;
          public          postgres    false    265                       1259    34530    content_types    TABLE     �  CREATE TABLE public.content_types (
    id integer NOT NULL,
    name character varying(255),
    slug character varying(255),
    locale character varying(255),
    published_at timestamp with time zone,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
 !   DROP TABLE public.content_types;
       public         heap    postgres    false                       1259    34543    content_types__localizations    TABLE     �   CREATE TABLE public.content_types__localizations (
    id integer NOT NULL,
    content_type_id integer,
    "content-type_id" integer
);
 0   DROP TABLE public.content_types__localizations;
       public         heap    postgres    false                       1259    34542 #   content_types__localizations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.content_types__localizations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.content_types__localizations_id_seq;
       public          postgres    false    274            -           0    0 #   content_types__localizations_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.content_types__localizations_id_seq OWNED BY public.content_types__localizations.id;
          public          postgres    false    273                       1259    34529    content_types_id_seq    SEQUENCE     �   CREATE SEQUENCE public.content_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.content_types_id_seq;
       public          postgres    false    272            .           0    0    content_types_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.content_types_id_seq OWNED BY public.content_types.id;
          public          postgres    false    271            �            1259    34075 
   core_store    TABLE     �   CREATE TABLE public.core_store (
    id integer NOT NULL,
    key character varying(255),
    value text,
    type character varying(255),
    environment character varying(255),
    tag character varying(255)
);
    DROP TABLE public.core_store;
       public         heap    postgres    false            �            1259    34074    core_store_id_seq    SEQUENCE     �   CREATE SEQUENCE public.core_store_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.core_store_id_seq;
       public          postgres    false    210            /           0    0    core_store_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.core_store_id_seq OWNED BY public.core_store.id;
          public          postgres    false    209            N           1259    34876    guides    TABLE       CREATE TABLE public.guides (
    id integer NOT NULL,
    title character varying(255),
    excerpt text,
    slug character varying(255),
    content text,
    "readingTime" character varying(255),
    tag integer,
    category integer,
    subcategory integer,
    locale character varying(255),
    published_at timestamp with time zone,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.guides;
       public         heap    postgres    false            P           1259    34889    guides__localizations    TABLE     {   CREATE TABLE public.guides__localizations (
    id integer NOT NULL,
    guide_id integer,
    related_guide_id integer
);
 )   DROP TABLE public.guides__localizations;
       public         heap    postgres    false            O           1259    34888    guides__localizations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.guides__localizations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.guides__localizations_id_seq;
       public          postgres    false    336            0           0    0    guides__localizations_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.guides__localizations_id_seq OWNED BY public.guides__localizations.id;
          public          postgres    false    335            M           1259    34875    guides_id_seq    SEQUENCE     �   CREATE SEQUENCE public.guides_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.guides_id_seq;
       public          postgres    false    334            1           0    0    guides_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.guides_id_seq OWNED BY public.guides.id;
          public          postgres    false    333            X           1259    34923    guides_singles    TABLE     0  CREATE TABLE public.guides_singles (
    id integer NOT NULL,
    "Title" character varying(255),
    "Description" character varying(255),
    "BtnShowMore" character varying(255),
    locale character varying(255),
    published_at timestamp with time zone,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    title character varying(255),
    description character varying(255),
    "btnShowMore" character varying(255)
);
 "   DROP TABLE public.guides_singles;
       public         heap    postgres    false            Z           1259    34934    guides_singles__localizations    TABLE     �   CREATE TABLE public.guides_singles__localizations (
    id integer NOT NULL,
    guides_single_id integer,
    "guides-single_id" integer
);
 1   DROP TABLE public.guides_singles__localizations;
       public         heap    postgres    false            Y           1259    34933 $   guides_singles__localizations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.guides_singles__localizations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.guides_singles__localizations_id_seq;
       public          postgres    false    346            2           0    0 $   guides_singles__localizations_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.guides_singles__localizations_id_seq OWNED BY public.guides_singles__localizations.id;
          public          postgres    false    345            \           1259    34941    guides_singles_components    TABLE       CREATE TABLE public.guides_singles_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    guides_single_id integer NOT NULL
);
 -   DROP TABLE public.guides_singles_components;
       public         heap    postgres    false            [           1259    34940     guides_singles_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.guides_singles_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.guides_singles_components_id_seq;
       public          postgres    false    348            3           0    0     guides_singles_components_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.guides_singles_components_id_seq OWNED BY public.guides_singles_components.id;
          public          postgres    false    347            W           1259    34922    guides_singles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.guides_singles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.guides_singles_id_seq;
       public          postgres    false    344            4           0    0    guides_singles_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.guides_singles_id_seq OWNED BY public.guides_singles.id;
          public          postgres    false    343            �            1259    34366 
   home_pages    TABLE     @  CREATE TABLE public.home_pages (
    id integer NOT NULL,
    locale character varying(255),
    published_at timestamp with time zone,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.home_pages;
       public         heap    postgres    false            �            1259    34375    home_pages__localizations    TABLE     �   CREATE TABLE public.home_pages__localizations (
    id integer NOT NULL,
    home_page_id integer,
    "home-page_id" integer
);
 -   DROP TABLE public.home_pages__localizations;
       public         heap    postgres    false            �            1259    34374     home_pages__localizations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.home_pages__localizations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.home_pages__localizations_id_seq;
       public          postgres    false    242            5           0    0     home_pages__localizations_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.home_pages__localizations_id_seq OWNED BY public.home_pages__localizations.id;
          public          postgres    false    241            �            1259    34382    home_pages_components    TABLE     
  CREATE TABLE public.home_pages_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    home_page_id integer NOT NULL
);
 )   DROP TABLE public.home_pages_components;
       public         heap    postgres    false            �            1259    34381    home_pages_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.home_pages_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.home_pages_components_id_seq;
       public          postgres    false    244            6           0    0    home_pages_components_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.home_pages_components_id_seq OWNED BY public.home_pages_components.id;
          public          postgres    false    243            �            1259    34365    home_pages_id_seq    SEQUENCE     �   CREATE SEQUENCE public.home_pages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.home_pages_id_seq;
       public          postgres    false    240            7           0    0    home_pages_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.home_pages_id_seq OWNED BY public.home_pages.id;
          public          postgres    false    239            �            1259    34190    i18n_locales    TABLE     6  CREATE TABLE public.i18n_locales (
    id integer NOT NULL,
    name character varying(255),
    code character varying(255),
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
     DROP TABLE public.i18n_locales;
       public         heap    postgres    false            �            1259    34189    i18n_locales_id_seq    SEQUENCE     �   CREATE SEQUENCE public.i18n_locales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.i18n_locales_id_seq;
       public          postgres    false    232            8           0    0    i18n_locales_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.i18n_locales_id_seq OWNED BY public.i18n_locales.id;
          public          postgres    false    231            ,           1259    34682 	   libraries    TABLE     �  CREATE TABLE public.libraries (
    id integer NOT NULL,
    title character varying(255),
    description text,
    "btnShowMore" character varying(255),
    published_at timestamp with time zone,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    locale character varying(255)
);
    DROP TABLE public.libraries;
       public         heap    postgres    false            0           1259    34708    libraries__localizations    TABLE     �   CREATE TABLE public.libraries__localizations (
    id integer NOT NULL,
    library_id integer,
    related_library_id integer
);
 ,   DROP TABLE public.libraries__localizations;
       public         heap    postgres    false            /           1259    34707    libraries__localizations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.libraries__localizations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.libraries__localizations_id_seq;
       public          postgres    false    304            9           0    0    libraries__localizations_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.libraries__localizations_id_seq OWNED BY public.libraries__localizations.id;
          public          postgres    false    303            .           1259    34693    libraries_components    TABLE       CREATE TABLE public.libraries_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    library_id integer NOT NULL
);
 (   DROP TABLE public.libraries_components;
       public         heap    postgres    false            -           1259    34692    libraries_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.libraries_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.libraries_components_id_seq;
       public          postgres    false    302            :           0    0    libraries_components_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.libraries_components_id_seq OWNED BY public.libraries_components.id;
          public          postgres    false    301            +           1259    34681    libraries_id_seq    SEQUENCE     �   CREATE SEQUENCE public.libraries_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.libraries_id_seq;
       public          postgres    false    300            ;           0    0    libraries_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.libraries_id_seq OWNED BY public.libraries.id;
          public          postgres    false    299            f           1259    42976 
   not_founds    TABLE     b  CREATE TABLE public.not_founds (
    id integer NOT NULL,
    title character varying(255),
    locale character varying(255),
    published_at timestamp with time zone,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.not_founds;
       public         heap    postgres    false            h           1259    42987    not_founds__localizations    TABLE     �   CREATE TABLE public.not_founds__localizations (
    id integer NOT NULL,
    not_found_id integer,
    "not-found_id" integer
);
 -   DROP TABLE public.not_founds__localizations;
       public         heap    postgres    false            g           1259    42986     not_founds__localizations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.not_founds__localizations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.not_founds__localizations_id_seq;
       public          postgres    false    360            <           0    0     not_founds__localizations_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.not_founds__localizations_id_seq OWNED BY public.not_founds__localizations.id;
          public          postgres    false    359            j           1259    42994    not_founds_components    TABLE     
  CREATE TABLE public.not_founds_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    not_found_id integer NOT NULL
);
 )   DROP TABLE public.not_founds_components;
       public         heap    postgres    false            i           1259    42993    not_founds_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.not_founds_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.not_founds_components_id_seq;
       public          postgres    false    362            =           0    0    not_founds_components_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.not_founds_components_id_seq OWNED BY public.not_founds_components.id;
          public          postgres    false    361            e           1259    42975    not_founds_id_seq    SEQUENCE     �   CREATE SEQUENCE public.not_founds_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.not_founds_id_seq;
       public          postgres    false    358            >           0    0    not_founds_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.not_founds_id_seq OWNED BY public.not_founds.id;
          public          postgres    false    357            �            1259    34119    strapi_administrator    TABLE     �  CREATE TABLE public.strapi_administrator (
    id integer NOT NULL,
    firstname character varying(255),
    lastname character varying(255),
    username character varying(255),
    email character varying(255) NOT NULL,
    password character varying(255),
    "resetPasswordToken" character varying(255),
    "registrationToken" character varying(255),
    "isActive" boolean,
    blocked boolean,
    "preferedLanguage" character varying(255)
);
 (   DROP TABLE public.strapi_administrator;
       public         heap    postgres    false            �            1259    34118    strapi_administrator_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_administrator_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.strapi_administrator_id_seq;
       public          postgres    false    218            ?           0    0    strapi_administrator_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.strapi_administrator_id_seq OWNED BY public.strapi_administrator.id;
          public          postgres    false    217            �            1259    34093    strapi_permission    TABLE     W  CREATE TABLE public.strapi_permission (
    id integer NOT NULL,
    action character varying(255) NOT NULL,
    subject character varying(255),
    properties jsonb,
    conditions jsonb,
    role integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
 %   DROP TABLE public.strapi_permission;
       public         heap    postgres    false            �            1259    34092    strapi_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.strapi_permission_id_seq;
       public          postgres    false    214            @           0    0    strapi_permission_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.strapi_permission_id_seq OWNED BY public.strapi_permission.id;
          public          postgres    false    213            �            1259    34104    strapi_role    TABLE     ?  CREATE TABLE public.strapi_role (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    code character varying(255) NOT NULL,
    description character varying(255),
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.strapi_role;
       public         heap    postgres    false            �            1259    34103    strapi_role_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_role_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.strapi_role_id_seq;
       public          postgres    false    216            A           0    0    strapi_role_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.strapi_role_id_seq OWNED BY public.strapi_role.id;
          public          postgres    false    215            �            1259    34130    strapi_users_roles    TABLE     n   CREATE TABLE public.strapi_users_roles (
    id integer NOT NULL,
    user_id integer,
    role_id integer
);
 &   DROP TABLE public.strapi_users_roles;
       public         heap    postgres    false            �            1259    34129    strapi_users_roles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_users_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.strapi_users_roles_id_seq;
       public          postgres    false    220            B           0    0    strapi_users_roles_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.strapi_users_roles_id_seq OWNED BY public.strapi_users_roles.id;
          public          postgres    false    219            �            1259    34084    strapi_webhooks    TABLE     �   CREATE TABLE public.strapi_webhooks (
    id integer NOT NULL,
    name character varying(255),
    url text,
    headers jsonb,
    events jsonb,
    enabled boolean
);
 #   DROP TABLE public.strapi_webhooks;
       public         heap    postgres    false            �            1259    34083    strapi_webhooks_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_webhooks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.strapi_webhooks_id_seq;
       public          postgres    false    212            C           0    0    strapi_webhooks_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.strapi_webhooks_id_seq OWNED BY public.strapi_webhooks.id;
          public          postgres    false    211            8           1259    34748    subcategorias    TABLE     �  CREATE TABLE public.subcategorias (
    id integer NOT NULL,
    name character varying(255),
    slug character varying(255),
    locale character varying(255),
    published_at timestamp with time zone,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
 !   DROP TABLE public.subcategorias;
       public         heap    postgres    false            :           1259    34761    subcategorias__localizations    TABLE     �   CREATE TABLE public.subcategorias__localizations (
    id integer NOT NULL,
    subcategoria_id integer,
    related_subcategoria_id integer
);
 0   DROP TABLE public.subcategorias__localizations;
       public         heap    postgres    false            9           1259    34760 #   subcategorias__localizations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.subcategorias__localizations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.subcategorias__localizations_id_seq;
       public          postgres    false    314            D           0    0 #   subcategorias__localizations_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.subcategorias__localizations_id_seq OWNED BY public.subcategorias__localizations.id;
          public          postgres    false    313            7           1259    34747    subcategorias_id_seq    SEQUENCE     �   CREATE SEQUENCE public.subcategorias_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.subcategorias_id_seq;
       public          postgres    false    312            E           0    0    subcategorias_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.subcategorias_id_seq OWNED BY public.subcategorias.id;
          public          postgres    false    311                       1259    34550    tags    TABLE     |  CREATE TABLE public.tags (
    id integer NOT NULL,
    name character varying(255),
    slug character varying(255),
    locale character varying(255),
    published_at timestamp with time zone,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.tags;
       public         heap    postgres    false                       1259    34570    tags__localizations    TABLE     u   CREATE TABLE public.tags__localizations (
    id integer NOT NULL,
    tag_id integer,
    related_tag_id integer
);
 '   DROP TABLE public.tags__localizations;
       public         heap    postgres    false                       1259    34569    tags__localizations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tags__localizations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.tags__localizations_id_seq;
       public          postgres    false    280            F           0    0    tags__localizations_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.tags__localizations_id_seq OWNED BY public.tags__localizations.id;
          public          postgres    false    279                       1259    34549    tags_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tags_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.tags_id_seq;
       public          postgres    false    276            G           0    0    tags_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.tags_id_seq OWNED BY public.tags.id;
          public          postgres    false    275            �            1259    34170    upload_file    TABLE     �  CREATE TABLE public.upload_file (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    "alternativeText" character varying(255),
    caption character varying(255),
    width integer,
    height integer,
    formats jsonb,
    hash character varying(255) NOT NULL,
    ext character varying(255),
    mime character varying(255) NOT NULL,
    size numeric(10,2) NOT NULL,
    url character varying(255) NOT NULL,
    "previewUrl" character varying(255),
    provider character varying(255) NOT NULL,
    provider_metadata jsonb,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.upload_file;
       public         heap    postgres    false            �            1259    34169    upload_file_id_seq    SEQUENCE     �   CREATE SEQUENCE public.upload_file_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.upload_file_id_seq;
       public          postgres    false    228            H           0    0    upload_file_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.upload_file_id_seq OWNED BY public.upload_file.id;
          public          postgres    false    227            �            1259    34181    upload_file_morph    TABLE     �   CREATE TABLE public.upload_file_morph (
    id integer NOT NULL,
    upload_file_id integer,
    related_id integer,
    related_type text,
    field text,
    "order" integer
);
 %   DROP TABLE public.upload_file_morph;
       public         heap    postgres    false            �            1259    34180    upload_file_morph_id_seq    SEQUENCE     �   CREATE SEQUENCE public.upload_file_morph_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.upload_file_morph_id_seq;
       public          postgres    false    230            I           0    0    upload_file_morph_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.upload_file_morph_id_seq OWNED BY public.upload_file_morph.id;
          public          postgres    false    229            �            1259    34137    users-permissions_permission    TABLE     Y  CREATE TABLE public."users-permissions_permission" (
    id integer NOT NULL,
    type character varying(255) NOT NULL,
    controller character varying(255) NOT NULL,
    action character varying(255) NOT NULL,
    enabled boolean NOT NULL,
    policy character varying(255),
    role integer,
    created_by integer,
    updated_by integer
);
 2   DROP TABLE public."users-permissions_permission";
       public         heap    postgres    false            �            1259    34136 #   users-permissions_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public."users-permissions_permission_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public."users-permissions_permission_id_seq";
       public          postgres    false    222            J           0    0 #   users-permissions_permission_id_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public."users-permissions_permission_id_seq" OWNED BY public."users-permissions_permission".id;
          public          postgres    false    221            �            1259    34146    users-permissions_role    TABLE     �   CREATE TABLE public."users-permissions_role" (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    description character varying(255),
    type character varying(255),
    created_by integer,
    updated_by integer
);
 ,   DROP TABLE public."users-permissions_role";
       public         heap    postgres    false            �            1259    34145    users-permissions_role_id_seq    SEQUENCE     �   CREATE SEQUENCE public."users-permissions_role_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public."users-permissions_role_id_seq";
       public          postgres    false    224            K           0    0    users-permissions_role_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public."users-permissions_role_id_seq" OWNED BY public."users-permissions_role".id;
          public          postgres    false    223            �            1259    34157    users-permissions_user    TABLE     B  CREATE TABLE public."users-permissions_user" (
    id integer NOT NULL,
    username character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    provider character varying(255),
    password character varying(255),
    "resetPasswordToken" character varying(255),
    "confirmationToken" character varying(255),
    confirmed boolean,
    blocked boolean,
    role integer,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
 ,   DROP TABLE public."users-permissions_user";
       public         heap    postgres    false            �            1259    34156    users-permissions_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public."users-permissions_user_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public."users-permissions_user_id_seq";
       public          postgres    false    226            L           0    0    users-permissions_user_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public."users-permissions_user_id_seq" OWNED BY public."users-permissions_user".id;
          public          postgres    false    225            �           2604    42955    404s id    DEFAULT     f   ALTER TABLE ONLY public."404s" ALTER COLUMN id SET DEFAULT nextval('public."404s_id_seq"'::regclass);
 8   ALTER TABLE public."404s" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    353    354    354            �           2604    42964    404s_components id    DEFAULT     |   ALTER TABLE ONLY public."404s_components" ALTER COLUMN id SET DEFAULT nextval('public."404s_components_id_seq"'::regclass);
 C   ALTER TABLE public."404s_components" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    356    355    356            {           2604    34771    Subcategory id    DEFAULT     t   ALTER TABLE ONLY public."Subcategory" ALTER COLUMN id SET DEFAULT nextval('public."Subcategory_id_seq"'::regclass);
 ?   ALTER TABLE public."Subcategory" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    316    315    316            ~           2604    34784    Subcategory__localizations id    DEFAULT     �   ALTER TABLE ONLY public."Subcategory__localizations" ALTER COLUMN id SET DEFAULT nextval('public."Subcategory__localizations_id_seq"'::regclass);
 N   ALTER TABLE public."Subcategory__localizations" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    317    318    318            �           2604    59267 	   abouts id    DEFAULT     f   ALTER TABLE ONLY public.abouts ALTER COLUMN id SET DEFAULT nextval('public.abouts_id_seq'::regclass);
 8   ALTER TABLE public.abouts ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    377    378    378            �           2604    59278    abouts__localizations id    DEFAULT     �   ALTER TABLE ONLY public.abouts__localizations ALTER COLUMN id SET DEFAULT nextval('public.abouts__localizations_id_seq'::regclass);
 G   ALTER TABLE public.abouts__localizations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    379    380    380            �           2604    59285    abouts_components id    DEFAULT     |   ALTER TABLE ONLY public.abouts_components ALTER COLUMN id SET DEFAULT nextval('public.abouts_components_id_seq'::regclass);
 C   ALTER TABLE public.abouts_components ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    381    382    382            �           2604    34907    accessible_tos id    DEFAULT     v   ALTER TABLE ONLY public.accessible_tos ALTER COLUMN id SET DEFAULT nextval('public.accessible_tos_id_seq'::regclass);
 @   ALTER TABLE public.accessible_tos ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    339    340    340            �           2604    34918     accessible_tos__localizations id    DEFAULT     �   ALTER TABLE ONLY public.accessible_tos__localizations ALTER COLUMN id SET DEFAULT nextval('public.accessible_tos__localizations_id_seq'::regclass);
 O   ALTER TABLE public.accessible_tos__localizations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    341    342    342            �           2604    42939 /   accessible_tos_guides__guides_accessible_tos id    DEFAULT     �   ALTER TABLE ONLY public.accessible_tos_guides__guides_accessible_tos ALTER COLUMN id SET DEFAULT nextval('public.accessible_tos_guides__guides_accessible_tos_id_seq'::regclass);
 ^   ALTER TABLE public.accessible_tos_guides__guides_accessible_tos ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    352    351    352            I           2604    34429 
   authors id    DEFAULT     h   ALTER TABLE ONLY public.authors ALTER COLUMN id SET DEFAULT nextval('public.authors_id_seq'::regclass);
 9   ALTER TABLE public.authors ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    252    251    252            L           2604    34442    authors__localizations id    DEFAULT     �   ALTER TABLE ONLY public.authors__localizations ALTER COLUMN id SET DEFAULT nextval('public.authors__localizations_id_seq'::regclass);
 H   ALTER TABLE public.authors__localizations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    253    254    254            �           2604    59314    be_parts id    DEFAULT     j   ALTER TABLE ONLY public.be_parts ALTER COLUMN id SET DEFAULT nextval('public.be_parts_id_seq'::regclass);
 :   ALTER TABLE public.be_parts ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    385    386    386            �           2604    59323    be_parts_components id    DEFAULT     �   ALTER TABLE ONLY public.be_parts_components ALTER COLUMN id SET DEFAULT nextval('public.be_parts_components_id_seq'::regclass);
 E   ALTER TABLE public.be_parts_components ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    388    387    388            M           2604    34450    cases id    DEFAULT     d   ALTER TABLE ONLY public.cases ALTER COLUMN id SET DEFAULT nextval('public.cases_id_seq'::regclass);
 7   ALTER TABLE public.cases ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    256    255    256                       2604    34798    casesSingle id    DEFAULT     t   ALTER TABLE ONLY public."casesSingle" ALTER COLUMN id SET DEFAULT nextval('public."casesSingle_id_seq"'::regclass);
 ?   ALTER TABLE public."casesSingle" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    320    319    320            �           2604    34809    casesSingle__localizations id    DEFAULT     �   ALTER TABLE ONLY public."casesSingle__localizations" ALTER COLUMN id SET DEFAULT nextval('public."casesSingle__localizations_id_seq"'::regclass);
 N   ALTER TABLE public."casesSingle__localizations" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    321    322    322            �           2604    34816    casesSingle_components id    DEFAULT     �   ALTER TABLE ONLY public."casesSingle_components" ALTER COLUMN id SET DEFAULT nextval('public."casesSingle_components_id_seq"'::regclass);
 J   ALTER TABLE public."casesSingle_components" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    323    324    324            P           2604    34463    cases__localizations id    DEFAULT     �   ALTER TABLE ONLY public.cases__localizations ALTER COLUMN id SET DEFAULT nextval('public.cases__localizations_id_seq'::regclass);
 F   ALTER TABLE public.cases__localizations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    258    257    258            �           2604    34997 3   cases_content_libraries__content_libraries_cases id    DEFAULT     �   ALTER TABLE ONLY public.cases_content_libraries__content_libraries_cases ALTER COLUMN id SET DEFAULT nextval('public.cases_content_libraries__content_libraries_cases_id_seq'::regclass);
 b   ALTER TABLE public.cases_content_libraries__content_libraries_cases ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    349    350    350            r           2604    34718    cases_designs id    DEFAULT     t   ALTER TABLE ONLY public.cases_designs ALTER COLUMN id SET DEFAULT nextval('public.cases_designs_id_seq'::regclass);
 ?   ALTER TABLE public.cases_designs ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    305    306    306            u           2604    34729    cases_designs__localizations id    DEFAULT     �   ALTER TABLE ONLY public.cases_designs__localizations ALTER COLUMN id SET DEFAULT nextval('public.cases_designs__localizations_id_seq'::regclass);
 N   ALTER TABLE public.cases_designs__localizations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    307    308    308            v           2604    34736    cases_designs_components id    DEFAULT     �   ALTER TABLE ONLY public.cases_designs_components ALTER COLUMN id SET DEFAULT nextval('public.cases_designs_components_id_seq'::regclass);
 J   ALTER TABLE public.cases_designs_components ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    310    309    310            �           2604    34831    cases_singles id    DEFAULT     t   ALTER TABLE ONLY public.cases_singles ALTER COLUMN id SET DEFAULT nextval('public.cases_singles_id_seq'::regclass);
 ?   ALTER TABLE public.cases_singles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    326    325    326            �           2604    34842    cases_singles__localizations id    DEFAULT     �   ALTER TABLE ONLY public.cases_singles__localizations ALTER COLUMN id SET DEFAULT nextval('public.cases_singles__localizations_id_seq'::regclass);
 N   ALTER TABLE public.cases_singles__localizations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    328    327    328            �           2604    34849    cases_singles_components id    DEFAULT     �   ALTER TABLE ONLY public.cases_singles_components ALTER COLUMN id SET DEFAULT nextval('public.cases_singles_components_id_seq'::regclass);
 J   ALTER TABLE public.cases_singles_components ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    329    330    330            b           2604    34566    cases_tags__tags_cases id    DEFAULT     �   ALTER TABLE ONLY public.cases_tags__tags_cases ALTER COLUMN id SET DEFAULT nextval('public.cases_tags__tags_cases_id_seq'::regclass);
 H   ALTER TABLE public.cases_tags__tags_cases ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    277    278    278            Q           2604    34471    categories id    DEFAULT     n   ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);
 <   ALTER TABLE public.categories ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    259    260    260            T           2604    34484    categories__localizations id    DEFAULT     �   ALTER TABLE ONLY public.categories__localizations ALTER COLUMN id SET DEFAULT nextval('public.categories__localizations_id_seq'::regclass);
 K   ALTER TABLE public.categories__localizations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    262    261    262            d           2604    34581 =   categories_content_libraries__content_libraries_categories id    DEFAULT     �   ALTER TABLE ONLY public.categories_content_libraries__content_libraries_categories ALTER COLUMN id SET DEFAULT nextval('public.categories_content_libraries__content_libraries_categori_id_seq'::regclass);
 l   ALTER TABLE public.categories_content_libraries__content_libraries_categories ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    282    281    282            �           2604    51107    checklist_singles id    DEFAULT     |   ALTER TABLE ONLY public.checklist_singles ALTER COLUMN id SET DEFAULT nextval('public.checklist_singles_id_seq'::regclass);
 C   ALTER TABLE public.checklist_singles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    371    372    372            �           2604    51118    checklist_singles_components id    DEFAULT     �   ALTER TABLE ONLY public.checklist_singles_components ALTER COLUMN id SET DEFAULT nextval('public.checklist_singles_components_id_seq'::regclass);
 N   ALTER TABLE public.checklist_singles_components ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    374    373    374            �           2604    51072    checklists id    DEFAULT     n   ALTER TABLE ONLY public.checklists ALTER COLUMN id SET DEFAULT nextval('public.checklists_id_seq'::regclass);
 <   ALTER TABLE public.checklists ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    366    365    366            �           2604    51083    checklists__localizations id    DEFAULT     �   ALTER TABLE ONLY public.checklists__localizations ALTER COLUMN id SET DEFAULT nextval('public.checklists__localizations_id_seq'::regclass);
 K   ALTER TABLE public.checklists__localizations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    368    367    368            �           2604    51090    checklists_components id    DEFAULT     �   ALTER TABLE ONLY public.checklists_components ALTER COLUMN id SET DEFAULT nextval('public.checklists_components_id_seq'::regclass);
 G   ALTER TABLE public.checklists_components ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    370    369    370            �           2604    59259 #   checklists_tags__tags_checklists id    DEFAULT     �   ALTER TABLE ONLY public.checklists_tags__tags_checklists ALTER COLUMN id SET DEFAULT nextval('public.checklists_tags__tags_checklists_id_seq'::regclass);
 R   ALTER TABLE public.checklists_tags__tags_checklists ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    376    375    376            �           2604    59360     components_be_part_checklists id    DEFAULT     �   ALTER TABLE ONLY public.components_be_part_checklists ALTER COLUMN id SET DEFAULT nextval('public.components_be_part_checklists_id_seq'::regclass);
 O   ALTER TABLE public.components_be_part_checklists ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    394    393    394            �           2604    59305    components_be_part_heroes id    DEFAULT     �   ALTER TABLE ONLY public.components_be_part_heroes ALTER COLUMN id SET DEFAULT nextval('public.components_be_part_heroes_id_seq'::regclass);
 K   ALTER TABLE public.components_be_part_heroes ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    384    383    384            �           2604    59337    components_be_part_learns id    DEFAULT     �   ALTER TABLE ONLY public.components_be_part_learns ALTER COLUMN id SET DEFAULT nextval('public.components_be_part_learns_id_seq'::regclass);
 K   ALTER TABLE public.components_be_part_learns ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    389    390    390            �           2604    59347 !   components_be_part_networkings id    DEFAULT     �   ALTER TABLE ONLY public.components_be_part_networkings ALTER COLUMN id SET DEFAULT nextval('public.components_be_part_networkings_id_seq'::regclass);
 P   ALTER TABLE public.components_be_part_networkings ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    392    391    392            >           2604    34337    components_button_btns id    DEFAULT     �   ALTER TABLE ONLY public.components_button_btns ALTER COLUMN id SET DEFAULT nextval('public.components_button_btns_id_seq'::regclass);
 H   ALTER TABLE public.components_button_btns ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    233    234            �           2604    51063 "   components_checklist_accordions id    DEFAULT     �   ALTER TABLE ONLY public.components_checklist_accordions ALTER COLUMN id SET DEFAULT nextval('public.components_checklist_accordions_id_seq'::regclass);
 Q   ALTER TABLE public.components_checklist_accordions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    364    363    364            e           2604    34609 &   components_home_page_cases_sections id    DEFAULT     �   ALTER TABLE ONLY public.components_home_page_cases_sections ALTER COLUMN id SET DEFAULT nextval('public.components_home_page_cases_sections_id_seq'::regclass);
 U   ALTER TABLE public.components_home_page_cases_sections ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    283    284    284            f           2604    34616 -   components_home_page_cases_sections__cases id    DEFAULT     �   ALTER TABLE ONLY public.components_home_page_cases_sections__cases ALTER COLUMN id SET DEFAULT nextval('public.components_home_page_cases_sections__cases_id_seq'::regclass);
 \   ALTER TABLE public.components_home_page_cases_sections__cases ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    285    286    286            �           2604    34864 1   components_home_page_cases_sections_components id    DEFAULT     �   ALTER TABLE ONLY public.components_home_page_cases_sections_components ALTER COLUMN id SET DEFAULT nextval('public.components_home_page_cases_sections_components_id_seq'::regclass);
 `   ALTER TABLE public.components_home_page_cases_sections_components ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    331    332    332            g           2604    34623    components_home_page_ctas id    DEFAULT     �   ALTER TABLE ONLY public.components_home_page_ctas ALTER COLUMN id SET DEFAULT nextval('public.components_home_page_ctas_id_seq'::regclass);
 K   ALTER TABLE public.components_home_page_ctas ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    287    288    288            h           2604    34630 '   components_home_page_ctas_components id    DEFAULT     �   ALTER TABLE ONLY public.components_home_page_ctas_components ALTER COLUMN id SET DEFAULT nextval('public.components_home_page_ctas_components_id_seq'::regclass);
 V   ALTER TABLE public.components_home_page_ctas_components ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    290    289    290            F           2604    34399 #   components_home_page_guide_cards id    DEFAULT     �   ALTER TABLE ONLY public.components_home_page_guide_cards ALTER COLUMN id SET DEFAULT nextval('public.components_home_page_guide_cards_id_seq'::regclass);
 R   ALTER TABLE public.components_home_page_guide_cards ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    245    246    246            G           2604    34408 '   components_home_page_guides_sections id    DEFAULT     �   ALTER TABLE ONLY public.components_home_page_guides_sections ALTER COLUMN id SET DEFAULT nextval('public.components_home_page_guides_sections_id_seq'::regclass);
 V   ALTER TABLE public.components_home_page_guides_sections ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    247    248    248            H           2604    34415 2   components_home_page_guides_sections_components id    DEFAULT     �   ALTER TABLE ONLY public.components_home_page_guides_sections_components ALTER COLUMN id SET DEFAULT nextval('public.components_home_page_guides_sections_components_id_seq'::regclass);
 a   ALTER TABLE public.components_home_page_guides_sections_components ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    249    250    250            ?           2604    34346 %   components_home_page_hero_sections id    DEFAULT     �   ALTER TABLE ONLY public.components_home_page_hero_sections ALTER COLUMN id SET DEFAULT nextval('public.components_home_page_hero_sections_id_seq'::regclass);
 T   ALTER TABLE public.components_home_page_hero_sections ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    235    236    236            @           2604    34355 0   components_home_page_hero_sections_components id    DEFAULT     �   ALTER TABLE ONLY public.components_home_page_hero_sections_components ALTER COLUMN id SET DEFAULT nextval('public.components_home_page_hero_sections_components_id_seq'::regclass);
 _   ALTER TABLE public.components_home_page_hero_sections_components ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    238    237    238            i           2604    34644 (   components_home_page_library_sections id    DEFAULT     �   ALTER TABLE ONLY public.components_home_page_library_sections ALTER COLUMN id SET DEFAULT nextval('public.components_home_page_library_sections_id_seq'::regclass);
 W   ALTER TABLE public.components_home_page_library_sections ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    291    292    292            j           2604    34651 ;   components_home_page_library_sections__content_libraries id    DEFAULT     �   ALTER TABLE ONLY public.components_home_page_library_sections__content_libraries ALTER COLUMN id SET DEFAULT nextval('public.components_home_page_library_sections__content_libraries_id_seq'::regclass);
 j   ALTER TABLE public.components_home_page_library_sections__content_libraries ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    293    294    294            k           2604    34658 3   components_home_page_library_sections_components id    DEFAULT     �   ALTER TABLE ONLY public.components_home_page_library_sections_components ALTER COLUMN id SET DEFAULT nextval('public.components_home_page_library_sections_components_id_seq'::regclass);
 b   ALTER TABLE public.components_home_page_library_sections_components ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    295    296    296            l           2604    34678    components_library_empties id    DEFAULT     �   ALTER TABLE ONLY public.components_library_empties ALTER COLUMN id SET DEFAULT nextval('public.components_library_empties_id_seq'::regclass);
 L   ALTER TABLE public.components_library_empties ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    298    297    298            U           2604    34491    components_library_links id    DEFAULT     �   ALTER TABLE ONLY public.components_library_links ALTER COLUMN id SET DEFAULT nextval('public.components_library_links_id_seq'::regclass);
 J   ALTER TABLE public.components_library_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    264    263    264            V           2604    34500    content_libraries id    DEFAULT     |   ALTER TABLE ONLY public.content_libraries ALTER COLUMN id SET DEFAULT nextval('public.content_libraries_id_seq'::regclass);
 C   ALTER TABLE public.content_libraries ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    266    265    266            Y           2604    34511 #   content_libraries__localizations id    DEFAULT     �   ALTER TABLE ONLY public.content_libraries__localizations ALTER COLUMN id SET DEFAULT nextval('public.content_libraries__localizations_id_seq'::regclass);
 R   ALTER TABLE public.content_libraries__localizations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    267    268    268            Z           2604    34518    content_libraries_components id    DEFAULT     �   ALTER TABLE ONLY public.content_libraries_components ALTER COLUMN id SET DEFAULT nextval('public.content_libraries_components_id_seq'::regclass);
 N   ALTER TABLE public.content_libraries_components ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    270    269    270            �           2604    34900 5   content_libraries_guides__guides_content_libraries id    DEFAULT     �   ALTER TABLE ONLY public.content_libraries_guides__guides_content_libraries ALTER COLUMN id SET DEFAULT nextval('public.content_libraries_guides__guides_content_libraries_id_seq'::regclass);
 d   ALTER TABLE public.content_libraries_guides__guides_content_libraries ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    337    338    338            [           2604    34533    content_types id    DEFAULT     t   ALTER TABLE ONLY public.content_types ALTER COLUMN id SET DEFAULT nextval('public.content_types_id_seq'::regclass);
 ?   ALTER TABLE public.content_types ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    272    271    272            ^           2604    34546    content_types__localizations id    DEFAULT     �   ALTER TABLE ONLY public.content_types__localizations ALTER COLUMN id SET DEFAULT nextval('public.content_types__localizations_id_seq'::regclass);
 N   ALTER TABLE public.content_types__localizations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    274    273    274            (           2604    34078    core_store id    DEFAULT     n   ALTER TABLE ONLY public.core_store ALTER COLUMN id SET DEFAULT nextval('public.core_store_id_seq'::regclass);
 <   ALTER TABLE public.core_store ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    210    210            �           2604    34879 	   guides id    DEFAULT     f   ALTER TABLE ONLY public.guides ALTER COLUMN id SET DEFAULT nextval('public.guides_id_seq'::regclass);
 8   ALTER TABLE public.guides ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    334    333    334            �           2604    34892    guides__localizations id    DEFAULT     �   ALTER TABLE ONLY public.guides__localizations ALTER COLUMN id SET DEFAULT nextval('public.guides__localizations_id_seq'::regclass);
 G   ALTER TABLE public.guides__localizations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    335    336    336            �           2604    34926    guides_singles id    DEFAULT     v   ALTER TABLE ONLY public.guides_singles ALTER COLUMN id SET DEFAULT nextval('public.guides_singles_id_seq'::regclass);
 @   ALTER TABLE public.guides_singles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    343    344    344            �           2604    34937     guides_singles__localizations id    DEFAULT     �   ALTER TABLE ONLY public.guides_singles__localizations ALTER COLUMN id SET DEFAULT nextval('public.guides_singles__localizations_id_seq'::regclass);
 O   ALTER TABLE public.guides_singles__localizations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    345    346    346            �           2604    34944    guides_singles_components id    DEFAULT     �   ALTER TABLE ONLY public.guides_singles_components ALTER COLUMN id SET DEFAULT nextval('public.guides_singles_components_id_seq'::regclass);
 K   ALTER TABLE public.guides_singles_components ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    347    348    348            A           2604    34369    home_pages id    DEFAULT     n   ALTER TABLE ONLY public.home_pages ALTER COLUMN id SET DEFAULT nextval('public.home_pages_id_seq'::regclass);
 <   ALTER TABLE public.home_pages ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    240    239    240            D           2604    34378    home_pages__localizations id    DEFAULT     �   ALTER TABLE ONLY public.home_pages__localizations ALTER COLUMN id SET DEFAULT nextval('public.home_pages__localizations_id_seq'::regclass);
 K   ALTER TABLE public.home_pages__localizations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    241    242    242            E           2604    34385    home_pages_components id    DEFAULT     �   ALTER TABLE ONLY public.home_pages_components ALTER COLUMN id SET DEFAULT nextval('public.home_pages_components_id_seq'::regclass);
 G   ALTER TABLE public.home_pages_components ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    244    243    244            ;           2604    34193    i18n_locales id    DEFAULT     r   ALTER TABLE ONLY public.i18n_locales ALTER COLUMN id SET DEFAULT nextval('public.i18n_locales_id_seq'::regclass);
 >   ALTER TABLE public.i18n_locales ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    231    232            m           2604    34685    libraries id    DEFAULT     l   ALTER TABLE ONLY public.libraries ALTER COLUMN id SET DEFAULT nextval('public.libraries_id_seq'::regclass);
 ;   ALTER TABLE public.libraries ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    300    299    300            q           2604    34711    libraries__localizations id    DEFAULT     �   ALTER TABLE ONLY public.libraries__localizations ALTER COLUMN id SET DEFAULT nextval('public.libraries__localizations_id_seq'::regclass);
 J   ALTER TABLE public.libraries__localizations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    304    303    304            p           2604    34696    libraries_components id    DEFAULT     �   ALTER TABLE ONLY public.libraries_components ALTER COLUMN id SET DEFAULT nextval('public.libraries_components_id_seq'::regclass);
 F   ALTER TABLE public.libraries_components ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    301    302    302            �           2604    42979    not_founds id    DEFAULT     n   ALTER TABLE ONLY public.not_founds ALTER COLUMN id SET DEFAULT nextval('public.not_founds_id_seq'::regclass);
 <   ALTER TABLE public.not_founds ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    357    358    358            �           2604    42990    not_founds__localizations id    DEFAULT     �   ALTER TABLE ONLY public.not_founds__localizations ALTER COLUMN id SET DEFAULT nextval('public.not_founds__localizations_id_seq'::regclass);
 K   ALTER TABLE public.not_founds__localizations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    359    360    360            �           2604    42997    not_founds_components id    DEFAULT     �   ALTER TABLE ONLY public.not_founds_components ALTER COLUMN id SET DEFAULT nextval('public.not_founds_components_id_seq'::regclass);
 G   ALTER TABLE public.not_founds_components ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    361    362    362            0           2604    34122    strapi_administrator id    DEFAULT     �   ALTER TABLE ONLY public.strapi_administrator ALTER COLUMN id SET DEFAULT nextval('public.strapi_administrator_id_seq'::regclass);
 F   ALTER TABLE public.strapi_administrator ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    218    218            *           2604    34096    strapi_permission id    DEFAULT     |   ALTER TABLE ONLY public.strapi_permission ALTER COLUMN id SET DEFAULT nextval('public.strapi_permission_id_seq'::regclass);
 C   ALTER TABLE public.strapi_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    214    214            -           2604    34107    strapi_role id    DEFAULT     p   ALTER TABLE ONLY public.strapi_role ALTER COLUMN id SET DEFAULT nextval('public.strapi_role_id_seq'::regclass);
 =   ALTER TABLE public.strapi_role ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    216    216            1           2604    34133    strapi_users_roles id    DEFAULT     ~   ALTER TABLE ONLY public.strapi_users_roles ALTER COLUMN id SET DEFAULT nextval('public.strapi_users_roles_id_seq'::regclass);
 D   ALTER TABLE public.strapi_users_roles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219    220            )           2604    34087    strapi_webhooks id    DEFAULT     x   ALTER TABLE ONLY public.strapi_webhooks ALTER COLUMN id SET DEFAULT nextval('public.strapi_webhooks_id_seq'::regclass);
 A   ALTER TABLE public.strapi_webhooks ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    211    212            w           2604    34751    subcategorias id    DEFAULT     t   ALTER TABLE ONLY public.subcategorias ALTER COLUMN id SET DEFAULT nextval('public.subcategorias_id_seq'::regclass);
 ?   ALTER TABLE public.subcategorias ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    311    312    312            z           2604    34764    subcategorias__localizations id    DEFAULT     �   ALTER TABLE ONLY public.subcategorias__localizations ALTER COLUMN id SET DEFAULT nextval('public.subcategorias__localizations_id_seq'::regclass);
 N   ALTER TABLE public.subcategorias__localizations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    313    314    314            _           2604    34553    tags id    DEFAULT     b   ALTER TABLE ONLY public.tags ALTER COLUMN id SET DEFAULT nextval('public.tags_id_seq'::regclass);
 6   ALTER TABLE public.tags ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    275    276    276            c           2604    34573    tags__localizations id    DEFAULT     �   ALTER TABLE ONLY public.tags__localizations ALTER COLUMN id SET DEFAULT nextval('public.tags__localizations_id_seq'::regclass);
 E   ALTER TABLE public.tags__localizations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    279    280    280            7           2604    34173    upload_file id    DEFAULT     p   ALTER TABLE ONLY public.upload_file ALTER COLUMN id SET DEFAULT nextval('public.upload_file_id_seq'::regclass);
 =   ALTER TABLE public.upload_file ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    227    228            :           2604    34184    upload_file_morph id    DEFAULT     |   ALTER TABLE ONLY public.upload_file_morph ALTER COLUMN id SET DEFAULT nextval('public.upload_file_morph_id_seq'::regclass);
 C   ALTER TABLE public.upload_file_morph ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    229    230            2           2604    34140    users-permissions_permission id    DEFAULT     �   ALTER TABLE ONLY public."users-permissions_permission" ALTER COLUMN id SET DEFAULT nextval('public."users-permissions_permission_id_seq"'::regclass);
 P   ALTER TABLE public."users-permissions_permission" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    222    222            3           2604    34149    users-permissions_role id    DEFAULT     �   ALTER TABLE ONLY public."users-permissions_role" ALTER COLUMN id SET DEFAULT nextval('public."users-permissions_role_id_seq"'::regclass);
 J   ALTER TABLE public."users-permissions_role" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    223    224            4           2604    34160    users-permissions_user id    DEFAULT     �   ALTER TABLE ONLY public."users-permissions_user" ALTER COLUMN id SET DEFAULT nextval('public."users-permissions_user_id_seq"'::regclass);
 J   ALTER TABLE public."users-permissions_user" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    226    226            �          0    42952    404s 
   TABLE DATA           i   COPY public."404s" (id, title, published_at, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          postgres    false    354   Ö      �          0    42961    404s_components 
   TABLE DATA           g   COPY public."404s_components" (id, field, "order", component_type, component_id, "404_id") FROM stdin;
    public          postgres    false    356   ��      �          0    34768    Subcategory 
   TABLE DATA           �   COPY public."Subcategory" (id, name, slug, locale, published_at, created_by, updated_by, created_at, updated_at, category) FROM stdin;
    public          postgres    false    316   ��      �          0    34781    Subcategory__localizations 
   TABLE DATA           ]   COPY public."Subcategory__localizations" (id, "Subcategory_id", subcategoria_id) FROM stdin;
    public          postgres    false    318   �      �          0    59264    abouts 
   TABLE DATA           �   COPY public.abouts (id, title, subtitle, content, locale, published_at, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          postgres    false    378   I�      �          0    59275    abouts__localizations 
   TABLE DATA           O   COPY public.abouts__localizations (id, about_id, related_about_id) FROM stdin;
    public          postgres    false    380   9�      �          0    59282    abouts_components 
   TABLE DATA           g   COPY public.abouts_components (id, field, "order", component_type, component_id, about_id) FROM stdin;
    public          postgres    false    382   V�      �          0    34904    accessible_tos 
   TABLE DATA           �   COPY public.accessible_tos (id, name, description, locale, published_at, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          postgres    false    340   ��      �          0    34915    accessible_tos__localizations 
   TABLE DATA           a   COPY public.accessible_tos__localizations (id, accessible_to_id, "accessible-to_id") FROM stdin;
    public          postgres    false    342   ��      �          0    42936 ,   accessible_tos_guides__guides_accessible_tos 
   TABLE DATA           h   COPY public.accessible_tos_guides__guides_accessible_tos (id, guide_id, "accessible-to_id") FROM stdin;
    public          postgres    false    352   ��      [          0    34426    authors 
   TABLE DATA           �   COPY public.authors (id, name, role, email, password, slug, locale, published_at, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          postgres    false    252   џ      ]          0    34439    authors__localizations 
   TABLE DATA           R   COPY public.authors__localizations (id, author_id, related_author_id) FROM stdin;
    public          postgres    false    254   �      �          0    59311    be_parts 
   TABLE DATA           d   COPY public.be_parts (id, published_at, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          postgres    false    386   !�      �          0    59320    be_parts_components 
   TABLE DATA           k   COPY public.be_parts_components (id, field, "order", component_type, component_id, be_part_id) FROM stdin;
    public          postgres    false    388   s�      _          0    34447    cases 
   TABLE DATA           �   COPY public.cases (id, title, excerpt, slug, content, "readingTime", locale, published_at, created_by, updated_by, created_at, updated_at, category, author, subcategory) FROM stdin;
    public          postgres    false    256   V�      �          0    34795    casesSingle 
   TABLE DATA           �   COPY public."casesSingle" (id, title, description, "btnShowMore", locale, published_at, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          postgres    false    320   �,      �          0    34806    casesSingle__localizations 
   TABLE DATA           _   COPY public."casesSingle__localizations" (id, "casesSingle_id", "cases-design_id") FROM stdin;
    public          postgres    false    322   �-      �          0    34813    casesSingle_components 
   TABLE DATA           v   COPY public."casesSingle_components" (id, field, "order", component_type, component_id, "casesSingle_id") FROM stdin;
    public          postgres    false    324   .      a          0    34460    cases__localizations 
   TABLE DATA           L   COPY public.cases__localizations (id, case_id, related_case_id) FROM stdin;
    public          postgres    false    258   X.      �          0    34994 0   cases_content_libraries__content_libraries_cases 
   TABLE DATA           m   COPY public.cases_content_libraries__content_libraries_cases (id, case_id, "content-library_id") FROM stdin;
    public          postgres    false    350   .      �          0    34715    cases_designs 
   TABLE DATA           �   COPY public.cases_designs (id, title, description, "btnShowMore", locale, published_at, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          postgres    false    306   �.      �          0    34726    cases_designs__localizations 
   TABLE DATA           ^   COPY public.cases_designs__localizations (id, cases_design_id, "cases-design_id") FROM stdin;
    public          postgres    false    308   0      �          0    34733    cases_designs_components 
   TABLE DATA           u   COPY public.cases_designs_components (id, field, "order", component_type, component_id, cases_design_id) FROM stdin;
    public          postgres    false    310   ?0      �          0    34828    cases_singles 
   TABLE DATA           �   COPY public.cases_singles (id, title, description, "btnShowMore", locale, published_at, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          postgres    false    326   �0      �          0    34839    cases_singles__localizations 
   TABLE DATA           ^   COPY public.cases_singles__localizations (id, cases_single_id, "cases-single_id") FROM stdin;
    public          postgres    false    328   �1      �          0    34846    cases_singles_components 
   TABLE DATA           u   COPY public.cases_singles_components (id, field, "order", component_type, component_id, cases_single_id) FROM stdin;
    public          postgres    false    330   �1      u          0    34563    cases_tags__tags_cases 
   TABLE DATA           E   COPY public.cases_tags__tags_cases (id, tag_id, case_id) FROM stdin;
    public          postgres    false    278   >2      c          0    34468 
   categories 
   TABLE DATA           z   COPY public.categories (id, name, slug, locale, published_at, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          postgres    false    260   �2      e          0    34481    categories__localizations 
   TABLE DATA           Y   COPY public.categories__localizations (id, category_id, related_category_id) FROM stdin;
    public          postgres    false    262   �3      y          0    34578 :   categories_content_libraries__content_libraries_categories 
   TABLE DATA           {   COPY public.categories_content_libraries__content_libraries_categories (id, "content-library_id", category_id) FROM stdin;
    public          postgres    false    282   #4      �          0    51104    checklist_singles 
   TABLE DATA           �   COPY public.checklist_singles (id, title, description, "btnShowMore", published_at, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          postgres    false    372   w4      �          0    51115    checklist_singles_components 
   TABLE DATA           }   COPY public.checklist_singles_components (id, field, "order", component_type, component_id, checklist_single_id) FROM stdin;
    public          postgres    false    374   ;5      �          0    51069 
   checklists 
   TABLE DATA           �   COPY public.checklists (id, title, description, locale, published_at, created_by, updated_by, created_at, updated_at, category, slug, tag) FROM stdin;
    public          postgres    false    366   �5      �          0    51080    checklists__localizations 
   TABLE DATA           [   COPY public.checklists__localizations (id, checklist_id, related_checklist_id) FROM stdin;
    public          postgres    false    368   �7      �          0    51087    checklists_components 
   TABLE DATA           o   COPY public.checklists_components (id, field, "order", component_type, component_id, checklist_id) FROM stdin;
    public          postgres    false    370   �7      �          0    59256     checklists_tags__tags_checklists 
   TABLE DATA           T   COPY public.checklists_tags__tags_checklists (id, checklist_id, tag_id) FROM stdin;
    public          postgres    false    376   �8      �          0    59357    components_be_part_checklists 
   TABLE DATA           L   COPY public.components_be_part_checklists (id, title, subtitle) FROM stdin;
    public          postgres    false    394   �8      �          0    59302    components_be_part_heroes 
   TABLE DATA           H   COPY public.components_be_part_heroes (id, title, subtitle) FROM stdin;
    public          postgres    false    384   �8      �          0    59334    components_be_part_learns 
   TABLE DATA           >   COPY public.components_be_part_learns (id, title) FROM stdin;
    public          postgres    false    390   V:      �          0    59344    components_be_part_networkings 
   TABLE DATA           M   COPY public.components_be_part_networkings (id, title, subtitle) FROM stdin;
    public          postgres    false    392   �:      I          0    34334    components_button_btns 
   TABLE DATA           ?   COPY public.components_button_btns (id, text, url) FROM stdin;
    public          postgres    false    234   �;      �          0    51060    components_checklist_accordions 
   TABLE DATA           o   COPY public.components_checklist_accordions (id, title, "guidelineText", "guidelineLink", content) FROM stdin;
    public          postgres    false    364   Y<      {          0    34606 #   components_home_page_cases_sections 
   TABLE DATA           H   COPY public.components_home_page_cases_sections (id, title) FROM stdin;
    public          postgres    false    284   F      }          0    34613 *   components_home_page_cases_sections__cases 
   TABLE DATA           x   COPY public.components_home_page_cases_sections__cases (id, components_home_page_cases_section_id, case_id) FROM stdin;
    public          postgres    false    286   FF      �          0    34861 .   components_home_page_cases_sections_components 
   TABLE DATA           �   COPY public.components_home_page_cases_sections_components (id, field, "order", component_type, component_id, components_home_page_cases_section_id) FROM stdin;
    public          postgres    false    332   rF                0    34620    components_home_page_ctas 
   TABLE DATA           >   COPY public.components_home_page_ctas (id, title) FROM stdin;
    public          postgres    false    288   �F      �          0    34627 $   components_home_page_ctas_components 
   TABLE DATA           �   COPY public.components_home_page_ctas_components (id, field, "order", component_type, component_id, components_home_page_cta_id) FROM stdin;
    public          postgres    false    290   3G      U          0    34396     components_home_page_guide_cards 
   TABLE DATA           v   COPY public.components_home_page_guide_cards (id, badge, title, description, "linkUrl", "linkText", type) FROM stdin;
    public          postgres    false    246   �G      W          0    34405 $   components_home_page_guides_sections 
   TABLE DATA           I   COPY public.components_home_page_guides_sections (id, title) FROM stdin;
    public          postgres    false    248   �H      Y          0    34412 /   components_home_page_guides_sections_components 
   TABLE DATA           �   COPY public.components_home_page_guides_sections_components (id, field, "order", component_type, component_id, components_home_page_guides_section_id) FROM stdin;
    public          postgres    false    250   �H      K          0    34343 "   components_home_page_hero_sections 
   TABLE DATA           Q   COPY public.components_home_page_hero_sections (id, title, subtitle) FROM stdin;
    public          postgres    false    236   :I      M          0    34352 -   components_home_page_hero_sections_components 
   TABLE DATA           �   COPY public.components_home_page_hero_sections_components (id, field, "order", component_type, component_id, components_home_page_hero_section_id) FROM stdin;
    public          postgres    false    238   �I      �          0    34641 %   components_home_page_library_sections 
   TABLE DATA           J   COPY public.components_home_page_library_sections (id, title) FROM stdin;
    public          postgres    false    292   J      �          0    34648 8   components_home_page_library_sections__content_libraries 
   TABLE DATA           �   COPY public.components_home_page_library_sections__content_libraries (id, components_home_page_library_section_id, "content-library_id") FROM stdin;
    public          postgres    false    294   YJ      �          0    34655 0   components_home_page_library_sections_components 
   TABLE DATA           �   COPY public.components_home_page_library_sections_components (id, field, "order", component_type, component_id, components_home_page_library_section_id) FROM stdin;
    public          postgres    false    296   �J      �          0    34675    components_library_empties 
   TABLE DATA           >   COPY public.components_library_empties (id, text) FROM stdin;
    public          postgres    false    298   �J      g          0    34488    components_library_links 
   TABLE DATA           A   COPY public.components_library_links (id, text, url) FROM stdin;
    public          postgres    false    264   �K      i          0    34497    content_libraries 
   TABLE DATA           �   COPY public.content_libraries (id, title, language, locale, published_at, created_by, updated_by, created_at, updated_at, content_type) FROM stdin;
    public          postgres    false    266   LM      k          0    34508     content_libraries__localizations 
   TABLE DATA           h   COPY public.content_libraries__localizations (id, content_library_id, "content-library_id") FROM stdin;
    public          postgres    false    268   �O      m          0    34515    content_libraries_components 
   TABLE DATA           |   COPY public.content_libraries_components (id, field, "order", component_type, component_id, content_library_id) FROM stdin;
    public          postgres    false    270   �O      �          0    34897 2   content_libraries_guides__guides_content_libraries 
   TABLE DATA           p   COPY public.content_libraries_guides__guides_content_libraries (id, guide_id, "content-library_id") FROM stdin;
    public          postgres    false    338   ^P      o          0    34530    content_types 
   TABLE DATA           }   COPY public.content_types (id, name, slug, locale, published_at, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          postgres    false    272   �P      q          0    34543    content_types__localizations 
   TABLE DATA           ^   COPY public.content_types__localizations (id, content_type_id, "content-type_id") FROM stdin;
    public          postgres    false    274   �R      1          0    34075 
   core_store 
   TABLE DATA           L   COPY public.core_store (id, key, value, type, environment, tag) FROM stdin;
    public          postgres    false    210   �R      �          0    34876    guides 
   TABLE DATA           �   COPY public.guides (id, title, excerpt, slug, content, "readingTime", tag, category, subcategory, locale, published_at, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          postgres    false    334   �v      �          0    34889    guides__localizations 
   TABLE DATA           O   COPY public.guides__localizations (id, guide_id, related_guide_id) FROM stdin;
    public          postgres    false    336   E�      �          0    34923    guides_singles 
   TABLE DATA           �   COPY public.guides_singles (id, "Title", "Description", "BtnShowMore", locale, published_at, created_by, updated_by, created_at, updated_at, title, description, "btnShowMore") FROM stdin;
    public          postgres    false    344   b�      �          0    34934    guides_singles__localizations 
   TABLE DATA           a   COPY public.guides_singles__localizations (id, guides_single_id, "guides-single_id") FROM stdin;
    public          postgres    false    346   ��      �          0    34941    guides_singles_components 
   TABLE DATA           w   COPY public.guides_singles_components (id, field, "order", component_type, component_id, guides_single_id) FROM stdin;
    public          postgres    false    348   Ĕ      O          0    34366 
   home_pages 
   TABLE DATA           n   COPY public.home_pages (id, locale, published_at, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          postgres    false    240   �      Q          0    34375    home_pages__localizations 
   TABLE DATA           U   COPY public.home_pages__localizations (id, home_page_id, "home-page_id") FROM stdin;
    public          postgres    false    242   m�      S          0    34382    home_pages_components 
   TABLE DATA           o   COPY public.home_pages_components (id, field, "order", component_type, component_id, home_page_id) FROM stdin;
    public          postgres    false    244   ��      G          0    34190    i18n_locales 
   TABLE DATA           f   COPY public.i18n_locales (id, name, code, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          postgres    false    232   �      �          0    34682 	   libraries 
   TABLE DATA           �   COPY public.libraries (id, title, description, "btnShowMore", published_at, created_by, updated_by, created_at, updated_at, locale) FROM stdin;
    public          postgres    false    300   ��      �          0    34708    libraries__localizations 
   TABLE DATA           V   COPY public.libraries__localizations (id, library_id, related_library_id) FROM stdin;
    public          postgres    false    304   ͗      �          0    34693    libraries_components 
   TABLE DATA           l   COPY public.libraries_components (id, field, "order", component_type, component_id, library_id) FROM stdin;
    public          postgres    false    302   ��      �          0    42976 
   not_founds 
   TABLE DATA           u   COPY public.not_founds (id, title, locale, published_at, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          postgres    false    358   ?�      �          0    42987    not_founds__localizations 
   TABLE DATA           U   COPY public.not_founds__localizations (id, not_found_id, "not-found_id") FROM stdin;
    public          postgres    false    360   ٘      �          0    42994    not_founds_components 
   TABLE DATA           o   COPY public.not_founds_components (id, field, "order", component_type, component_id, not_found_id) FROM stdin;
    public          postgres    false    362   ��      9          0    34119    strapi_administrator 
   TABLE DATA           �   COPY public.strapi_administrator (id, firstname, lastname, username, email, password, "resetPasswordToken", "registrationToken", "isActive", blocked, "preferedLanguage") FROM stdin;
    public          postgres    false    218   5�      5          0    34093    strapi_permission 
   TABLE DATA           v   COPY public.strapi_permission (id, action, subject, properties, conditions, role, created_at, updated_at) FROM stdin;
    public          postgres    false    214   ��      7          0    34104    strapi_role 
   TABLE DATA           Z   COPY public.strapi_role (id, name, code, description, created_at, updated_at) FROM stdin;
    public          postgres    false    216   �      ;          0    34130    strapi_users_roles 
   TABLE DATA           B   COPY public.strapi_users_roles (id, user_id, role_id) FROM stdin;
    public          postgres    false    220   ��      3          0    34084    strapi_webhooks 
   TABLE DATA           R   COPY public.strapi_webhooks (id, name, url, headers, events, enabled) FROM stdin;
    public          postgres    false    212   �      �          0    34748    subcategorias 
   TABLE DATA           }   COPY public.subcategorias (id, name, slug, locale, published_at, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          postgres    false    312   6�      �          0    34761    subcategorias__localizations 
   TABLE DATA           d   COPY public.subcategorias__localizations (id, subcategoria_id, related_subcategoria_id) FROM stdin;
    public          postgres    false    314   S�      s          0    34550    tags 
   TABLE DATA           t   COPY public.tags (id, name, slug, locale, published_at, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          postgres    false    276   p�      w          0    34570    tags__localizations 
   TABLE DATA           I   COPY public.tags__localizations (id, tag_id, related_tag_id) FROM stdin;
    public          postgres    false    280   �      C          0    34170    upload_file 
   TABLE DATA           �   COPY public.upload_file (id, name, "alternativeText", caption, width, height, formats, hash, ext, mime, size, url, "previewUrl", provider, provider_metadata, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          postgres    false    228   B�      E          0    34181    upload_file_morph 
   TABLE DATA           i   COPY public.upload_file_morph (id, upload_file_id, related_id, related_type, field, "order") FROM stdin;
    public          postgres    false    230   ��      =          0    34137    users-permissions_permission 
   TABLE DATA           �   COPY public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) FROM stdin;
    public          postgres    false    222   ��      ?          0    34146    users-permissions_role 
   TABLE DATA           g   COPY public."users-permissions_role" (id, name, description, type, created_by, updated_by) FROM stdin;
    public          postgres    false    224   ��      A          0    34157    users-permissions_user 
   TABLE DATA           �   COPY public."users-permissions_user" (id, username, email, provider, password, "resetPasswordToken", "confirmationToken", confirmed, blocked, role, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          postgres    false    226   +�      M           0    0    404s_components_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."404s_components_id_seq"', 1, false);
          public          postgres    false    355            N           0    0    404s_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public."404s_id_seq"', 1, false);
          public          postgres    false    353            O           0    0 !   Subcategory__localizations_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public."Subcategory__localizations_id_seq"', 6, true);
          public          postgres    false    317            P           0    0    Subcategory_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."Subcategory_id_seq"', 6, true);
          public          postgres    false    315            Q           0    0    abouts__localizations_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.abouts__localizations_id_seq', 1, false);
          public          postgres    false    379            R           0    0    abouts_components_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.abouts_components_id_seq', 1, true);
          public          postgres    false    381            S           0    0    abouts_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.abouts_id_seq', 1, true);
          public          postgres    false    377            T           0    0 $   accessible_tos__localizations_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.accessible_tos__localizations_id_seq', 1, false);
          public          postgres    false    341            U           0    0 3   accessible_tos_guides__guides_accessible_tos_id_seq    SEQUENCE SET     a   SELECT pg_catalog.setval('public.accessible_tos_guides__guides_accessible_tos_id_seq', 1, true);
          public          postgres    false    351            V           0    0    accessible_tos_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.accessible_tos_id_seq', 2, true);
          public          postgres    false    339            W           0    0    authors__localizations_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.authors__localizations_id_seq', 4, true);
          public          postgres    false    253            X           0    0    authors_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.authors_id_seq', 4, true);
          public          postgres    false    251            Y           0    0    be_parts_components_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.be_parts_components_id_seq', 14, true);
          public          postgres    false    387            Z           0    0    be_parts_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.be_parts_id_seq', 1, true);
          public          postgres    false    385            [           0    0 !   casesSingle__localizations_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public."casesSingle__localizations_id_seq"', 2, true);
          public          postgres    false    321            \           0    0    casesSingle_components_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public."casesSingle_components_id_seq"', 2, true);
          public          postgres    false    323            ]           0    0    casesSingle_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."casesSingle_id_seq"', 2, true);
          public          postgres    false    319            ^           0    0    cases__localizations_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.cases__localizations_id_seq', 2, true);
          public          postgres    false    257            _           0    0 7   cases_content_libraries__content_libraries_cases_id_seq    SEQUENCE SET     e   SELECT pg_catalog.setval('public.cases_content_libraries__content_libraries_cases_id_seq', 8, true);
          public          postgres    false    349            `           0    0 #   cases_designs__localizations_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.cases_designs__localizations_id_seq', 2, true);
          public          postgres    false    307            a           0    0    cases_designs_components_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.cases_designs_components_id_seq', 2, true);
          public          postgres    false    309            b           0    0    cases_designs_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.cases_designs_id_seq', 2, true);
          public          postgres    false    305            c           0    0    cases_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.cases_id_seq', 14, true);
          public          postgres    false    255            d           0    0 #   cases_singles__localizations_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.cases_singles__localizations_id_seq', 2, true);
          public          postgres    false    327            e           0    0    cases_singles_components_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.cases_singles_components_id_seq', 2, true);
          public          postgres    false    329            f           0    0    cases_singles_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.cases_singles_id_seq', 2, true);
          public          postgres    false    325            g           0    0    cases_tags__tags_cases_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.cases_tags__tags_cases_id_seq', 17, true);
          public          postgres    false    277            h           0    0     categories__localizations_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.categories__localizations_id_seq', 8, true);
          public          postgres    false    261            i           0    0 ?   categories_content_libraries__content_libraries_categori_id_seq    SEQUENCE SET     n   SELECT pg_catalog.setval('public.categories_content_libraries__content_libraries_categori_id_seq', 13, true);
          public          postgres    false    281            j           0    0    categories_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.categories_id_seq', 8, true);
          public          postgres    false    259            k           0    0 #   checklist_singles_components_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.checklist_singles_components_id_seq', 1, true);
          public          postgres    false    373            l           0    0    checklist_singles_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.checklist_singles_id_seq', 1, true);
          public          postgres    false    371            m           0    0     checklists__localizations_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.checklists__localizations_id_seq', 1, false);
          public          postgres    false    367            n           0    0    checklists_components_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.checklists_components_id_seq', 17, true);
          public          postgres    false    369            o           0    0    checklists_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.checklists_id_seq', 5, true);
          public          postgres    false    365            p           0    0 '   checklists_tags__tags_checklists_id_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.checklists_tags__tags_checklists_id_seq', 2, true);
          public          postgres    false    375            q           0    0 $   components_be_part_checklists_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.components_be_part_checklists_id_seq', 1, true);
          public          postgres    false    393            r           0    0     components_be_part_heroes_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.components_be_part_heroes_id_seq', 5, true);
          public          postgres    false    383            s           0    0     components_be_part_learns_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.components_be_part_learns_id_seq', 5, true);
          public          postgres    false    389            t           0    0 %   components_be_part_networkings_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.components_be_part_networkings_id_seq', 2, true);
          public          postgres    false    391            u           0    0    components_button_btns_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.components_button_btns_id_seq', 7, true);
          public          postgres    false    233            v           0    0 &   components_checklist_accordions_id_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.components_checklist_accordions_id_seq', 17, true);
          public          postgres    false    363            w           0    0 1   components_home_page_cases_sections__cases_id_seq    SEQUENCE SET     _   SELECT pg_catalog.setval('public.components_home_page_cases_sections__cases_id_seq', 3, true);
          public          postgres    false    285            x           0    0 5   components_home_page_cases_sections_components_id_seq    SEQUENCE SET     c   SELECT pg_catalog.setval('public.components_home_page_cases_sections_components_id_seq', 1, true);
          public          postgres    false    331            y           0    0 *   components_home_page_cases_sections_id_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('public.components_home_page_cases_sections_id_seq', 1, true);
          public          postgres    false    283            z           0    0 +   components_home_page_ctas_components_id_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('public.components_home_page_ctas_components_id_seq', 3, true);
          public          postgres    false    289            {           0    0     components_home_page_ctas_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.components_home_page_ctas_id_seq', 3, true);
          public          postgres    false    287            |           0    0 '   components_home_page_guide_cards_id_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.components_home_page_guide_cards_id_seq', 3, true);
          public          postgres    false    245            }           0    0 6   components_home_page_guides_sections_components_id_seq    SEQUENCE SET     d   SELECT pg_catalog.setval('public.components_home_page_guides_sections_components_id_seq', 3, true);
          public          postgres    false    249            ~           0    0 +   components_home_page_guides_sections_id_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('public.components_home_page_guides_sections_id_seq', 1, true);
          public          postgres    false    247                       0    0 4   components_home_page_hero_sections_components_id_seq    SEQUENCE SET     b   SELECT pg_catalog.setval('public.components_home_page_hero_sections_components_id_seq', 1, true);
          public          postgres    false    237            �           0    0 )   components_home_page_hero_sections_id_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public.components_home_page_hero_sections_id_seq', 1, true);
          public          postgres    false    235            �           0    0 ?   components_home_page_library_sections__content_libraries_id_seq    SEQUENCE SET     m   SELECT pg_catalog.setval('public.components_home_page_library_sections__content_libraries_id_seq', 6, true);
          public          postgres    false    293            �           0    0 7   components_home_page_library_sections_components_id_seq    SEQUENCE SET     e   SELECT pg_catalog.setval('public.components_home_page_library_sections_components_id_seq', 1, true);
          public          postgres    false    295            �           0    0 ,   components_home_page_library_sections_id_seq    SEQUENCE SET     Z   SELECT pg_catalog.setval('public.components_home_page_library_sections_id_seq', 1, true);
          public          postgres    false    291            �           0    0 !   components_library_empties_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.components_library_empties_id_seq', 11, true);
          public          postgres    false    297            �           0    0    components_library_links_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.components_library_links_id_seq', 11, true);
          public          postgres    false    263            �           0    0 '   content_libraries__localizations_id_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public.content_libraries__localizations_id_seq', 1, false);
          public          postgres    false    267            �           0    0 #   content_libraries_components_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.content_libraries_components_id_seq', 11, true);
          public          postgres    false    269            �           0    0 9   content_libraries_guides__guides_content_libraries_id_seq    SEQUENCE SET     g   SELECT pg_catalog.setval('public.content_libraries_guides__guides_content_libraries_id_seq', 2, true);
          public          postgres    false    337            �           0    0    content_libraries_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.content_libraries_id_seq', 11, true);
          public          postgres    false    265            �           0    0 #   content_types__localizations_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.content_types__localizations_id_seq', 16, true);
          public          postgres    false    273            �           0    0    content_types_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.content_types_id_seq', 16, true);
          public          postgres    false    271            �           0    0    core_store_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.core_store_id_seq', 91, true);
          public          postgres    false    209            �           0    0    guides__localizations_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.guides__localizations_id_seq', 1, false);
          public          postgres    false    335            �           0    0    guides_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.guides_id_seq', 13, true);
          public          postgres    false    333            �           0    0 $   guides_singles__localizations_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.guides_singles__localizations_id_seq', 2, true);
          public          postgres    false    345            �           0    0     guides_singles_components_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.guides_singles_components_id_seq', 2, true);
          public          postgres    false    347            �           0    0    guides_singles_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.guides_singles_id_seq', 2, true);
          public          postgres    false    343            �           0    0     home_pages__localizations_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.home_pages__localizations_id_seq', 1, false);
          public          postgres    false    241            �           0    0    home_pages_components_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.home_pages_components_id_seq', 5, true);
          public          postgres    false    243            �           0    0    home_pages_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.home_pages_id_seq', 1, true);
          public          postgres    false    239            �           0    0    i18n_locales_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.i18n_locales_id_seq', 2, true);
          public          postgres    false    231            �           0    0    libraries__localizations_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.libraries__localizations_id_seq', 2, true);
          public          postgres    false    303            �           0    0    libraries_components_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.libraries_components_id_seq', 2, true);
          public          postgres    false    301            �           0    0    libraries_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.libraries_id_seq', 2, true);
          public          postgres    false    299            �           0    0     not_founds__localizations_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.not_founds__localizations_id_seq', 1, false);
          public          postgres    false    359            �           0    0    not_founds_components_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.not_founds_components_id_seq', 1, true);
          public          postgres    false    361            �           0    0    not_founds_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.not_founds_id_seq', 1, true);
          public          postgres    false    357            �           0    0    strapi_administrator_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.strapi_administrator_id_seq', 1, true);
          public          postgres    false    217            �           0    0    strapi_permission_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.strapi_permission_id_seq', 4004, true);
          public          postgres    false    213            �           0    0    strapi_role_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.strapi_role_id_seq', 3, true);
          public          postgres    false    215            �           0    0    strapi_users_roles_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.strapi_users_roles_id_seq', 1, true);
          public          postgres    false    219            �           0    0    strapi_webhooks_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.strapi_webhooks_id_seq', 1, false);
          public          postgres    false    211            �           0    0 #   subcategorias__localizations_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.subcategorias__localizations_id_seq', 1, false);
          public          postgres    false    313            �           0    0    subcategorias_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.subcategorias_id_seq', 1, false);
          public          postgres    false    311            �           0    0    tags__localizations_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.tags__localizations_id_seq', 18, true);
          public          postgres    false    279            �           0    0    tags_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.tags_id_seq', 31, true);
          public          postgres    false    275            �           0    0    upload_file_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.upload_file_id_seq', 68, true);
          public          postgres    false    227            �           0    0    upload_file_morph_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.upload_file_morph_id_seq', 512, true);
          public          postgres    false    229            �           0    0 #   users-permissions_permission_id_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public."users-permissions_permission_id_seq"', 384, true);
          public          postgres    false    221            �           0    0    users-permissions_role_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public."users-permissions_role_id_seq"', 2, true);
          public          postgres    false    223            �           0    0    users-permissions_user_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public."users-permissions_user_id_seq"', 1, false);
          public          postgres    false    225            j           2606    42968 $   404s_components 404s_components_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public."404s_components"
    ADD CONSTRAINT "404s_components_pkey" PRIMARY KEY (id);
 R   ALTER TABLE ONLY public."404s_components" DROP CONSTRAINT "404s_components_pkey";
       public            postgres    false    356            h           2606    42959    404s 404s_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public."404s"
    ADD CONSTRAINT "404s_pkey" PRIMARY KEY (id);
 <   ALTER TABLE ONLY public."404s" DROP CONSTRAINT "404s_pkey";
       public            postgres    false    354            B           2606    34786 :   Subcategory__localizations Subcategory__localizations_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public."Subcategory__localizations"
    ADD CONSTRAINT "Subcategory__localizations_pkey" PRIMARY KEY (id);
 h   ALTER TABLE ONLY public."Subcategory__localizations" DROP CONSTRAINT "Subcategory__localizations_pkey";
       public            postgres    false    318            >           2606    34777    Subcategory Subcategory_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Subcategory"
    ADD CONSTRAINT "Subcategory_pkey" PRIMARY KEY (id);
 J   ALTER TABLE ONLY public."Subcategory" DROP CONSTRAINT "Subcategory_pkey";
       public            postgres    false    316            �           2606    59280 0   abouts__localizations abouts__localizations_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.abouts__localizations
    ADD CONSTRAINT abouts__localizations_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.abouts__localizations DROP CONSTRAINT abouts__localizations_pkey;
       public            postgres    false    380            �           2606    59289 (   abouts_components abouts_components_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.abouts_components
    ADD CONSTRAINT abouts_components_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.abouts_components DROP CONSTRAINT abouts_components_pkey;
       public            postgres    false    382            �           2606    59273    abouts abouts_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.abouts
    ADD CONSTRAINT abouts_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.abouts DROP CONSTRAINT abouts_pkey;
       public            postgres    false    378            \           2606    34920 @   accessible_tos__localizations accessible_tos__localizations_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.accessible_tos__localizations
    ADD CONSTRAINT accessible_tos__localizations_pkey PRIMARY KEY (id);
 j   ALTER TABLE ONLY public.accessible_tos__localizations DROP CONSTRAINT accessible_tos__localizations_pkey;
       public            postgres    false    342            f           2606    42941 ^   accessible_tos_guides__guides_accessible_tos accessible_tos_guides__guides_accessible_tos_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.accessible_tos_guides__guides_accessible_tos
    ADD CONSTRAINT accessible_tos_guides__guides_accessible_tos_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.accessible_tos_guides__guides_accessible_tos DROP CONSTRAINT accessible_tos_guides__guides_accessible_tos_pkey;
       public            postgres    false    352            Z           2606    34913 "   accessible_tos accessible_tos_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.accessible_tos
    ADD CONSTRAINT accessible_tos_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.accessible_tos DROP CONSTRAINT accessible_tos_pkey;
       public            postgres    false    340            �           2606    34444 2   authors__localizations authors__localizations_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.authors__localizations
    ADD CONSTRAINT authors__localizations_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.authors__localizations DROP CONSTRAINT authors__localizations_pkey;
       public            postgres    false    254            �           2606    34435    authors authors_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.authors
    ADD CONSTRAINT authors_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.authors DROP CONSTRAINT authors_pkey;
       public            postgres    false    252            �           2606    34437    authors authors_slug_unique 
   CONSTRAINT     V   ALTER TABLE ONLY public.authors
    ADD CONSTRAINT authors_slug_unique UNIQUE (slug);
 E   ALTER TABLE ONLY public.authors DROP CONSTRAINT authors_slug_unique;
       public            postgres    false    252            �           2606    59327 ,   be_parts_components be_parts_components_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.be_parts_components
    ADD CONSTRAINT be_parts_components_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.be_parts_components DROP CONSTRAINT be_parts_components_pkey;
       public            postgres    false    388            �           2606    59318    be_parts be_parts_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.be_parts
    ADD CONSTRAINT be_parts_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.be_parts DROP CONSTRAINT be_parts_pkey;
       public            postgres    false    386            F           2606    34811 :   casesSingle__localizations casesSingle__localizations_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public."casesSingle__localizations"
    ADD CONSTRAINT "casesSingle__localizations_pkey" PRIMARY KEY (id);
 h   ALTER TABLE ONLY public."casesSingle__localizations" DROP CONSTRAINT "casesSingle__localizations_pkey";
       public            postgres    false    322            H           2606    34820 2   casesSingle_components casesSingle_components_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public."casesSingle_components"
    ADD CONSTRAINT "casesSingle_components_pkey" PRIMARY KEY (id);
 `   ALTER TABLE ONLY public."casesSingle_components" DROP CONSTRAINT "casesSingle_components_pkey";
       public            postgres    false    324            D           2606    34804    casesSingle casesSingle_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."casesSingle"
    ADD CONSTRAINT "casesSingle_pkey" PRIMARY KEY (id);
 J   ALTER TABLE ONLY public."casesSingle" DROP CONSTRAINT "casesSingle_pkey";
       public            postgres    false    320            �           2606    34465 .   cases__localizations cases__localizations_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.cases__localizations
    ADD CONSTRAINT cases__localizations_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.cases__localizations DROP CONSTRAINT cases__localizations_pkey;
       public            postgres    false    258            d           2606    34999 f   cases_content_libraries__content_libraries_cases cases_content_libraries__content_libraries_cases_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.cases_content_libraries__content_libraries_cases
    ADD CONSTRAINT cases_content_libraries__content_libraries_cases_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.cases_content_libraries__content_libraries_cases DROP CONSTRAINT cases_content_libraries__content_libraries_cases_pkey;
       public            postgres    false    350            4           2606    34731 >   cases_designs__localizations cases_designs__localizations_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.cases_designs__localizations
    ADD CONSTRAINT cases_designs__localizations_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.cases_designs__localizations DROP CONSTRAINT cases_designs__localizations_pkey;
       public            postgres    false    308            6           2606    34740 6   cases_designs_components cases_designs_components_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.cases_designs_components
    ADD CONSTRAINT cases_designs_components_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.cases_designs_components DROP CONSTRAINT cases_designs_components_pkey;
       public            postgres    false    310            2           2606    34724     cases_designs cases_designs_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.cases_designs
    ADD CONSTRAINT cases_designs_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.cases_designs DROP CONSTRAINT cases_designs_pkey;
       public            postgres    false    306            �           2606    34456    cases cases_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.cases
    ADD CONSTRAINT cases_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.cases DROP CONSTRAINT cases_pkey;
       public            postgres    false    256            L           2606    34844 >   cases_singles__localizations cases_singles__localizations_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.cases_singles__localizations
    ADD CONSTRAINT cases_singles__localizations_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.cases_singles__localizations DROP CONSTRAINT cases_singles__localizations_pkey;
       public            postgres    false    328            N           2606    34853 6   cases_singles_components cases_singles_components_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.cases_singles_components
    ADD CONSTRAINT cases_singles_components_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.cases_singles_components DROP CONSTRAINT cases_singles_components_pkey;
       public            postgres    false    330            J           2606    34837     cases_singles cases_singles_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.cases_singles
    ADD CONSTRAINT cases_singles_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.cases_singles DROP CONSTRAINT cases_singles_pkey;
       public            postgres    false    326            �           2606    34585    cases cases_slug_unique 
   CONSTRAINT     R   ALTER TABLE ONLY public.cases
    ADD CONSTRAINT cases_slug_unique UNIQUE (slug);
 A   ALTER TABLE ONLY public.cases DROP CONSTRAINT cases_slug_unique;
       public            postgres    false    256                       2606    34568 2   cases_tags__tags_cases cases_tags__tags_cases_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.cases_tags__tags_cases
    ADD CONSTRAINT cases_tags__tags_cases_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.cases_tags__tags_cases DROP CONSTRAINT cases_tags__tags_cases_pkey;
       public            postgres    false    278                       2606    34486 8   categories__localizations categories__localizations_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.categories__localizations
    ADD CONSTRAINT categories__localizations_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.categories__localizations DROP CONSTRAINT categories__localizations_pkey;
       public            postgres    false    262                       2606    34583 z   categories_content_libraries__content_libraries_categories categories_content_libraries__content_libraries_categories_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.categories_content_libraries__content_libraries_categories
    ADD CONSTRAINT categories_content_libraries__content_libraries_categories_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.categories_content_libraries__content_libraries_categories DROP CONSTRAINT categories_content_libraries__content_libraries_categories_pkey;
       public            postgres    false    282            �           2606    34477    categories categories_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_pkey;
       public            postgres    false    260                        2606    34479 !   categories categories_slug_unique 
   CONSTRAINT     \   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_slug_unique UNIQUE (slug);
 K   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_slug_unique;
       public            postgres    false    260            ~           2606    51122 >   checklist_singles_components checklist_singles_components_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.checklist_singles_components
    ADD CONSTRAINT checklist_singles_components_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.checklist_singles_components DROP CONSTRAINT checklist_singles_components_pkey;
       public            postgres    false    374            |           2606    51113 (   checklist_singles checklist_singles_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.checklist_singles
    ADD CONSTRAINT checklist_singles_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.checklist_singles DROP CONSTRAINT checklist_singles_pkey;
       public            postgres    false    372            x           2606    51085 8   checklists__localizations checklists__localizations_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.checklists__localizations
    ADD CONSTRAINT checklists__localizations_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.checklists__localizations DROP CONSTRAINT checklists__localizations_pkey;
       public            postgres    false    368            z           2606    51094 0   checklists_components checklists_components_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.checklists_components
    ADD CONSTRAINT checklists_components_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.checklists_components DROP CONSTRAINT checklists_components_pkey;
       public            postgres    false    370            t           2606    51078    checklists checklists_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.checklists
    ADD CONSTRAINT checklists_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.checklists DROP CONSTRAINT checklists_pkey;
       public            postgres    false    366            v           2606    59252 !   checklists checklists_slug_unique 
   CONSTRAINT     \   ALTER TABLE ONLY public.checklists
    ADD CONSTRAINT checklists_slug_unique UNIQUE (slug);
 K   ALTER TABLE ONLY public.checklists DROP CONSTRAINT checklists_slug_unique;
       public            postgres    false    366            �           2606    59261 F   checklists_tags__tags_checklists checklists_tags__tags_checklists_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.checklists_tags__tags_checklists
    ADD CONSTRAINT checklists_tags__tags_checklists_pkey PRIMARY KEY (id);
 p   ALTER TABLE ONLY public.checklists_tags__tags_checklists DROP CONSTRAINT checklists_tags__tags_checklists_pkey;
       public            postgres    false    376            �           2606    59364 @   components_be_part_checklists components_be_part_checklists_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.components_be_part_checklists
    ADD CONSTRAINT components_be_part_checklists_pkey PRIMARY KEY (id);
 j   ALTER TABLE ONLY public.components_be_part_checklists DROP CONSTRAINT components_be_part_checklists_pkey;
       public            postgres    false    394            �           2606    59309 8   components_be_part_heroes components_be_part_heroes_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.components_be_part_heroes
    ADD CONSTRAINT components_be_part_heroes_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.components_be_part_heroes DROP CONSTRAINT components_be_part_heroes_pkey;
       public            postgres    false    384            �           2606    59341 8   components_be_part_learns components_be_part_learns_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.components_be_part_learns
    ADD CONSTRAINT components_be_part_learns_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.components_be_part_learns DROP CONSTRAINT components_be_part_learns_pkey;
       public            postgres    false    390            �           2606    59351 B   components_be_part_networkings components_be_part_networkings_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_be_part_networkings
    ADD CONSTRAINT components_be_part_networkings_pkey PRIMARY KEY (id);
 l   ALTER TABLE ONLY public.components_be_part_networkings DROP CONSTRAINT components_be_part_networkings_pkey;
       public            postgres    false    392            �           2606    34341 2   components_button_btns components_button_btns_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.components_button_btns
    ADD CONSTRAINT components_button_btns_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.components_button_btns DROP CONSTRAINT components_button_btns_pkey;
       public            postgres    false    234            r           2606    51067 D   components_checklist_accordions components_checklist_accordions_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_checklist_accordions
    ADD CONSTRAINT components_checklist_accordions_pkey PRIMARY KEY (id);
 n   ALTER TABLE ONLY public.components_checklist_accordions DROP CONSTRAINT components_checklist_accordions_pkey;
       public            postgres    false    364                       2606    34618 Z   components_home_page_cases_sections__cases components_home_page_cases_sections__cases_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_home_page_cases_sections__cases
    ADD CONSTRAINT components_home_page_cases_sections__cases_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.components_home_page_cases_sections__cases DROP CONSTRAINT components_home_page_cases_sections__cases_pkey;
       public            postgres    false    286            P           2606    34868 b   components_home_page_cases_sections_components components_home_page_cases_sections_components_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_home_page_cases_sections_components
    ADD CONSTRAINT components_home_page_cases_sections_components_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.components_home_page_cases_sections_components DROP CONSTRAINT components_home_page_cases_sections_components_pkey;
       public            postgres    false    332                       2606    34611 L   components_home_page_cases_sections components_home_page_cases_sections_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_home_page_cases_sections
    ADD CONSTRAINT components_home_page_cases_sections_pkey PRIMARY KEY (id);
 v   ALTER TABLE ONLY public.components_home_page_cases_sections DROP CONSTRAINT components_home_page_cases_sections_pkey;
       public            postgres    false    284            "           2606    34634 N   components_home_page_ctas_components components_home_page_ctas_components_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_home_page_ctas_components
    ADD CONSTRAINT components_home_page_ctas_components_pkey PRIMARY KEY (id);
 x   ALTER TABLE ONLY public.components_home_page_ctas_components DROP CONSTRAINT components_home_page_ctas_components_pkey;
       public            postgres    false    290                        2606    34625 8   components_home_page_ctas components_home_page_ctas_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.components_home_page_ctas
    ADD CONSTRAINT components_home_page_ctas_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.components_home_page_ctas DROP CONSTRAINT components_home_page_ctas_pkey;
       public            postgres    false    288            �           2606    34403 F   components_home_page_guide_cards components_home_page_guide_cards_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_home_page_guide_cards
    ADD CONSTRAINT components_home_page_guide_cards_pkey PRIMARY KEY (id);
 p   ALTER TABLE ONLY public.components_home_page_guide_cards DROP CONSTRAINT components_home_page_guide_cards_pkey;
       public            postgres    false    246            �           2606    34419 d   components_home_page_guides_sections_components components_home_page_guides_sections_components_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_home_page_guides_sections_components
    ADD CONSTRAINT components_home_page_guides_sections_components_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.components_home_page_guides_sections_components DROP CONSTRAINT components_home_page_guides_sections_components_pkey;
       public            postgres    false    250            �           2606    34410 N   components_home_page_guides_sections components_home_page_guides_sections_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_home_page_guides_sections
    ADD CONSTRAINT components_home_page_guides_sections_pkey PRIMARY KEY (id);
 x   ALTER TABLE ONLY public.components_home_page_guides_sections DROP CONSTRAINT components_home_page_guides_sections_pkey;
       public            postgres    false    248            �           2606    34359 `   components_home_page_hero_sections_components components_home_page_hero_sections_components_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_home_page_hero_sections_components
    ADD CONSTRAINT components_home_page_hero_sections_components_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.components_home_page_hero_sections_components DROP CONSTRAINT components_home_page_hero_sections_components_pkey;
       public            postgres    false    238            �           2606    34350 J   components_home_page_hero_sections components_home_page_hero_sections_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_home_page_hero_sections
    ADD CONSTRAINT components_home_page_hero_sections_pkey PRIMARY KEY (id);
 t   ALTER TABLE ONLY public.components_home_page_hero_sections DROP CONSTRAINT components_home_page_hero_sections_pkey;
       public            postgres    false    236            &           2606    34653 v   components_home_page_library_sections__content_libraries components_home_page_library_sections__content_libraries_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_home_page_library_sections__content_libraries
    ADD CONSTRAINT components_home_page_library_sections__content_libraries_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.components_home_page_library_sections__content_libraries DROP CONSTRAINT components_home_page_library_sections__content_libraries_pkey;
       public            postgres    false    294            (           2606    34662 f   components_home_page_library_sections_components components_home_page_library_sections_components_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_home_page_library_sections_components
    ADD CONSTRAINT components_home_page_library_sections_components_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.components_home_page_library_sections_components DROP CONSTRAINT components_home_page_library_sections_components_pkey;
       public            postgres    false    296            $           2606    34646 P   components_home_page_library_sections components_home_page_library_sections_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_home_page_library_sections
    ADD CONSTRAINT components_home_page_library_sections_pkey PRIMARY KEY (id);
 z   ALTER TABLE ONLY public.components_home_page_library_sections DROP CONSTRAINT components_home_page_library_sections_pkey;
       public            postgres    false    292            *           2606    34680 :   components_library_empties components_library_empties_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.components_library_empties
    ADD CONSTRAINT components_library_empties_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.components_library_empties DROP CONSTRAINT components_library_empties_pkey;
       public            postgres    false    298                       2606    34495 6   components_library_links components_library_links_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.components_library_links
    ADD CONSTRAINT components_library_links_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.components_library_links DROP CONSTRAINT components_library_links_pkey;
       public            postgres    false    264                       2606    34513 F   content_libraries__localizations content_libraries__localizations_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.content_libraries__localizations
    ADD CONSTRAINT content_libraries__localizations_pkey PRIMARY KEY (id);
 p   ALTER TABLE ONLY public.content_libraries__localizations DROP CONSTRAINT content_libraries__localizations_pkey;
       public            postgres    false    268            
           2606    34522 >   content_libraries_components content_libraries_components_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.content_libraries_components
    ADD CONSTRAINT content_libraries_components_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.content_libraries_components DROP CONSTRAINT content_libraries_components_pkey;
       public            postgres    false    270            X           2606    34902 j   content_libraries_guides__guides_content_libraries content_libraries_guides__guides_content_libraries_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.content_libraries_guides__guides_content_libraries
    ADD CONSTRAINT content_libraries_guides__guides_content_libraries_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.content_libraries_guides__guides_content_libraries DROP CONSTRAINT content_libraries_guides__guides_content_libraries_pkey;
       public            postgres    false    338                       2606    34506 (   content_libraries content_libraries_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.content_libraries
    ADD CONSTRAINT content_libraries_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.content_libraries DROP CONSTRAINT content_libraries_pkey;
       public            postgres    false    266                       2606    34548 >   content_types__localizations content_types__localizations_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.content_types__localizations
    ADD CONSTRAINT content_types__localizations_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.content_types__localizations DROP CONSTRAINT content_types__localizations_pkey;
       public            postgres    false    274                       2606    34539     content_types content_types_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.content_types
    ADD CONSTRAINT content_types_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.content_types DROP CONSTRAINT content_types_pkey;
       public            postgres    false    272                       2606    34541 '   content_types content_types_slug_unique 
   CONSTRAINT     b   ALTER TABLE ONLY public.content_types
    ADD CONSTRAINT content_types_slug_unique UNIQUE (slug);
 Q   ALTER TABLE ONLY public.content_types DROP CONSTRAINT content_types_slug_unique;
       public            postgres    false    272            �           2606    34082    core_store core_store_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.core_store
    ADD CONSTRAINT core_store_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.core_store DROP CONSTRAINT core_store_pkey;
       public            postgres    false    210            V           2606    34894 0   guides__localizations guides__localizations_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.guides__localizations
    ADD CONSTRAINT guides__localizations_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.guides__localizations DROP CONSTRAINT guides__localizations_pkey;
       public            postgres    false    336            R           2606    34885    guides guides_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.guides
    ADD CONSTRAINT guides_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.guides DROP CONSTRAINT guides_pkey;
       public            postgres    false    334            `           2606    34939 @   guides_singles__localizations guides_singles__localizations_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.guides_singles__localizations
    ADD CONSTRAINT guides_singles__localizations_pkey PRIMARY KEY (id);
 j   ALTER TABLE ONLY public.guides_singles__localizations DROP CONSTRAINT guides_singles__localizations_pkey;
       public            postgres    false    346            b           2606    34948 8   guides_singles_components guides_singles_components_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.guides_singles_components
    ADD CONSTRAINT guides_singles_components_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.guides_singles_components DROP CONSTRAINT guides_singles_components_pkey;
       public            postgres    false    348            ^           2606    34932 "   guides_singles guides_singles_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.guides_singles
    ADD CONSTRAINT guides_singles_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.guides_singles DROP CONSTRAINT guides_singles_pkey;
       public            postgres    false    344            T           2606    34887    guides guides_slug_unique 
   CONSTRAINT     T   ALTER TABLE ONLY public.guides
    ADD CONSTRAINT guides_slug_unique UNIQUE (slug);
 C   ALTER TABLE ONLY public.guides DROP CONSTRAINT guides_slug_unique;
       public            postgres    false    334            �           2606    34380 8   home_pages__localizations home_pages__localizations_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.home_pages__localizations
    ADD CONSTRAINT home_pages__localizations_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.home_pages__localizations DROP CONSTRAINT home_pages__localizations_pkey;
       public            postgres    false    242            �           2606    34389 0   home_pages_components home_pages_components_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.home_pages_components
    ADD CONSTRAINT home_pages_components_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.home_pages_components DROP CONSTRAINT home_pages_components_pkey;
       public            postgres    false    244            �           2606    34373    home_pages home_pages_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.home_pages
    ADD CONSTRAINT home_pages_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.home_pages DROP CONSTRAINT home_pages_pkey;
       public            postgres    false    240            �           2606    34201 %   i18n_locales i18n_locales_code_unique 
   CONSTRAINT     `   ALTER TABLE ONLY public.i18n_locales
    ADD CONSTRAINT i18n_locales_code_unique UNIQUE (code);
 O   ALTER TABLE ONLY public.i18n_locales DROP CONSTRAINT i18n_locales_code_unique;
       public            postgres    false    232            �           2606    34199    i18n_locales i18n_locales_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.i18n_locales
    ADD CONSTRAINT i18n_locales_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.i18n_locales DROP CONSTRAINT i18n_locales_pkey;
       public            postgres    false    232            0           2606    34713 6   libraries__localizations libraries__localizations_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.libraries__localizations
    ADD CONSTRAINT libraries__localizations_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.libraries__localizations DROP CONSTRAINT libraries__localizations_pkey;
       public            postgres    false    304            .           2606    34700 .   libraries_components libraries_components_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.libraries_components
    ADD CONSTRAINT libraries_components_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.libraries_components DROP CONSTRAINT libraries_components_pkey;
       public            postgres    false    302            ,           2606    34691    libraries libraries_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.libraries
    ADD CONSTRAINT libraries_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.libraries DROP CONSTRAINT libraries_pkey;
       public            postgres    false    300            n           2606    42992 8   not_founds__localizations not_founds__localizations_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.not_founds__localizations
    ADD CONSTRAINT not_founds__localizations_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.not_founds__localizations DROP CONSTRAINT not_founds__localizations_pkey;
       public            postgres    false    360            p           2606    43001 0   not_founds_components not_founds_components_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.not_founds_components
    ADD CONSTRAINT not_founds_components_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.not_founds_components DROP CONSTRAINT not_founds_components_pkey;
       public            postgres    false    362            l           2606    42985    not_founds not_founds_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.not_founds
    ADD CONSTRAINT not_founds_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.not_founds DROP CONSTRAINT not_founds_pkey;
       public            postgres    false    358            �           2606    34128 6   strapi_administrator strapi_administrator_email_unique 
   CONSTRAINT     r   ALTER TABLE ONLY public.strapi_administrator
    ADD CONSTRAINT strapi_administrator_email_unique UNIQUE (email);
 `   ALTER TABLE ONLY public.strapi_administrator DROP CONSTRAINT strapi_administrator_email_unique;
       public            postgres    false    218            �           2606    34126 .   strapi_administrator strapi_administrator_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.strapi_administrator
    ADD CONSTRAINT strapi_administrator_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.strapi_administrator DROP CONSTRAINT strapi_administrator_pkey;
       public            postgres    false    218            �           2606    34102 (   strapi_permission strapi_permission_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.strapi_permission
    ADD CONSTRAINT strapi_permission_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.strapi_permission DROP CONSTRAINT strapi_permission_pkey;
       public            postgres    false    214            �           2606    34117 #   strapi_role strapi_role_code_unique 
   CONSTRAINT     ^   ALTER TABLE ONLY public.strapi_role
    ADD CONSTRAINT strapi_role_code_unique UNIQUE (code);
 M   ALTER TABLE ONLY public.strapi_role DROP CONSTRAINT strapi_role_code_unique;
       public            postgres    false    216            �           2606    34115 #   strapi_role strapi_role_name_unique 
   CONSTRAINT     ^   ALTER TABLE ONLY public.strapi_role
    ADD CONSTRAINT strapi_role_name_unique UNIQUE (name);
 M   ALTER TABLE ONLY public.strapi_role DROP CONSTRAINT strapi_role_name_unique;
       public            postgres    false    216            �           2606    34113    strapi_role strapi_role_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.strapi_role
    ADD CONSTRAINT strapi_role_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.strapi_role DROP CONSTRAINT strapi_role_pkey;
       public            postgres    false    216            �           2606    34135 *   strapi_users_roles strapi_users_roles_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.strapi_users_roles
    ADD CONSTRAINT strapi_users_roles_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.strapi_users_roles DROP CONSTRAINT strapi_users_roles_pkey;
       public            postgres    false    220            �           2606    34091 $   strapi_webhooks strapi_webhooks_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.strapi_webhooks
    ADD CONSTRAINT strapi_webhooks_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.strapi_webhooks DROP CONSTRAINT strapi_webhooks_pkey;
       public            postgres    false    212            <           2606    34766 >   subcategorias__localizations subcategorias__localizations_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.subcategorias__localizations
    ADD CONSTRAINT subcategorias__localizations_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.subcategorias__localizations DROP CONSTRAINT subcategorias__localizations_pkey;
       public            postgres    false    314            8           2606    34757     subcategorias subcategorias_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.subcategorias
    ADD CONSTRAINT subcategorias_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.subcategorias DROP CONSTRAINT subcategorias_pkey;
       public            postgres    false    312            :           2606    34759 '   subcategorias subcategorias_slug_unique 
   CONSTRAINT     b   ALTER TABLE ONLY public.subcategorias
    ADD CONSTRAINT subcategorias_slug_unique UNIQUE (slug);
 Q   ALTER TABLE ONLY public.subcategorias DROP CONSTRAINT subcategorias_slug_unique;
       public            postgres    false    312            @           2606    34779 #   Subcategory subcategory_slug_unique 
   CONSTRAINT     `   ALTER TABLE ONLY public."Subcategory"
    ADD CONSTRAINT subcategory_slug_unique UNIQUE (slug);
 O   ALTER TABLE ONLY public."Subcategory" DROP CONSTRAINT subcategory_slug_unique;
       public            postgres    false    316                       2606    34575 ,   tags__localizations tags__localizations_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.tags__localizations
    ADD CONSTRAINT tags__localizations_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.tags__localizations DROP CONSTRAINT tags__localizations_pkey;
       public            postgres    false    280                       2606    34559    tags tags_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.tags
    ADD CONSTRAINT tags_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.tags DROP CONSTRAINT tags_pkey;
       public            postgres    false    276                       2606    34561    tags tags_slug_unique 
   CONSTRAINT     P   ALTER TABLE ONLY public.tags
    ADD CONSTRAINT tags_slug_unique UNIQUE (slug);
 ?   ALTER TABLE ONLY public.tags DROP CONSTRAINT tags_slug_unique;
       public            postgres    false    276            �           2606    34188 (   upload_file_morph upload_file_morph_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.upload_file_morph
    ADD CONSTRAINT upload_file_morph_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.upload_file_morph DROP CONSTRAINT upload_file_morph_pkey;
       public            postgres    false    230            �           2606    34179    upload_file upload_file_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.upload_file
    ADD CONSTRAINT upload_file_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.upload_file DROP CONSTRAINT upload_file_pkey;
       public            postgres    false    228            �           2606    34144 >   users-permissions_permission users-permissions_permission_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."users-permissions_permission"
    ADD CONSTRAINT "users-permissions_permission_pkey" PRIMARY KEY (id);
 l   ALTER TABLE ONLY public."users-permissions_permission" DROP CONSTRAINT "users-permissions_permission_pkey";
       public            postgres    false    222            �           2606    34153 2   users-permissions_role users-permissions_role_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public."users-permissions_role"
    ADD CONSTRAINT "users-permissions_role_pkey" PRIMARY KEY (id);
 `   ALTER TABLE ONLY public."users-permissions_role" DROP CONSTRAINT "users-permissions_role_pkey";
       public            postgres    false    224            �           2606    34155 9   users-permissions_role users-permissions_role_type_unique 
   CONSTRAINT     x   ALTER TABLE ONLY public."users-permissions_role"
    ADD CONSTRAINT "users-permissions_role_type_unique" UNIQUE (type);
 g   ALTER TABLE ONLY public."users-permissions_role" DROP CONSTRAINT "users-permissions_role_type_unique";
       public            postgres    false    224            �           2606    34166 2   users-permissions_user users-permissions_user_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public."users-permissions_user"
    ADD CONSTRAINT "users-permissions_user_pkey" PRIMARY KEY (id);
 `   ALTER TABLE ONLY public."users-permissions_user" DROP CONSTRAINT "users-permissions_user_pkey";
       public            postgres    false    226            �           2606    34168 =   users-permissions_user users-permissions_user_username_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public."users-permissions_user"
    ADD CONSTRAINT "users-permissions_user_username_unique" UNIQUE (username);
 k   ALTER TABLE ONLY public."users-permissions_user" DROP CONSTRAINT "users-permissions_user_username_unique";
       public            postgres    false    226            �           2606    42969    404s_components 404_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."404s_components"
    ADD CONSTRAINT "404_id_fk" FOREIGN KEY ("404_id") REFERENCES public."404s"(id) ON DELETE CASCADE;
 G   ALTER TABLE ONLY public."404s_components" DROP CONSTRAINT "404_id_fk";
       public          postgres    false    354    3944    356            �           2606    59290    abouts_components about_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.abouts_components
    ADD CONSTRAINT about_id_fk FOREIGN KEY (about_id) REFERENCES public.abouts(id) ON DELETE CASCADE;
 G   ALTER TABLE ONLY public.abouts_components DROP CONSTRAINT about_id_fk;
       public          postgres    false    3970    382    378            �           2606    59328 !   be_parts_components be_part_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.be_parts_components
    ADD CONSTRAINT be_part_id_fk FOREIGN KEY (be_part_id) REFERENCES public.be_parts(id) ON DELETE CASCADE;
 K   ALTER TABLE ONLY public.be_parts_components DROP CONSTRAINT be_part_id_fk;
       public          postgres    false    388    3978    386            �           2606    34821 (   casesSingle_components casesSingle_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."casesSingle_components"
    ADD CONSTRAINT "casesSingle_id_fk" FOREIGN KEY ("casesSingle_id") REFERENCES public."casesSingle"(id) ON DELETE CASCADE;
 V   ALTER TABLE ONLY public."casesSingle_components" DROP CONSTRAINT "casesSingle_id_fk";
       public          postgres    false    324    3908    320            �           2606    34741 +   cases_designs_components cases_design_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.cases_designs_components
    ADD CONSTRAINT cases_design_id_fk FOREIGN KEY (cases_design_id) REFERENCES public.cases_designs(id) ON DELETE CASCADE;
 U   ALTER TABLE ONLY public.cases_designs_components DROP CONSTRAINT cases_design_id_fk;
       public          postgres    false    306    310    3890            �           2606    34854 +   cases_singles_components cases_single_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.cases_singles_components
    ADD CONSTRAINT cases_single_id_fk FOREIGN KEY (cases_single_id) REFERENCES public.cases_singles(id) ON DELETE CASCADE;
 U   ALTER TABLE ONLY public.cases_singles_components DROP CONSTRAINT cases_single_id_fk;
       public          postgres    false    3914    330    326            �           2606    51095 %   checklists_components checklist_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.checklists_components
    ADD CONSTRAINT checklist_id_fk FOREIGN KEY (checklist_id) REFERENCES public.checklists(id) ON DELETE CASCADE;
 O   ALTER TABLE ONLY public.checklists_components DROP CONSTRAINT checklist_id_fk;
       public          postgres    false    370    3956    366            �           2606    51123 3   checklist_singles_components checklist_single_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.checklist_singles_components
    ADD CONSTRAINT checklist_single_id_fk FOREIGN KEY (checklist_single_id) REFERENCES public.checklist_singles(id) ON DELETE CASCADE;
 ]   ALTER TABLE ONLY public.checklist_singles_components DROP CONSTRAINT checklist_single_id_fk;
       public          postgres    false    374    372    3964            �           2606    34869 W   components_home_page_cases_sections_components components_home_page_cases_section_id_fk    FK CONSTRAINT       ALTER TABLE ONLY public.components_home_page_cases_sections_components
    ADD CONSTRAINT components_home_page_cases_section_id_fk FOREIGN KEY (components_home_page_cases_section_id) REFERENCES public.components_home_page_cases_sections(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.components_home_page_cases_sections_components DROP CONSTRAINT components_home_page_cases_section_id_fk;
       public          postgres    false    332    3868    284            �           2606    34635 C   components_home_page_ctas_components components_home_page_cta_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.components_home_page_ctas_components
    ADD CONSTRAINT components_home_page_cta_id_fk FOREIGN KEY (components_home_page_cta_id) REFERENCES public.components_home_page_ctas(id) ON DELETE CASCADE;
 m   ALTER TABLE ONLY public.components_home_page_ctas_components DROP CONSTRAINT components_home_page_cta_id_fk;
       public          postgres    false    290    288    3872            �           2606    34420 Y   components_home_page_guides_sections_components components_home_page_guides_section_id_fk    FK CONSTRAINT       ALTER TABLE ONLY public.components_home_page_guides_sections_components
    ADD CONSTRAINT components_home_page_guides_section_id_fk FOREIGN KEY (components_home_page_guides_section_id) REFERENCES public.components_home_page_guides_sections(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.components_home_page_guides_sections_components DROP CONSTRAINT components_home_page_guides_section_id_fk;
       public          postgres    false    250    248    3822            �           2606    34360 U   components_home_page_hero_sections_components components_home_page_hero_section_id_fk    FK CONSTRAINT        ALTER TABLE ONLY public.components_home_page_hero_sections_components
    ADD CONSTRAINT components_home_page_hero_section_id_fk FOREIGN KEY (components_home_page_hero_section_id) REFERENCES public.components_home_page_hero_sections(id) ON DELETE CASCADE;
    ALTER TABLE ONLY public.components_home_page_hero_sections_components DROP CONSTRAINT components_home_page_hero_section_id_fk;
       public          postgres    false    236    238    3810            �           2606    34663 [   components_home_page_library_sections_components components_home_page_library_section_id_fk    FK CONSTRAINT       ALTER TABLE ONLY public.components_home_page_library_sections_components
    ADD CONSTRAINT components_home_page_library_section_id_fk FOREIGN KEY (components_home_page_library_section_id) REFERENCES public.components_home_page_library_sections(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.components_home_page_library_sections_components DROP CONSTRAINT components_home_page_library_section_id_fk;
       public          postgres    false    296    292    3876            �           2606    34523 2   content_libraries_components content_library_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.content_libraries_components
    ADD CONSTRAINT content_library_id_fk FOREIGN KEY (content_library_id) REFERENCES public.content_libraries(id) ON DELETE CASCADE;
 \   ALTER TABLE ONLY public.content_libraries_components DROP CONSTRAINT content_library_id_fk;
       public          postgres    false    266    3846    270            �           2606    34949 -   guides_singles_components guides_single_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.guides_singles_components
    ADD CONSTRAINT guides_single_id_fk FOREIGN KEY (guides_single_id) REFERENCES public.guides_singles(id) ON DELETE CASCADE;
 W   ALTER TABLE ONLY public.guides_singles_components DROP CONSTRAINT guides_single_id_fk;
       public          postgres    false    348    3934    344            �           2606    34390 %   home_pages_components home_page_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.home_pages_components
    ADD CONSTRAINT home_page_id_fk FOREIGN KEY (home_page_id) REFERENCES public.home_pages(id) ON DELETE CASCADE;
 O   ALTER TABLE ONLY public.home_pages_components DROP CONSTRAINT home_page_id_fk;
       public          postgres    false    240    3814    244            �           2606    34701 "   libraries_components library_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.libraries_components
    ADD CONSTRAINT library_id_fk FOREIGN KEY (library_id) REFERENCES public.libraries(id) ON DELETE CASCADE;
 L   ALTER TABLE ONLY public.libraries_components DROP CONSTRAINT library_id_fk;
       public          postgres    false    3884    302    300            �           2606    43002 %   not_founds_components not_found_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.not_founds_components
    ADD CONSTRAINT not_found_id_fk FOREIGN KEY (not_found_id) REFERENCES public.not_founds(id) ON DELETE CASCADE;
 O   ALTER TABLE ONLY public.not_founds_components DROP CONSTRAINT not_found_id_fk;
       public          postgres    false    358    362    3948            �      x������ � �      �      x������ � �      �     x���=n�0Fg����ԟ=��ХC�nY[�؁c�N���/V9N�DB��?�|�>�a�����.�����P"
�BՕ��э�`4	IL�����g'-n��k�2sf���#�4R�V� K1BM���tcY���W�����H�kp�H����"�I��{��\�.�U�弬�Sٿ�؊>��o��i���5De�i��}ܦ���]��ۏ��/�MV]�h��@�s�'�F�`U��b�?G�s�sš�      �   )   x���	 0 ���0�:M���$�&-.����f|G�g��      �   �  x��W�r�6=K_ѧ�hZ��8VTN�KRNyQ�ħ\0$4�X&���/���Rw�������O^yw���(R��6��I�h��k6��i�1j�������YS�~��wxf�o�̬,E3��ܙA�,濼K����G�~tyavƚQ��4���	4��%(�[��<#���Cr}�x�Q���۪���1_�/���������)��t������S�F3�8�'mM��w�xHz��$����9�*ѝ�
���w�agz�d"�
�TJ���!ᑎ��\��IE.a��}�쭣���N���xe�J4�cO�V%�7�m�h<E=�t���t@Q����@��V����E�P�\�,��׏g��o����hi�h�ҭ\��U��sB5R�Ş�(�c���Un�	5�5;|GڙiEPg �S�Q��Z���<��3P�T�a� �E-G�i(
J��P���t�f�g!��8��t��8`���"��c��
8��-��L�Vf�[�
P���� e���"A~��~�c*E=�Φ�t�`6z�7A{_��V�T6���"t������ �Ď�KE��h�P���Ǭ���]��7V�8m�D��QѨfq�J"/����JƑy�e�y�dRzP嘼���h{��.YT�e� �=r����|��P;��=T�8�0[�w�P-H�"Xn���X�|FYBB3CT{ê�Z����!�j���&/k&/DrGe�c�I��(�!����3+�CP�֛Լ,$����	R�M
1,bP�<ƆVd�|ö�Z�m����ơ=}�rz�Z-E�%R��s���&��vq�q1�od3U�og��B]Wl��Z��҂����l�X�+6B��wjgD������i�L�X�%�|H
�]ܹ0�2g�:|��f��~F�HK����8��͎UZ���ޮE�TIz�T�/q5�0�x�=u�M�u��͉�Q�7��*Wb�*c
5�W��%gxZ�; �F.�f`�6��
�k�E�=��#�&ˠ���ŴT-	�0%�T-����&�o�Ԣ]P	�����2=x��%1n�Z�M'1m�Dw��6�[2]�*VY�f���j��Q����o��/��HB�A;��Ա��P<�f�+��m�`7�p��ӊ�a;N�$�6����/5[��2�7�F���+#EI�"Ft3ꍃ+G'w��㥷9��-}�QzP�:h[_�ޭ$H6h�`k��K|�Y_<_���W�2�*y�*4��%��n��Vߋ JTȜ���g+�U��Ͱ)�\t�f����z��Z(��}ʸ�f���ەs-�W�i���~��
�L�2�ꥅ�����'T,�ŝD紱]n
a��ԃB��,�P,J�X3n=�����wH��.Bl�׾�H��]n�K﨧L���P�3�dN�^~:�8��xt����%��puv~uvٟˣ�s�پ~vu������)�޼�xru�����XɯN��OOO��y	�      �      x������ � �      �   2   x�3�L.I�4�L��-��K�+)����M�/HLO�Jsqr��qqq 9�1      �   �   x�u�1n�0Eg�<@-X�c;ی����
c��T�����ֽ'��*%K�&�"�'�+��>[�/�ĎBp����G xC>!|p89x_�I3,���`"��S��HJq���Е�e�K����Z�m�j����J��:㛛�Z<9K��%Q�0�j_�Oҙ�k��6�����r�q$��c�f����Th����Jݩ�p+U��Q��u�ë,���mk      �      x������ � �      �      x�3�4�4����� �X      [     x���Mj�0�t
]@��miՆ�]���FM&% �Av|��q�bC�H�y����Sd�8bO^^��Ǐ3i���xL��2`?�����ǖ���R\(.+&EP6hVH.4����U��qS<G�Ǥ	V�������/����.�j�]��T�8e�;=���C����3��c�ڡ��g��r�NŘ/� n�)�R��8��Tx}K�Ak����H0^/(��j�?*o��>l�.���2���*]�P<�ʯHE�|��g�
З}J�'hשz      ]   "   x�3�4�4�bN#.cNNc. �4����� 4�w      �   B   x�U��� �7�"`ݝ����_��o�M�:�c<Bq^�}W���ʭ��%8�[�~7�	��      �   �   x�����0��ۇ1���'0^MHm6�PZlK|})E!�����l
�F�HaP���B�l���cƕ�Q�$��M#T��s; ����EuN�B�F�c~��.�Q���qU|�uїB���oȝ��E����_{&�=�Bˢ1�Au�FwL�o�Bo9ɛ��~ˊ�~��lT�|�?� ���u��
�a4�g������_�}Gy9�!      _      x��[o#Y~'����2<��MJ��RUgS�2Y�[JJeV�,�C�!ʸ��B��y(c��,,�6��ܨ����^�M��W���8AQ"����=����q.���[~�2�򮴗�|��A�%E�u�0I��
u�kOž)_{A�nWgY�	����q^㯯T��A��<�G��~���2�1�W��I�O����Qy���|��΂~�^g��������%��3uzr]�\�%�q�� �;K�b���:Կ�,Ri?�����K�����,Oa	O?��X�'|�8h<�b�|���n�E7Պ�<L|�d^��^'T�w�«A��;�O�>�)ҔO[�ީ�x,Z�������zpp���H�E�3�W�^������E7����
F��O�p4̼�� �\���NR�xAKL�S.4��ɂ��E_,�H�L�8�z���3���i�����W�'O��^�@�U|��a)iw�a��_���������_Լ,=K"]�_�.R�4> ����
��+�_����,���#�^{����$1y?Ѵ�[��"��EaT�f���[^h�����TȯFk��zh7)B?��@C��^O#��Fo�t�K��gr��.�d����}��a�0��{�ު
Ú_�cw�Kya���#ej�f����{A���*�~�Y����Q����o?��0�^\��4Y���\�b��/6V����r}�rs��oW�w��d/V/���q�3X]����y������n���-���g� �?l�/-4�����b&�����+�[kK�nz|W�����^��=��?KN��������E�e
H5��OGy>4,c��n��n���I��@�QW��]k<��	
�0p9=�0!�\���DSw �=@��'����@�pH�ngy���*{����zk�}MRĲ�J��h��&��V
�!<�y���.E�!�Q���$����Om?�� �#�!��!��ʈ�7�{��G)y	|Y�W�>?���`ozSN��<�A�H2�G �ρ�\
?�q8'E��g��A��k>����ˁ}�l�;M�w���t�iH����D8�k�n�"� ʠ	nB��=mt	oq��1Pq��ܧ���f���dP�ί7��������,��~�-_�ΚjtT�ј����~�
Ӝ�J�U��'@� ���-GH�#�p�]���Bx#�ʺ�=�եM8���`m���p��j��bŗ�op�S�r���׺˝5y��<�'��{�S*�}X�A��Ȉ�����A�e`+���Ȭ�䠶�$B�O�\fG�$�V��gپrY�e��V`�!�*9	� Q2�\(K��LA�C�aAF����]-J6߾,��G�6��M�(I��߯,e����'�ԗ���Xut�����J�kz������x{ ��T� =�AW���W5�
mx\lS�4?�I9���On'+�<[�m}�6K����jl���RhE%(�G`����������+�k�;���L��F�sW�4�B��C�2'd�}�l�a��`�*�n�Β��o*��`a����v��W�e
�e���1��6��m�͏��
@y��U"]c�HF�iwB�8ؠ�׈[8;�` ����AO��Q̧p�!�!2<j���n��Iݧ{���.\�5�ՠo|�:	)Z�2�I{����&�(�
�*��-:U�k���ѥoe	��h��� cà�d�Zj`��>��c����*��o�g=��=�ߨ��7ת����.3p^9�zᯮ/��K[5��|�R����Tx!^[�t�1���7_GhV��g<W玀a�;G�dμK��#��1�q�mq��˅�;)��s��
��.(�,I����$tEDU�����N��|\�� y��;J��!|�k��-�IT8[@�
b�)d�N�W@r��U����`_���=�/����ۥ�^�M�#Ij�b��o�~��1��pTI]�`��<P�e ��(�v�.�i'vQ��c��C/�жCtpƞmFz&�Te,]J;���jtu��һO�l%�	��bK��<���*?�ޑ:���(��G���<47�e=���5�dM���%/�����;� ��Y>�+2��iPq݀�
�XiTѺ�[�A&G�����5�yj���aWx�C�5yR=����o�v\����x��_r`xx~�BW(�sKãI���;��D� ��( r���c6��\������!o�����Wd=��m<��\28�l��%|�QV�5��>0;�����~SF<�VU�U�&X�}K6G�oJ���c���&��������hx�k�������ݫ��?�[�N��Sk[�\��� �|2|�x����}�r:'� �f ��
{��z}'���>A7a�,ߢs���El��p,ZC�ҡ_s�!}@(���` ����";��,xG��4l�� C�l%��c���IJe%�Py�����&��5F�5�u���� �Y�~��rU�v6Q+GW�:���"�����ǁ�+���������ʋ$bW9�S��b��|��UJ!#U,�I�A�c�����~�= ��¯����_Ɂ�}�7� ���]�j��$}g�q��/��J�uB<<<������V�<��j�~����g��MMw;��A�.�gY��%5�rcX�>~8�,��腩
�1)�t��/�GV\��w�CO��ߜu��ޕ�CEa�� &D���(9C������%	�V��k�E"*Z i< ��~��j��@O�W�Xp�c���z�����u�A�Q��`�� ��V��c�͌6��v�,�ߝ�u� �yM8�8�Xʶ�8�����U��.)Et2�� ����V��h�Gp�5������W�+D��k3����Y2.k���;���JŒ��2DBx
��a
�����L>N�|��I��=�-���_+�4��Ո��� ЪA�v�v�,ѡ�E�'�^&����h�>H�I��$��B��Z1��ЉQ�n���EAV��ٰ����!%j�$�NZ��Ӓ
`������I���n�#B��hJF��|C�фb ��ݯF5f�n �c�7E�Q��A�!`>�Xd�y���A�����r�*�TB����/��䬴�Y>�B�v��i�r�y���^�^]u/��/�ެ��=^B��G�5T�E�lUH�t�hyiy���\olx��핵�Ս������ʣ����W�ϫ��i��X]�?��C��?k<�I"(uלd����b�$��#
Ov����,P���'|r�o��Ի��.�aI� 8>=����Ā����P��$����z��:��T��uzA]�Uݬ�N+p����G&w ���X�5�ڬ�t8�!K/ƿ����WJl�Mf���Ll>��FD��ϙw9���b�sM�v�c=n/X�*v~~������`U|�?�u8q����S!('|��=��}�qӄ���?�g�ݙ��L����.�ނ��C��e� !|�"��1���{ؠ$%�	�5h9�P����p�p�a��Q����~�}=D��@Ob�xF�	/�K4�h;��LK�t``�æ��_p㠺@����@�����Wʦ�������$�/��,b�a��X�{_OM<���cݩ�5���O�ÿ5X/h$Z*��0�s(h�Ꜵ99=��.j�����g3��f5�>�]b��擏�&kp�H���<Ģ��G28LM�_}ӝj��8hci��D�����w�vT�]tf�sB�v��<^^[���?���u��Q��k���T� ����!Y���G)[��  )	o��JJF��b�,��΋4���l`��E	~;�GJ$-�S�ɷ�b��F��	|�R$H�, k岈sYr.Q�KZ��q��[����oHt(?�K8�.�t�L����a��4�4���(2O�*I�x0�3���L�w�:$��T�    ȼ>#�Er/�x��[���/K!䊔�d��~����t�ǿt�K���#L��S��.��bE�����1�d�U��+8���+�{�)�/@�tP�"h+�|�,��	�J����{����
*��(ڨ�qo�!e|Jw�>�t�#m�-f&d|�\`RdNS����P�?c"�� ����C��#;@��l���Q��1��J�"Fl�h�f�0R���TT��RdC�OR�. ��X+	��}`��#~>U�d�3լl#0kS���D�ٱ��*x���4_�z�pfy�^/�*�)�0�b2ch��'��7����D�@��!�C��_(LS����4`a����d�R�gDX��腙���]�L�Ũ��\�4ړ��p���f*�Ǽ�bX�AG�)��l6�E;PH&�9ʆ:����x��F�#2R�D5�F���w�۬x hwQ��p��{&��i@�'�Lyk.��i �O.����F��{`��J9oa��ț�����r����tv�?�|����
8B8��..:H��/d(cÚRYh�� )�mf^�
�N/B&4!hG�W1�BdJ�W��3G�MX�ӟ�"��~+. �BC�"k	�U���74Ӣ9H�����:��I�>�U�Uq�&��Ln����/��-�_Ȗ��v9��	Ak �L���%W�e��>	j #��3b)j�}S�h�ן�L�?+۫[k+w G��ͅ�9�Onz�������ͅ�%��g��6���S0��)�7V���?��T@�E1�G�@=Iw�#y�8�L�<�P���0��e�΀�3��xd�(�d���.��>�n+�x�B��~H�L�p�cƗ���IГ̽������9)n^�?�4�=;_Ճ�BD�]�+�MA'��G�c��>��:|�@X��~¿���"x:��~�<�c��| ,�
�ds�-�FM@�Y�hr��~ ���&J��fˬ`L�N��P���.�@xI�炰���;лJ¹����~���t�}�τmcv*������U"��O��CDE<�5x$��:,j �I^��~`�n��=�o+��8�K�Wdˌ�S�Sd���Q�H�>�����6Al����c���S�Nɐ������A�֢���>�s��!N�]�B*w����k�
)�,9BC���[db�xj���;�4��'���Y(�"�]��7�lB�x	�	�T�b������ӱ.�P�T�x	c��yM4\��]<�S���~���0Ob2aWd|�Ye>PKl�*b�.�-Y��-�4!�`�G6+@��y�	1�^�$��������(�.�~�>2`R�	^���>PX�<�s�%2̚�K.�3DvD�1qX3Ն�gF~���h}��Һ�n �����b<fx��{X0hKR!�?Dp)��9�}�@����ilw"	8e�:�7<0����S�� �1v��;�gO_b��~�8�X�dy��\��]��
̝�h����0	�{�c]D�>�1Ο��st��>izG��x�����i}�e���6���I�ux����?y�-�y���?�N�����l���}���u���d���>h�6�i�g��V�G��?��%���j�>|66q�"r�$�9$���"B7�ۤ> ��Eo�
��l�P����ƫad��� Ʌ�[�nꉐW���>��!��H&9[�<Ӿ��o@�G	�fe�{��B������fȒ4� ̓'�,��)E�E����|���7��X�(^b��6%�"e!U����w?�=�o4B1�J�@ !\#�aT���1�
s��:@ՉVi�D�mc�*a���
P��HS�ؽ��61?4m�@
&~��8W��H؜�f_�`Q��b�����Z@�bا� -��`���7d�b�b�|ؽ��{o�� >�9i�����Ys�z�uzz�7AB��_���}#��!;�Q���Qݯ��
�&= �P���v�b�"��,�că�������
� �QL E��B��"k*�J5y��\�Ϟʿn�Vm�<O>�^Jf
�>6�"��S]tH��	@D�M�L���M�˝�LO4�S����5c�`�8�_��22؁�T$oI��!<x���	y�w�rK)_�H^gL�&w���(����x��S` 9W;�Lx�b����=W���j��%��&�#2L'(.!-]����Y���P,2p?4zȄ���'��1�ɬ��p����'8P �"C�S9|����T/H��#9%:z�=q�i���#���[��&��)v�8�V�"%���wT�8N�%f{��6<{�MLH�q�z����a��n�M0�,�I�Ѹ�H3k���/g�z��GS�p� �9E�)
s�
p���د�j1��&-p�.�܇�@��w�1a9}t��#$?�m8ƌ�c��3�9a �&�d��.	B��5��Pp6�	j�%�߅L��J��I���X9@�A_��i��W��;G��6(�9O���d�=A�ek~x��^�6O�/��ăϠU�n7��T�ێ b������FRCHF�E#�3�\��~�L��o7�(K�/����Az��>�h��.a�E�%�̔�_��A��b���j�#JIj2j�23��;�\6"�!6*P�7�z8����8��>�&	�_� Up�	4l�d��"�3�U0�
%I5BW)�x��uR7upk^xmy������5�?�-��6*(��X�^[�^^]�Zo�71�������,�披R3o{�
:�}�*7}0�,|%��#�v�<M�H�,oъ�HD�����<Y�X���z�_%Ў{aȷ�$W��R�ci^YL9�>�9��;�<��£�a����i�){��fx63��gQǳ��Y`V��9�A|��c�n՝/n�P$�BQ�1��g�kSP4����R�sJd?��f^�-�JRa8n��b w��K��<龛E���o�3E��'�fPƌҫ]�-+e�¨K.xXVŁ�xNj��l�K���J��q�X-�j�"�gp���<����p��#����B���tĞ_t�-����Zn�I��Ȟ�r���Jw�Y�v0%�I:��t.5e5�?�b���g��T�t_1�f��2�s���u��`�,�Jq[��G�Ávl�q�TA/��?����k�-	��0��K�Ġ=�'�E,j�FV��4G�x��Y������%����rF"� �P7�D���E�{˕P�,1�Q�����8���-,H'�N����#�sڦ�9����l�.�1@�;�r�UA	U�x���1������	�A@hB��}�@��F`y��H�+
��8���u���r�MJ,��2Z(K��6S0,��s��<�k*��� �@bC$��9��	��AI�X*�h�0���
:$��D<qjΛ86���U�JtgD>��db�u��g���b
�n���l��`��i"T|�����n���Ýv�;o��n�-�[˽��]�NƙR$9XD���-q��R����Qv5s�b�c����=
I�!$=�'��7>7�3ξ$�'g�<m�^v׃Y=9=��M+$�dh��18�9%���/Rbx���D`�H��L��|�����p�
! m�j�a~��{l��m��ϛ���Qv����KB�+�+����!�����5�\&?�]#��!5�AU}r��H��pm������bK���D#1��?�H?�#���JD$���a�-�/~�c�dW1Ғ�d"S9D
d�&B $�v�]|�r��M�{l���
B����<qEΧ%�������[1�<���~jr�LG��9$��vaL)þ|���a���mv�l�����0~n�h��.xgBI&�:�D	6���(���G�t�lj`W��Ke�����A�}T{���L��T� �gP6��/�&���`I@��� Y�#|�&��0I)���� �)*ьX1`�    m5��, N@��!�}"���~{����N( �M��q���>i��OV"��n�:IHw�K%w:���I��,ksZ�Τ�Y�X�uCH�p=v1��T�:�d�LC��"�'��,���Z�e�!˰C��UA�T�S�0x�;z��I0�L6�����C�c����̪��N��3��ꘋ�F���}�]�;��J)q�8<��S�g%����a�)ۤ��o`�JfL{���φ萈^��j���i{�	�դ�"���tE�U�Lq�ݧ���ex�h	���
�d� S)\}�9��?XC�Sj���q&)��d>q%�X�OI/Z� ��ux��U%(�X�`�(��a���qXk�ծZ�5��V��
�g�3�S���&�;��}�/�=��+�\p��Ǥ^'����=P�߉9ɺT!EolQ�.�,@7�g���jHa^��e�M������"��n�!��BI�$���'��'۸�'�!�&���)S~I0������S"GDe��9ֿ��*V�%l&e
v��N��a0,pe�Ҽ�����������*�yuc���>_]c|u����A	lri:b�K{���>�����u�������� �~�x�.^�=�� ��sP�0�q���YVXWTG�T��;�5�����4��_���O��*����v?�	ѭz�y;�����-�����?����O���f;�?���#{��˨��ԍ�g�~���{�cz���Pǟ���T��*�?U����	��U��ú&�DO�_��=�.@��ER`��T��{"�! �Dj#����ʑr���i��a�LK
���8�e�k�W<^�jP�����n�p��='�(/62U`wj���JL.�e������t�0�a�b�GWb�HE@�0A��$�Ĳ�,s��+�9��o��K���=������t�	��;���?�Wl��Ā�Ű�n�vM"S�Wd<N	���agF��y��M,��K����J��f� B[���+.����g�q
�Cu���D��ಠ�Dєq�l�wl'p�@��R��i:�9�#�db�8��ak�295ϸ�\����!��5�L �M�!�!u�^�Tܑ�Xq�%Qd��er�Z^v��dT�T?E+��3B�K����_� WR�@U(�ص\��ٝt7�x>J������Q�`�`�:�	#������@��E�GȒ�M���$��A��!��ت_OeX���Y^�\!�����]j�'�k.
3Yf(I��_pC�(�������o��5�c���o���S�
>�����r\�H?5��q+��-p��8�s3�H�P༈!w�g`�����V�>b��d-���V)�j���W�:y�&���*I��<I
Ϯ�Wx��<�7iE�t���d?�'�YT�"�+i0P��r����L��2�B��>)��`�˄�Ƣ�'��FT
��A���&�Ç>O:^	�RQ����}�����B@}ԻAڥ�y��%3jW�l�.f�A��T����7���Ò�A|(h��Qo�6p�< C	a�`tp��LP�5(=��yne�q��00���J���ئF�PKK"ٶ�J7��3�o���*�.pUHӤ:߷�$$�n���%jD�(��LV�QS5�|^�!\w�H���Cg�����g�\
��C[�}��.�^J�"\c�`�3�P��\�5O�9	e��@���E��<ڰ0GB+�{�RhrjY*��P����e��I�ӗ�����Wï��ç�S׌���f�\H��}�v�!��T]~����ތ�hq��.1�pQ7�~�[s�TL���6�<�M�b��G�X���}9�r�SH�����%E�������(��Ԉ!3�߰:J#����!l�8�u-e@��Ȍל%R��Ӄ�/�a�)j��D��aR'�d���M�"I4�3O"������7E�\z##�f�:j�F��8���/��>ݣ����hl�Ojm<h�ż���Ŧ�����f�"`û����4J���5ƛc�+�&�q.d�.t����ӷ� +J/r&.�Pc۩fjY�vD���yy�Ɂ�b���)�+E.�L#�Ѷ�c��e��:k�Gk'�������������o����!��;B��[�K�F���Y�'@7�]�U����&%d�_�i�|	o�M�E�����?�����}n`7\�U�|]�0���H��W��Bn=�t�a���L"���uڧ��۔�2�T�t,00���������&-"��2�������!��SŇ-�G��I�W�Z~.k��Z��u�u�p��9����'4����	���/�y�{�KV���O�`1��I�a��wƍ���+vQ"��>bKV4RQ*��OӠO	f�p�n1g^�x�~/R!s�<M�!���f-�D��	�CSsK"��2.��(:c[(��fa.~6SI��*t�?��VQ?e9�V�i:�S��j*����
�!�p�$��16#��j��߆�&�_L�+"Ɩ�j�;Z��2�T3�!�<��;�y�J_���fY�k���~5_�����:k�ǽ������Ê��+̪Ka�DA932�:jfަQ�.nO����#]��E�+w��$�V�^��=��eX�W"Fd���֫�~am黯�0Gn��t`[��H�s���g���L Ք�K#3�H*v9��~*���Vw�x髛�j���n.�����c[[���ږ�Ugcf���2�0ׇ�Ǯ��#�$K8���6b޹��e)m�uS�R�(S��:K���p���;C��4��+[K뢤繹�U�c�����x��4v7��ګ/;ͅˡ�v����Bcs��˪��;;7����,	_m�ߜ�x���-�Ok���.�7�i��9:O^>����w-�>M�Hj�T���G���p��\|��0�3�ݨ�ŕ����Ս��)_�K�c���J8e�_��k�.6��66��+�+��7:����,��o>dL��Y��Y�s�70��1��ס^��h��b�����Vq�������A���/A��a�Tl^?S��z�J�9�`�d�E��rWK7fCL+vX�����Mƃ�������� *k��4��|��Ջ�q�����}2\�'ɧ��������C��L�z���egw�ի�����,ll���I�����,�w߿�hׯw[���g�^�>)Ov����U�.�E(���-���>����/�h�iP�h��:�̤��J�����=S��=3(f_���V}i����,�"��8ʶH�m{�� ϓ���(H�zF1|Z��_��a�\e9�E�8v5�����ʘ*eH�FaC����)a#M0[��Z%DI9� e��8|�L�,`?�:��f������a�ly�AX��aG(�"�6j��.�-�S��y��f��������)� ۳�0h���a}x����/��<�.}�<>��<����joi��",����Ar���eЧ� VI�νTS��+�X�MrDz�^[3���ӂ��ǲJ~��2ɴ3��4u -���l~0�Rv�G6�V����B^���H&���d�5�S�\J1;{�$e*��Pޙ:G~4�)[Qpj47s{o��BE6G<j@xsإ�ȍi0p�yd�'��c��-(�Ё���� `��� �L��7@z�R�;㵙&���}�b��}�%�Dg_����a.*#?{�˼��f��|�6k�.�ܖ'U�@���d�줋���#�1N	�,]\��.R��EU�Xz ���iN8��r�w��cg�>$pǭ�-�9���a�x/ծ1^0��Q$JV)s��.55$t�Lp4��W�|J9��Z��!P�)�O0zI/��/�͗�$�w/��^�/./��@F�!��R�'�+��������Q~2��@�?�?!씑T�8(�sb��]��f\�]�˫�[_F+�X�>]����Y>r���x�41L�}"�㍦'��smy�}�t�h%��JxS��5�rK��R<2S�~<��߸\Z:�������    m�w}rs}W�qJ��S� ���9b���3�I�Ӝ��L\`���vią��7�R=���3�Zv���d�>�d�K\�M]�0ۭ=�eX�>K@V��)��f���c��?g�+�I�!��&I<"S�"Ɯ|d�@`Kb	w6���롲%V)�s�J؜�[�S�ObK\)����'�#א��/��i�邒�{�%�k�&L� ��ԫ^?<
�CI}��7f>1�/��'ؤM�Vj�'5�5VQ����P]'En�'s��@�X�J���g�e�f���������T��r���$@R� ������)t�5��K@�ݤY�$DL��^�]x�<���5)�@�~�Ҏe�k۫������Xֶ+��Sڱ4���V������6Q���rz�S#8���щ.J�Qr�!�/n@�9X��}xD����u~|WQ��<�����T̟�^��GEsc�	�Hs���X�-��<���*5T�v\�_�snS5��?e�;�^[����NgtM��+�pKN��|�<�y��8�|ё4�5;�=��Y=�ԣ��i(�Qw&;ie�0�	4QR�{�N��E{/�y�A,���X|�1���w �{uep>	2��L�3A���w�E��d���)Ds��mq^���V�ra��i�_Zġ��My��TWձ����2
��B¥N�㺎�d�S�a���S��/���W���7*���o��P��0�rS;-E���h��|���P��qv��
�փ����J��0�Qv4���6�Refw��ϩ.�D�>��>��I���)�v�yy���/&Kz�d��.�@B���I[���L#�Ǟu^�݆�쭹������j�8Y���ד���M�}p��ރO�6�B�U��c��\�'sU�T��91�.�7��:6Bb�!�<��"ES������s�,M��PQ=,E�N1���[y��-)�l)�PMꙖ���)#��zj��Ck ��7�iA��c`Uʎ������Y��xb�͜��M����AX \*�N�SI�Լ��a�2�$�9���<Q˿�O(�f
���������m��`�6�F�;�r	'�͔>cβ�)��y#5ΛL9M�F������ 7������ŭ<�'+g��+�(�NǪ\
�/#�H>���[�
��,#O�8�L���[^���'H/
�T�OL�t$ϼWC؄mS�3����(��8g�.pf��'B;ۆ=?�WM��m���y-��a=�&զ�k��Y�]�=�fzx$e'Iޱ�f�@�"��&X�b�lq�����XY^�X[Z^[[��=�bx
�'��R��K��=y�)>Dj-���k��$�
��_�|6��6���V���B뀺e ����x����O(��Z[_�pRh��<'��۸l�)� �@�9XQ��F��0'���Ȧ {s��5	FX���M���zq<��ZC�W�NY��~c4�՟������&�>	4�iDX��)-ޏ

EI����53����_���dF�z��+�2Nߠ�a��<��gy*�L5,��[��fo*I�����BRN����[��5�g^��BPM	�W�Wr��.e��CJǯ����)���`[�B����h*p�V�Iޣ�&�f�/@D���T֠�r_�ʇ4�Ѧ(��|(j�_�����]b�X�>39m�}	=��C��0��y��$]�z����&��[zh�e9N$�g��7u�t0����mV;�'����:6Čt��]��
�<�7��	��&�SyM~��d�2p�����5�����c��W>X>��||}���[����[y��o�z���g�[�+�]���m��{�VB��0�21c�.*[��X�w&Q I<�"��JY�jw��L{Z�qEC�q�M�q�-�ke2k���%;�B{���!0BN;�=����<	�"9Q�8R�L��<PP��p�rGu���{��f�I�?�s^�����w���_�{8Q�3��iĠip��f�u�v�_�%�tG����h��ŷ�1���然�*d��̽Si;C��E�uQM�5�XS�s���@֎-M�r�m�+�@��p�bӾ eFR��1�n0��e�WЀ��3١�LN9Ⱥ��t'^75H�Ẃ:z�#{k�����2?��v���T\^��)��j��U4��ӝ��9�l��:�v��A�E����dW��K>us�o���(�\[���?���p�2olF�y��|�3�����c��?F��!�<������#�-x�@3�bbCi/Bɐ ���L�`��ll���+=&���Dپ |�Yj�qh��d�4B��Ye@�:ID�IS�H�����Uٲ-`n	?�1�b����~W�]����\�2H��t��]�ҲK@$=)Ul�`�o_��L���nr$��o�Wv����lr�;F`���`��.a,y��&Mm�c����P�g��?�1+��1%�\�|��y�{z~���h��pk��{}�d.=x@��L���Td]�Q�����:����:#�d+`M����Tf��L���BulծH�ۆ�=鹈�BL���NF�-�N�MJ5�>kה�XsQe���2�O����_����Şjs�#�Ha4D�6���З�$������,9P�`���}5+#jՌ���y�ҙ�i��^�N��"�'U�S;��+�<����:T椧�c3�%&�G^�<H��M�iw\v��&Z$��@��B�}�ij@0��u�<��Ij3��D��M& F�K�]�w���p*��B�]3��U�:�����V<�!�dy��C_c����I��e��V�N5,�j'p�u����D�1C@�P%ޛ�ʳ�pX��EF�3~��:ܡOM�E���N��i"��'���f3ՑAsx%��PLw��u]�h��c��T��� ~�S�x��"XΎsKp}��}�[N����i���9E�M�ׂ��v��3���-��ԥ�y���\�!��"��'�EYRވ�t�`�	4L��#XL�����YSҴL�(s���O���� �"�В��P�n�0��H��˹~/���v�R�Pp�P�-0�cwu�l������C(i�
bô��s9�kc3{�	�Xa�Ln��t69O?��K��6�2����SK��P�ZN����t2��E�UUG���9[eY���}�I�l8A���׈yq2�+���p�9�t|� �� �N�@Z��U�3��yc��"��%��Ր)w�E5ï"���,����Ep�}���cl�W�A{7���F�9VxDD����A� �hF���L��ߠ�[s3d$�S��dd�$���:3#[X��	l&��XH���Ȕ��ѮN��ٲ������O[��'=LK�J��R?��*��d����ט�:�;4�=sv�,G�AP�_hkܚ���L�15�800�P��jv��{M��:��G���"�GӢK4b�ʔ�-��28��<N/�!��WI�lpl��<����^���@�=�k�-����8�dDC�i�4	}1��{�����8�wS�<��z�)ɗ���N��󀝨uV��+�5��w�f,��$�%�0�`�0�3]��x�Y�(dԶ5�}��v�)������X?�j>)&�d4��	x�G���<9'Ol�`J}����wB�k���+E���b��,� �s
��%����K����9p
�MH��3ﲄ�M��$1����7�"y��=fQ�j�
Ƥ�(�@�����e�u����&'ܿ��zͳ�I�ن�y�G��G�N[�j�W�[��N8���?=7m�;�3u��^1-� �_xƔ��n����z�IR_IN�b�y}��foZl,>�~˫�˝��ln��$���o��?{
�
�uȬ@��P�lj�\����F�n�K@ݭs��#P
hz��/[g�s �C$x����Cf���M�����m^�X�2�ȈgC��@�p�6��䒨�|��V�� �w<�40}�l����h`����W�$B)���O����/�Ly� ��~��L���ɫd.�^ߎ�*�o%�WN�`=���R�����{����������0�Ґ&r�Ջ<qC���    G	��w(f��ܟ2=�J-9�L�cW��iw)\���.����2���)�i	|Xf�w�_��#ǖA����)H�# �Pri�`i����Dd���޳s2{)L��]��1TW��雚��33��4���@ɱsgk6���	t5�~�]|�ǎt ]zL�4(��Ь�@,en�}��ZG(��2-L�:�:r�B�Q�2%���%Lv���9J/�(9zp<sC���
 ��k�i��t�~#�UƓ�Zf���1GL���p{�bI'F�0��EI��%�;�����'����_0T�1q%����#<HHI��eJhN<�#%9�}�|>%@gꛈt��@x�"ם�Z��N���k�8c��4����%,�	��݋�X�G�ql�UR����lE2K�[U��7��l�V�-U�)_�6�8q�a�dAP�މUXEqw$b�^iWFY���>�H�$J[%
�\>��F'�\��3m9H�e�rRNe�q�I��տ]S����l�O�p����L$�9:|��\��̀�������'�Ǩ'|���ps�ztXI��~��)G�RS�Ѷ$�h�Kb�rb.�#��o���~��RɈ�L+��ϽsI`� ���Rkd��:إ�b	=�D+Sڨ��5ٛ��Г�������QJkVB:R�w�S�� )Iy���V�h9��Э��2b� �YmJ�U-��Q^�j���'_�	��(�,
QMͽ-��ߺ��E�J�k� �qR���:[\^Z^Z\�Xl,-���f�{�$�:�q��N�YI�B�Y������U�di����F��:���Ӄ�ś��+'���^������7I�~~8�o������J�~��J7�>{j���;�z�@VQ��P�M¿�1g� �����8�)5��d\�.�6G`����ks�>i�d#cԁ����{��耧��V�ˍ<������}���m��W�7/Z�ڋvp����X\w�����ַ�_}����b���REҺ�\�}��mt_�7�˯�;<��'�ͽ��������Z�:�O_�]���׃�7W7_wF�����U��^�_�>��^���ܿP_&���y��ԃ����f+{����q��6�o�g�At�q���Qx��� ����������߁����E_\���W�p�̾'������Ę(X�=3��&Q��0�;
u�r�y�#�bP���"�/�pH��lS����<n�4����&= &|��� ������g���NP�l	�����"���Hs�i�4c��cAq*n�h4���7�+;㐂�~��f���̑��{��v?*�L�~�;�S��G��@|R%�����ǌ,I��!X��9WE�k�.��S&Z��؀w g��+qN��n���}	���pr"(��9P��}�n%�epa`��O��e?w*˟e���Y��y�wiBp�j~�ye�K�^������n�GQ���m��`���ca��3N`i�96�����2<'67�1f��H�y=�[L���sj�aw��3��α�y�AN��}�~��\1v�b�{q�JX����Hz��V�&=$AV��>S��t3��
�[{g��_e�ض���>N��J�۴�Ϥ�Q&�*��Y<�q�D w=�kXw���!W�N}1��п�<L��+�1e�8�.�V R�E-�#�k�;;��ǳr!RH�7�ß ���het��J�<V�V~F��[C�*�F��܂4����N��0��VZ��z�L��qY~�)�?EN�ư�<�zt��?,$8�ϻ�	�$�M�q0�H���0t�򪊰1Y!�1���-���2���9H��Ɏ�#~e�'��o��Є�M׻4���ɔBO�0�Ge��`���r����R�ߥa���L�œf�S%��a�����L��Q>g�8��f��˹�0��v�w�e�)I�gj�f`�S���ԉ4�Bu�����5��5�ct8��?{'RTE>��χ���`��m���������:�_P�����G'g��3J<����M�3�D��hΎ )Sv��:QS{\-YN�4��;���/���'z��6M9��hp�û(K�s�*�Z0��dQ��/���Ix#`{�i�v\�}@<Ps+#�o��*�e�2\�A��4*�n�Y��w˹� _��� ��i��Vϖ��6]LI�#Ì&*�U�X%P�V=�9$��r̀��J_K��XrX'��(r�V$S�w����[�$��f��!����E�M_�+�~t�ź�ѭ�"�E)�9��5��c��{��`�yV>�|�����%X�`����(G|�4f�i/)+�� m��f�҄ڛU�P��f���=ǘ����u2�������CB�g\�8I^OA���.Q���=r&�Nǿ�>F�����_j�(�����b#���J����x�F�7N� ��c�<�H�)��o?O�d:��,h�TK��;Mc��|�Ű	8
�� �N4��+!3ACl����o�ʾ�4SRA���K�2i��)�\?�x*q
��@��'��
1����5Ɩ���x5�L����
��>'TN� l+���Q��[��=�� a��c�����Y(lA���C)󮛻G�>>i��Jl��t��Nv[�n��u֤�Y��`��+���2���f�u)O����s�g����)�����)Cc�x1}���T�HI��F���X$��1!��lĹi�$�}�ZBZ��ѐ�0�����ٴ����9��-�9+}��j0b�)�AMC'8�I��2�X�����-eY�f�4\�H�J����<�/1y˸����mBQ�:���1�+�[����BR��q���}L+#%a�J&uQ�X�2%r%�HSY�b� ���4-�`�
t���5��m=��������X��z������֘���
�����k�b��Sk����ȹ��?_��dQ�Xh�U��l�P~�W�͋ʗMO���Td\6u �(m�&��NiG��L���R�:?�ҟ��.Ϯ�긃�ف��D;����j�H�'�X$p�6����֜�����	�#�0FOu������P� *'��-v�ق8w3d$#B ���82;�2���T0
ACq|j�S0ҙҎa�Q�s��:=f�c�.��7b�l�!�=�|�n)ҥ�#��Po��s���M�kKpx)(?��W�8����.h!�@z���ͻ&j�'1�i��}{��g�ZK�0%�略�x���h����j�Č�/�<��	�M�-�W��������c��j��$��,b;��FujT�b}bnTYWw�%פ�M5��Ȁ=+k>JWҩLWZ�T�#)bݬ����������YL��l�bz��\�$�o��;��k��x�r�s�&{�z�����sN0m�Ѹc�b�B�zeykcm֘N3��7��e��&=��EEl�2Z`^E	=)�,�,T`\qag>��0k�a��F]�bn�0�fIn$.&�a`%�w@5i������f�P[-[*;!�-8	3N�7�t}I��0L�0�$!��2cNs���6���ٖ�3%�ӟ����zq�P2J)5@�DJ�����[Ur,��G��_0Ȅ���@��o�4��Ye%�+�R�+8ն�Ȓ�b	t���k�����y�5�И��S=��F���d4qT��77۔N)�T���Y�<:����������sAf�`]�C(,_�ΚjtT�ј!��~�Le�M29����hLT��Զ\}����%�_�������_v^�E:�����N_Y��t���rg�_�g�-�˞���r��&Z%��-t>;��PFPR8}��}oJ�!½�\j��5��i�Me*��@rG�H�	fԕ�E994������}Na5���z`���X��>���;��+Cl&����NS7�U͜�$Ƽ�Q�e�h��O4��(=��	�bH�� ��Em����X���DϞ�X�ZlP?�(XM�L]\�X��:�D�������h7��#O��Ҝ��>e}��,��P?AuL���<�抙3#ʤ�&q��.IF��1n�N�d���/��@����    [��n9��KU2�环5@?��Q�ja�'2�)��M%c#�,�2}�+N9����\W�g�ܴQ�}��D]uٙvm
��9 �2�*A�rp�W\��=R��?V�o��T�o�g=��=�ߨ��7ת����.�{^a�zᯮ/��K[5sP�TS����ıW1ՠ���̔!j���ʽf�<r���xú4�ț�tʱ�9D��ER`�涓 ��`�F2e����I�a�H�t�Cj�P~�B��/���S'XV���,ujR?ڠX�@����a��e|�x���k���a�k+=��;��Y~ڡ�1IyT}�<2�$�� � ��P;�]��i��̑��p��� �q�Sy&f��W%L.���C��1
)`��@4��.��a8�4N�̑�
��:I'� (�>w>
uL���<�a�Id�a�S�8a'4	��&����uI"�b�E&7ڵ淎v��C�	��HgO������c�S��IdS1Sk{��n���H�R�=���e�
˱�'�( �Kb�4C��+�%���,���^O��)������v�%z��J�ih :�i}������ �=D��L�,h��Z�➤g��3.�"�_�������_�͌��Jkei3���.uO>VR�o���^�_������^޾ڻ�ؽ�HI�~����z=���ϐT;P
0v-���ᡖx>J����꿡΄ X�b��е��N���I��S��SV&��ǈB��r���E�4LPNx8��wǪ��D�ژ�M�.5���W+q(ᒦϕ����7d����+#\���o��5Oƣ�������ՕȦ��¸�H�OWK���;ȋ��9��$:�c��~��O�M
B�}5�V�>b�����^c��P5�D�ëL�87!M�>� ~J\�T=-r��R���_��%ӟ��;l�Gj����p@�eQ�/u��at��-����&��������y�_�����,�� �\b�2!�R���Tw#�&��VOuBb�	��/H��k��>O:^	뒛���w�˷cP�n�v����J�;��ڵ3�X���+�l�u�Δ6>k���$s��oʰ7�6@[��=�I��.�$t4'��%r��;���]2�?��ѳ++vJ�E�\S/jiId"�V]�f�vf[ay;�����AWrқ@ u����'!i��Ԩ4*�* �tH���4��?���	��
�(��j�t��2�їRe�R
ġ���>9�<�^�>!i�'8�:���;�M��4������.���2�i9C�ʰ�)ұ��̋K���&�S���P����e��I�ӗ�����Wï��ç�S׌�Ove���Lg
���h�Aj�Rw�mC_�d�z��P���)BNդ[+O_�[I�I$q�z�rT����[l�z_N�lp�fB���H� ()Z�l=\Ԛ�d�;��$c�W�R戋�!l�8�me@��Ȍ��Z7�.(��U
eD��t\�UP�rJ$g\��%�-�eMa RF�F��R�d*��D���"����K���%9����'�Z���[ܧ#�|Yd%F��2�OjmD;�E��q��<��K�F���_�5�u^kc�b�����K�`0��]�_Qc���Fib[?��x��G3�`ǹL���1�7JS���(��e�)��j��Բ�ӿ�}g�6O�(s�������"\��Ɣ�>+[F�����v�]o�}_o�^?�V? +��ܼ#Ĺy����h�K��yt�ؕ_E)? 9kRB�5X[ɗ0�ڄ\,�2WO�a,i87��db^������r\��� �&��NG�2�TVs`E��� �3�M���x�as�1jHe$��	�T�[�'u�^u�f$��eU��B�o���]4��O'봦������ts��`��&�D�~fX`��q�<z.l�>�N�	&H�"��"�����5ߧ3G8�ii�/F��Jc�JsB�T�&�Y/�-|B����9=唕�04��Lf=k��g3�$��%a{�S�Kr����>(���{aYY�����#�dF�[Y�X�ޡ1Zv.��X�ҽ�FcK�������Ł;y!��lt��9����b������|�S��w+[����[_l�f��+�R�D��DL9�AA932�:jfަQ�.nO����#�����i�T e��,���
�24��X, Fd���֫�(`ZcK�}̈́9r]�A���> ������h��� *�F&��q$���t?���u��s���Mt�\�k7�_]|s𱁭���em�ת�13xZ�~NU���0UM��c�d	�`��i}�\�\��L�'����ɕ��d�}c���*������5�k�,/�,l-�����斗V�u��.�z���<�k���4.��S�Y�˫��͇/�~����܌ւo�$|��~s��ͫO��<������X���q���<y�<>X^�ߵ�YC_�X�7�G���p��\|��0ȳ"�T�ŕ����Ս��)_�K�c�}sJ8e�_��k�.6��66��+�+��7:����,��o>dLQߐ������<������n}0^�z1�E�Y`w���U\�h���/؄*��	����`�b����LDv%֜t@��$�-2� M�T`Z���V���4��Le����ՍPYc���7��'�^$�������>I>O�6�����eZ�����/;�+�^e7'Ggac�d�N��㟖��e�����E�~�3�:>?X=��bx�Iyވ�6W�� ��~����z�$)b�����E�� �"j�uXG���3XI�;�Ӱg�5�3�b���Zll՗6�ˋ�"/������lzd[���4��$�d<
R���F�����W�u&W�R$��A���eeL�2b���T0v�R�F���q�E�sv]C�&H� >�%�<��>�:��j����tLz��#[�f�i|��3e�QPw�n��G���7��E�&hPճ�1g�
��ލ԰><X�R�_ov��n|l�sc�b����w@�l��`�� ������T�*i�`���s���1�B�1�!G��gI�5CM�:-qٕ�,��_�N`&�Sd]�;���#+�����v���I�x5�D�Vp���u��F�{�Ӟ�k�L-�bX+��i�����~�,�:��[DC�~2's{o��BE6G<�AxsإV��	�a�uY1�!�����K��L��P�m8Q��k�R�m�K!}������Ou�叟��2�si���a��K��9��͚�Kg���IU>����$��*妃��8%ȳtq�����tU�c���"���AW�U�!�urck������m݊�����;�o�ޡL��a% 9��S攽ݘZU#�\�8�a��J>�-�$	��쐒� ���r��B�|�M�z����U�����:�)	d�U�W��҇�J��2r��j�D��"��f@��S��4*-㔔N��aQ�s��������j����J*Vq4��Mu�D��oOJ�K�d�'b]Ԥc�O�N�k�;�Ӧ�E+��W����k���ԭOb�7.���o�n8:�x��]��\�z����+�&(��%%��j:r�]�{�������7��[=���3�Z��r��`2J��'K\�zn;�=�eX�>Ǩ7���|l� ~<x��̩��i�����d4I���1��#K[��D������2S�dx-�NM�?�;F��k^�:)§_����.�`ϼd~�Є��ta����G��v(i �/��	�N5���O~B9���*9	5哚������b���"��q7����{-Ui�>�,����K��?ؿ���yO���{\R�	���Q� �%1�S����j7i�.	P0;�.����nu��Q΂�<Z^��������������V/������|�^����[���mϴ�v�"p��V?:�k��x�(�4)P�J��r�x+}ZL�iOT��Wl1SΛt���6�+0��F��-�X����u6Cp�uYs���aSZs=���M�����݉�ѕ��(����GnL{�v���fA�]�<���    ,<��C���x}�Iw��\���(x8lo�]���h&�6"�-��'b�1�ۮv���VI��-��j'3�<8���S�SZ-i�v]�ֆ�o��]��h�`?/���I�HL�K�A���C��@�cKL�LE{�K��m��O&�����i���ςi����&nґ~��<�Z��GG_��d��ߞ�ڧ�f�`�~}���y֤�P�V�j�IyI�8���e��N��n�Bh�]�%�e�N���c2��xm5������� ����G�'����1�,��<�U�sc��u�h�MG�}۰�{>�>,+$�F߹�ņ'�on�Q.k��I˗�q+L3nZb�e�M�
I�д�`�T:��N�^�6.PWX;�RT��(���8�g�
�E}��,1�Ҋ:Tƀ`'ա	�	_Ģgÿ&�@J!�+E�K���!�}H����`�#ʽʩ�J�i*fNbGv�%��S�0���@nfYc����a�\�J;K�;)�C�a�{�>�����B7�W�c���rS�3���I0��i& �4))��
��l�V����)�t�%m��@�����6f���3�MpP�{�T����L��S;�;���ԋ���!�$�1iyC��gY�W��&�w�}�k�&��R��[u.�3��I�܍.o��݁vW�W���P�nv�Y�vL�tS6';��e��8����:��3�*�N��� ���,��L��M0�e�˪]��"�/��Z^�죵s��wK�[H���x
IΞ8�
����,k�њ�Z5�hĝY\2���%�;e6ٌ�v��[��VŤ�J���]n�TUiEI$XfE�[�_�0
�D�?bg���@�!zv��Z�۽C��6�v�@�h���8�'��):q������k�Ob�E�%=�#0$����E�Ǫڠ��H�8���j�\<��s�Vl�.V('��;*Ky�@: ���jN�O��~��7�cN�4�uF.؎���!&��p_��0�~�[ա��h��ƛ(�tf��jY��0W��)<Ķ�;�U�HW���.��#9T�n̠�H�6��g�X}��tF7�,R/]���F�դ1+ʹۃ�J~� {8�w��F#���K�F̽W����<��!,���(5+��Nt�u�bV�Y��w��ϡ3���<��;� ��ǎ�4ɉ�3g�'!� X"+���[Sj���V� iʤsm +�3>@�Nښ��1O���lv�R�v������}H����2V5�\�m2�,Z��x�r������S'm��?����9���P� �J�T�'8�o�'�j�vk�`	j� �*�bk'���7S�����p���ߡ�%Of����I��6n��&im�J����[�3��ge;6j�cœ�h���O�_,�-',��'�%of6��,�,��#���wuk{esaims:�^]��X���1
���	����	����[M����Տx�/0B �9�9w�wuʓ(6`{���^��>M	��\��R����|�j	Nȶ��0�ʉ��I�{�m�̚A�p�)>	'���I�:D�D9�$����=���!�̇���d�离E߶�5�����������r"��Y���a�-dvҥ�>�)d� j���$2��Y�r&�(s/h�
uqO|]��qk<�����+Ӥ|Rs���ɈMq��X0'9�8����>u��Op�	��c:Dw<�28�,���x�2��%��)��� svB�������Xh!rN�nÙ�(�=�KF�n��5��Nunw��#Z)�/�j�Ɂ[�ōoWEpS8�g<��&^wӂ��et[�M�%�Á�_r�Ȉi8b#DXI"��� Ln���y�, ؍���]%����!���A>�mOD�-���,&`u���Ȳ�+\�y�ơ��p"l�Ռ8����n\J���5���h�sF�$�-Dz��~��%��;�_T�zR1#�Ovj��*�Q�F�<��&[��E\rj�7�.�-��C��K��m�ɣ0���0�yHe�V-��%6��`l��d���A���y�=��i	����&���my�<�v�/�g8��q'0�O�~^AMFɍG�\���1����O����$�Bϳ #������O��v����s�匪AS�TͰ���Ь���-�S,g4�X��<�Kd��wX�eMC�L��(��1����3��)��D�+Ej�Wkj5q{؆	$�`��Ы�.A%pr=�5F��蚔�8�+? A�2ES^�u|�=��aT�4rc ��>�Xqc�2��)X��OI?M��@X�z2 ���<^���Y+�k�SWc_�m*Ϛáh�B���������<��q�	���ɠfD���D KY?���t�A��xQ)Of�󕱢��)��&
�8M,��ĸk����R���V�^7��&����I������x�q�J+z\�!�-��z�}�|d2����=�`:�uXh�(��R(!��)T1o�O��"�H���A�B%�vZG��pϭ���Y��gD�?����1�+#�j<D�:��D�����O�����#y�0WRs;�aO�Ml ơ�q��C�����ɔ-g,Y��X|r��'#���3C���y�[�n�E�m9*]�"���;�0�L��iE���I����:H~���޵�Ƒ��ڧh3�-�=��DrWZP���F+��Zǎ�zfzfZ����"e�� �"@���H�p�q�`�	�ɋ�	���.�O�"Wދpm�����>�N]��"�� A��L�E���P�A�/�-g�,��#V�v#z��S�Ɨ+�ʹ�霚���3�`h�%i��v��'�������N������m.I�H����_���ܩK������d�Ȉ��%�F���1�x�æS�Ð������]��	WO�,8}����OPowm����O�:<A�ޕ��nR�"��GM�����{\���ʷ�s�r֊��w�D�"	Ўi�N~����h�[/���+'G�϶�v��q���c�s�w-\X4F��I���,�����Kٞ��q7��w0A�qg�w�h��y�i&�cԡ	� K���1w��_c�]�3�y�F��l������`C*�NL�O�z��If<��
 y�G�lt���MtZTZL��4:��ȥ6��}�bGZS-5Ҹ�:�,�C;���*��5k���P.���5��T܀Vyz=PK[|,s�ܦ�mR�p��7�׬��9��i}(�j���y&��GܱD��j����o{�G*���7���j�r3mxH������<���Z=C�p���E��!.@�˨C�Jw\��^ϻ�����D�Z��ͬN�//��M�M چ����?Z3��R�cU�/��z�	�	t����ͅ���)#����)y+���h�Ja��ݡU>&q�܍����弽!��k�/�;@���M�m!���h�9.>�ϋ�X��k�Q�+N�3㢮�O�kD��6�#�?8�%� OS+��i�u�����2uӤ�O6�A�+�I7��U*�6�����~�ٿ_���vV�1�|u*�����N%\�űU�y6��[�MӐ���^�m�F�j&��:��0��hm��u�Ń����qʵ� !��%��E��ê�ԎƁ���r����3���boQ�P���ș��?�t�n;����%�����4z=��ծ?D	<��,��u��,�Q�b�)�Jq��D���(��!F�=�/p.�p�L����s�u��.��Ņq^q�'�N�	��r�n�1�ti���n����Rl3��Y�G�7??���ʅ1 ��su�.�xm鼙F���.������/.g<"�?�Ꙇ�H*�I�is-������)�"u-Tx��x鲞(�_�C+n4�5�7�A�܋}�*<�&��(Y�����-xgN�� 	"��h-�'7(U��U6 �N�����V�$2fzIPm�~ϰ������)�^�çe�$ ���{�Ht3�E�X*�:�&�T�-��؛1x@��QZ�+hL����he$P�;Ib�?�Ql$�׀
�l���+�U��|8    ������K�t�&��o}g{��|�
9���d�<G�j���0���`�4)	T#��r�!��.P(CӖ����+�JE#m��F�#�͡���DHB�.�$2�\��a�
����$��.�s��b]\򔶣�=E.��tD����%��C$ۂ3=�M�?<@�@H���Wo����E��1�Y�>���jr�Y�[o#���d;xn�H(�̵�܌4�B�1���$O�Ӡ�������3^Y|����`���^ܼ!��1@�<����9�-�[D.���S"�x�����&�f�W�V"+�Uذ�K������A�]S�D�gS�:Q$�̮�2jOj�p`הL���3��$��@���������	�d�QH�5����l"�>���]HxՇϒj8UQ����� fV�{-���h9I2��`����.�Js�<�%beC�_���2|J�6�q�#�SЀe!���-Ӵ6[eM�y����;;G@7x\	!$JUI�~i
�4/�	�0�6�5�Y�Dv$֜������=�~Ԣ0���?C�1Y�E�[1:�W��W���H���Ы��m�J}R�\�b�Z�UKx-��+W����C��=���$���dC��Ƨծ!��!AE�:�J
@��t N�A`ό4�������jAN]X���Ko��I��;��`M��~f�-U��󧨧�ө��B���0�b	Z�8�C<.Q�՟���A�n�<�+8]��+��i���q��[L��Pg�b�U�hЙ����-j.�`"vŉO�i�Z!������#=�M��uAX��t۲��5��n��0�Z�&8�ҕ��V~ĨpP�#p��SxD��h���$]�ɼ��+-�͊o�<�sL�{����?K{#�(�C���^4P�˥��6��m��鱌61����Q��Vv�S�tIe�6g=Є�n"�8̿)/{~_�@��3��ӽj=B7ia(�D�/Z)@ҏt�M�{c�-�~0L!nk���i�ї��/�����8���|��>�Ġ�����<�AM�v���n�%�(���[��>�#mQ�������<����xX����w���ݺ���g�糨 ❢@6!f4Z���;rB���U��1�z��V~�'�C�Hs�-��Y���x{5���D�f��A,�ckq�HSv�� ��#Q�w�N�?MҀ�*cW� 2u������<A{1�@@1�'���뽩=��x��zfu3����"����а��"��C�ow�����{n��8x7�f�ڙ�p�0�7�]8�o������E���4�{�.�e��Ò�-g�v��\h|5�B��JXA��h���Y���3�Ԋo��Z��&US9#XT7��.a�"!��DЩp�1�էQ�At���S���锻��4���/�����3��f�e�S<�)���&��	�:Cp"X�Z��@T9��i���CH��$�`�y�g9w�4y�����)&�5�q����\�I���`<�~�E#
E�����|�3���cub9|��O��&3O���=�D&{ �Gä�41�N�B��t�5m��	�s��w�[w'���ؒ`���__TS�q�Ϛ|h��^0l�=\3^p7a=�����NOE�s425�7\�KD��\ih�Kz�'�Z�0;V��X�˚�㬖��B�զ�ĕ��I.�#������7b��qp;�l2K�I�M�ni�ڥ�0A��/�P^Z�i�������+�b�?Ĭ����9j=�l���6%��)�֒�ڜ���T�t�|���R��eBs���	Nn��,"y��J̻��c�V���*�J܎/�,b =�^��q4�<�R���a�5��q4Q�U��uSs:��`v�؜�ل���Xe��2pR%s�J'F�X	W�����,����5J��+��9���(�f��U)Q��QFms/B~��Uz�l뾚k�v��^���p�p�!RfQ ��TF8.h<���b:6�.(k�P���� ����(Жeh�'�d���S��N�2�\_�L��Lp*a��ݒs0A��55|C"����h�]ym�-��dv�@5��RՅlW=����Tf�:��0����غo�ӿ�Bcڕ�x�N #�*���q6KŖ��UQ�V*������Õ�^���pe����$-����J��(��]v(� ��4�Xvo�_��b�\����c���jdI�Uk@ؕ��Z6Lk�؁��84���Q���A
�^2'6��x�m�[�ve���vʩ�o���|�Y��|���@�j6�T���q��ͪ�esMO
	�q"E	�d�g�>U<�U'�:�N��f�H��G��y�	�/Y�*��|u��޵��;�q��$�^|��bdu��f���nz��!��ʇQV.b1C�'7z��%����*��&�u�Em�y�ڙ0�ꀈ�X�1J�"�Y^���K���<�e0hf\�n]x�lm"����f�ط���%�L�ķ�|�٫�ܱ^,#�C%P'Ys�3ZR�-n��/#�<���I�'��a�H��D��	���|���~}s�����VJ���=�j�@�@HƢ����h(��x��L��kV C�̐��H��$d^Xl�"����3�o���6W�FGg�,j���� �XwF���V=��,�T�xB�m���2-@X���AXs�k���S�퀱6�UB�K�b
a��:�'�6M��4j�o��X+9jbd�(��2��<����ҷҨ���p�.~��[+7Q�œ�O��@�Lg�h
�kk�y6ǘ�Ri��Φ�Y���I!�6>�d����C�x����j��7��jX}���%�����Q��`f\��Ǉ�^�/p��B:W*�}��I���^���]��I�rTP$^��p��BM|nQ�2�UѼ�O<���{�4L���Z�PG�&�j+ɢ�ؐ���Z�:Rn(\ؠ����+����Nz�7�V0`:��d����	��Mh�3NY��$.��J"C><+��9�L�/pͅ��h������O>��MZY�][����nHV�bҊ|��n��_�|I��+���@�U�( ��P��Y*�ϓr�VLFs��m�0��/��'�]nG$a��:(��0�Gɬf?I�a] (��&\��.N��b��Б��'Y>QsyO���F�m�C+���U��u��v��xh����j H�2�o�y���<J1�o��t�Y0��DJ�4���)(�y6���D��z'0d�!��a�%����M���0������Id2y;�
^�]��uo:�"tpݕ��k7����K3?�n�X5�i��ڑua�ޑ=��P���&E4�;�o�.iw����Q�D�0��L1O<�ܨ	\��`�g��C^���d#T~"�>CU����MO\��!5L@��J��b9�` �>�"Ԝ���@�:E��#}rF:��[2����a��fQU�G�)�dL����6��)��5X^;�)(5R���8��H^S�4��gü�u
�ќv *q�D�&`�t��L΋����c�5�B��o�Ͱ��)�K�p^,x��!�tX��:��d��:�4p~�{�JX��T�n$9���e�I�[�[}n[�甮�	a�����
qa�&"+fI7أ��2^/;���P_>t�0�����	���y��%��I�L_�a3��uF��v�|0z�ys�a]��^H�hk�UC��$`۲#�E��0�E]
d>m��w�>ɘ�C�[��	 l�&ovڌ�,Q�J,"b�L�a�.�}T�Φ��+q�z����n���:��k���ý{w��y�j��u�����w>�w��ܰv7,_��?���|���mH��ͯ�՛Ӿ�h���W'՛�5y@e~�%����Z��VKp�<�H�h% c�v�����OW�J����9mU�>������M��p]rH|�C0P-I�����i�oҞ�q��q��q��q��߭�k?*���ˣ�����r&��wz�����P�J`� 
  .T�cD� nT��Z�ޅ� WpbN!󧖀tʈ0��X���׬ɵ5(�$�<�r'����=�o��ŪtHL���_2qn�|�P�N��t��}���b���g/����}�k�iH���f࿀�x��5�_���vk7�JY'�Zl���0͡�F�YU�{[���d��Rh��akc�w�����:�'����6�F���hS;�z]޵କ��	gt���ƹ���8���[����}����8�/v���7{�èZ{��q���Žnyx�8�3�Ik�A<��W4�������"��ҕؾ\�/�S�k�1.�;�tK����>�����/�O���O���^�W�⟃�����/�����~�ӿ����&����#A?E?����������/�\ؖ�'d��!}���������	^�2x񋀛��Prg�e<������_�|tL�
��9Sg��/|z/"���g���c�KQ�_���7���YOZ�{��ޏGEs�m�ז�k��E�E�^��v�_�ޒGEd�.y�����U}�U���Js#�'���<�ڽ^�/t��z�¯��(�l /�f��ѳ�v�������m�~��|٣�YȻ���'W�%3ϗ�����*JS8��S�vG�[,E���u�uJ�v��n����T�'~qx`՝G�6n�1Z�YD�a=+AzF�c���I+R�#��y&�����3��P�1×���-�u�8ިq糧\�#��5]�� ��N�tuc�32:׸R�yٕ���0i:�{m�y3̐�ِm/����H�捛Aڬs A<�C��!k&�w�(�c����>F �e���6H��i�K�z7:���Wj���P��4���'�̕�c�S�:�]M�y]]���,�����8�Z��rw�����+7n+�C��a�Et���5����e ה�r萛��}#zzp�W�Er��f�@\򽻴��jJ���u���S�����������2��%]�_�Q�o��6�G՟4�ʈ�~��N��BO�S�u�d|AG�\��O��UL����Z�N�~s�w�^�Y��<�.�Z�5����L[��pp޲�r��:��7`��4H�A@c�~�y4BĐ��͏�5��8,:�n�MeyPЯL��8d�ү�q7X���M�Q�{�ᐿ�<�O��������%��`^W��މE��}�-���8����O���ĕ���漹�F�솧���=��	J�|���w� B��V]U���?�Κ���4�IJ#}�6�a^��*��Cw�ʹ!���p���C��@�����␇ ���
����v]Wk:��^9u��%6��'�L�#���E��{�H�x_9\�Svp����k�停��Ayw�i�U�!�­�������(]-�gq����p�����������w҂������ݍ��ֲ��h��7�kW�e(+i�=.GѴ�#���h����:|�+����a7�`x�� ʃ2�$��@�٤��ReD��8��s1`���SޟF��"�dU#���u���(���D�/ՌP���G��#�*�d�p�5rx�9�M�F�"���#S�ZY�EV3�N��π� �j6,Fq��|!3�]�t�oYL���Z���7
i��Gubq|� �yĢ� {7���=?o^�ܜ��kcW H�,�됕s���ؚ�D(8���4	ߏIce���r�3�5�I'q�ƨ��bAm�+H	m/�z
@��l��9㾺r|
�jH�����IG���nΓ��Qk�XV8g͂�d�^��-���z�C ����I��y��#�#���>�՝���fo���qm��6ڼ�������<����+D�A��oBAp�R:�w8�4�2���	��9[����}��R�����19��(DM!D�S ܅j�qz���kl�=�[g���d��6��/�Op<��-��B�-�;*���MF&l��5��l�=�oޙ�d��c =��JcZ7L����I����t��ӛ�3�L$To|Cw����8�K��la�^���y�e�]Pi��_�`j9���<���E��ޏgD���8�ٶx\hÔM�ޡ׍���y1������)��:l@g��l�\ ���m��[�F�`u2ف�o,G���X�&�Df3=9: �@�L$ڊxwc��n.T��b������V�l,d����+t�E��H�@��w��rs���'�/��l/�=��p�oDzA�^"8�dX:�@��y7�����!b
y?�#��A���e���������[Ny���N��DL7w3�º�z��ڇ:*��6M��OL/F����m�"0(�����m2��N�>G�8h�'	o	�H�2���-C`�������mt38������;-K��rS:b�7�qŇ���zf���>-GO����xJ���E�O�FS:�����Zg\F#�\����������!z���\�ۗ���]u�RվT�/U��o��Y�wѝwH���otwַ�i��uo����5�������K��6�q���x�}�7����      �   7  x�u�MN�@���)�$J�i�p�n��(#2�0NZ�Hp�^O���Yy������#
I��͊X�h>F�;[c@�EP��R� ���G�Z��]�a�]��,Q��'42�$ -8����~A5!�o( Z� ��L�Hm�	���nq�ɫ�L�SN���sb
c��d�J�/�~]�j�ˤ��G^��Q�7YMRj~�O'p�uZ<EF
��1�`{�A�l�8sxi1�χ��(@V�(��z���0x�yp�����	�h=�̋�h�/'��z_.�m���l�M^�T�MV�(��<M�o���      �      x�3�4�4�bN#�=... 
      �   ;   x�3�L�-(��4�L��-��K�+)���L*J,��Ie�s�rr�Ќӈ+F��� 0 �      a      x�3�4�4�bN#�=... 
      �   3   x�ɱ  ��?w�0���TȲ����l�l�)�
�I���;���      �   F  x�u��R�@������Pj�>��3���eG��fi�����3�;:{�I��O���=�}sp�B=x~%�{�S��� Ǳ��O�C��z8����OB��Q��ޒ�g��A=�w@Gr0�6�k��g�p��������VM��E.ʳ<O�<1���f�)R�+������墪�,-L5����KM�����%X1, �
�
|L���m�� �EP�� 4A�x�^95<���;U��EY��ݕ�BaP	.�Gn._0Ύ:��k�Z�"�d=��֣��A���s�D�ڱhWFcHn��-k�MM^��i_g7�2`Z;���K��7���      �      x�3�4�4�bN#�=... 
      �   ;   x�3�L�-(��4�L��-��K�+)���L*J,��Ie�ssr�Єӈ+F��� /��      �   2  x�uPKN�0]'���Q�Z�� �X��&�b{��i�#�5z1�)D�����{�x@!)#�9����D���Z��!�
t:� 4A��ághُ�zE��@�5�#��%�଺���cVT�H���B��3�'���QB�;}�E�;�cZ�?��vYۥ�c��fkle���*���u]m���k̦����*���=��}nH+�x���(��ʞ\��w�#�|h����i5Zɑ'M` �hO<+CΏ��ᘥg�ļ(��Θsr
��7M�ܚc7�ڬWWc+��49�kU��7K��      �      x�3�4�4�bN#�=... 
      �   ;   x�3�L�-(��4�L��-��K�+)���L*J,��Ie�s�sr�Ђӈ+F��� 0��      u   Q   x����0B�0LU���]��u|�{ �!!:
��w3q�\��XPg�P"x�j�#�f#�H�����_.k������g      c   5  x�u��n�0���)x��IH�q���4��RiU���2�N�ZX�@������kw;�qH���/I�JR��D�(j����J ?�2��6ʻ�F�T��-�e����*�g�j��ᰨA�P�,��Ć��K7L���GS�թ�/��,�nf�m�u�^>��K��Y�&0龇�dl�T�#
#�����h)DY 2��I����ȕ�-�R�7#>ڱ-��!ܘul�)�C��x,+p����ɠ����┾k�ě$�����ehW3�f�eK#�?���q?�-dK�gH,[���!�L\H�P�/b�u      e   /   x���  ��w2Gi�a�9�%O��rs�v��%�\�"�o��u      y   D   x��� !C��w1#BK/�_ǘ�?)A�tRIR�E�'ӹX��v�%����f���;y��I��?      �   �   x�m�;�0Dk�� �8!|;���G������C��Űk5;���V�3ګ#�����="<؎��O0������#�<��������s���a�#Y�����O�z���e Ƣ�Qg��@޺(�'j�2�UoHT�����RϠ��v�nW�,�N��������(�/�!Ld      �   5   x�3�L�-(��4�L��-��K�+)���L*J,��Ie�srr��qqq �B�      �   H  x�uT���0��S�`��w�*U�(e�Y�!G�9.ϐ�H�:]�}�̘��%�i�v��~?3(q�=���8�N��� p���>���l�8f�`7n\'��f���E�uK?|*S*�t���g]Vu��MN����_UwE#����J�QQ)Yd�q�w�(���yR�{�l��Λ�zހ�	a2����H���V{�q!e��\���		1`�;#�A0��Ν�U�+*�6��L]ue-kݞ�,2��KZ<�O��T��㌣Y��`���?��=�w�����@f��[���Y�p�m'�#z\6�c�f"V���X��-����;�U�i%uS�kVt�R5�[Yf�8x�#T�h���쿸� �D`#�&;����=юI����{��X�Ɍ�3�Q��H�9����4�pW���]�@��=?;�=�i?`6�C�c��B�3Z��l���)����ϖ=_���^Z��G����=�z�xސ�2��q<�9�Z������Z'o��q�����9<�Ks,��u��{��f�ve���<��e�����-Ͳ��B�E\�:.�ٙg�|�I��9%j�      �      x������ � �      �   �   x����
�0����H7�$��Eb��&b����Hna��`f�n9��}���r}j��y�����k?��8H�q��`"v�E4�:�C�LH��X<�Dh���$h����MHY��5�n������͙���YLȄm���n&a�dg�؛�^��r�.�      �      x�3�4�46�2RF\1z\\\ Rs      �      x�3�,I-.I��\1z\\\ ;V@      �   X  x��R�N1�w���#$^5:Q�QQ�x�]N�8� �Q ��m~'w' �z���s�]q��K|� C"��Nٌ���	4GP�����l�DuR��ٙ�X�q��� ̬�+��4��D�y�&P�1&�k̿ywm�ByT#�UvFr�,o�p�?�3ZC�)������'�nM��*T���n؞�T��@4K-ۄz/��IP�>��{S�# ����\��9#�qO����h���-�x��"T�ܖ�[O�e�^Ѯ�<�6��%:0C.�lњ3;����Ɲqu�f�&k���Xu>�(�
�0�pɒ4��N��}����8�GǸ9���y�h�      �   v   x����	�0D��*6�+ ��
tY�5�Z����ՍY�!�xÃy8��稻�Ԧ%
�zʮ�/�5$+2�J��\�-)sm�$`��n��;{ʫ
_b�#(`7��?��DD� Do      �   �   x�U�1�@��+�!�詠Kcr���΅'Q��|GTH[Y3��6��v�^ʍ�A�bT.�,I�d`��Q݂u)s�)�#��/,���(��[Y0�R�|F^ ��l~O�c %'��
Ǥ�d��gJ�l�W�Q�����&�>��Y.��w�*����
O�      I   �   x��Ͽ
�@�9�Y�h�3��S_�� �kZ�\������S��l�n�B���eehE�(vëO(^�P+s�«���LT�����%�;o h�s=|��٘����@ƚ���x�[(9b
�(&���֊ёX����!��؆W7J��\�:��b~��m%$v��H�i�m�Kc�G_�      �   �	  x��YMo�=����\$`?�$e�
%�v$Ā)�\�3��-�t��{�+��Cb����d����������.I��8N �ܝ��WU�^5�n֏�P.�~Ө�W"W���5A�r+�JU)�8�l�M��9�A�(�w�҅RNU�]��j����,��|�t����~tk2�Mėff]%��۟��SǪL_n�C�������tt����n�̛�*?>�d���&�:??�Ac��4��a����s]{��D��zxXY��ݿ����M�?����Z���Ԟ���;+`�Q���Qf�T�e�#qTM%�����\�BV����
���A����?S�E����V�dݞ�H��о��># ��},-��A�
h���&�6�>��eʵ�@�lOV��8�����%H��SpJ�\�G�] ͥ,���o!H!̵�#�/�/[G��md��v6����
����>gƖ�@�����b<�`�%��?�b����ngH�ü������S*���L�3�A6~����2�t�����c�}k'��� ]����Na�׻	�p�X[+� 4��)��}T;k�iD�bEe��$0��XF�v��@p^	���)`��9���{-������� ���ӓ�;⪥�'6WZ�~a���'O�t%z0�/�j��cZ�W��[�8&��[����i�Zx�q޾n<ǈ]�&����.)֥r���ZR닯Kd�2YW}�T7��Z�eXK�	'�}L�J`�����a���C�ȅ����d��݁��7T��Ί��E"�� �/�
�T��vLE��X���ͽ*�z�iχ��#�&Q����%�M��UՑZ�{@���쪓wrU#�Vx��EV� n>ҁ��3�n��`6H6W�AF�w��IN���f�\�+�*��K�jf3K����h��Ec�xG�<Y�+ ����)g%��%�*;�����'��.����j�l����H=-�����&k��q�}p����I3�S�9�ۆ������`��	gK�yaϸ�]���b�H*�Dx�5��8�����������;J�.d+�#���W}��mBJ���/՛���2��z���e�TJm�YS"�`��6�Bf��l�:p<�xB��KI�F%��T�NuyA�pyB<�~/��V��Fd~��"�.�R��?�6�V@; bKlY�~�{�Ԥo ��k20�[�Q�,#	�E�y�#s�����NV�3�gbB�A�`<IE|Qb&�O��$�J/-/��0�ŵ��]	����?�x[��2)��Ք�S�NxM�����Ͼxޕ����ϑ�
6�d��L�{؆�r�&�Z]�Q�3��nx�a�)(:���1�!%,�+�x�N�L̑�	�\��(#!�!���ڂ�`�Y��BZ`31�E�$��h�!�ڛ�X?��a�:Q4m��Ȥ+�wQ.�WX��շF�)�Øa��u��ԛm���:8U�z@҆<���$TL�K���Z��̰��ʁ�r��C��Y�E;�i*����"+7&oϝ�t���:�5�"q ��6���CJ$E���f#i�n���̰koY��xP�?�T�$�8+��F��؊b����盆���Jt`R�.݀��"��d��g<��Z� 8����DV��ʛ�r9�Mȥ݈��<{��;i�A�j�|F7�E��rpA;J�YW�M��B!3łL�Y��#d�˱PP� ���Fʨ_nQ(����I>�dq�4�8��n���܅ižr��ѳH��P�j���_|־7���@w[!�u�T<c�A�c"R��s�������βr _FwL���`=���R=ܭM�?$��?��tpH��{�{�]�G?�Y�Q~��dr�3T�T��o��'�2��A�R�g�	����/i��d�;+b�N"�ހJ
5ds�H'V-�C
X᪃-���!>���=�C��r��
i,]��Z	KD0ʹ�>��+9B�j��1I}�:K�ٔ�c(H�j�;'zJ�!�~���ml�r���o,���tx�&��ԡ�e)wı� 8�O������3ũ��q�
��i/+!��`�.K�spJFΨ�ц����G�Q�,�U�L��<C�k�2�x�UJ[��-�����j��F���T�9k$��B�f/,c��X��|J�mNp�LT��CC0�n��OFȦ��vr=��޵���'�{9$a�Z�a
:lw^z���B�A���+0�~��P���8Gv�݁�����xL"�_��P���!.�oT3M1��u$+�ؐD*����U��N��Ց�:P�W<����
�<�>�"�r:>A���i���	*e��#?���Dxeʬ�!^��ђ���v���O��j�0b�?A��]�OT�x�eF��pp�_v!�����}���hgg�����      {   2   x�3�t-.)M�/VHIUHN,�W((M��LN	�&�敤��=... ���      }      x�3�4��2�&\�@Ҕ+F��� "B�      �   /   x�3�L*��4�L��-��K�+)�O*-)�ϋ�s�pr��qqq 4B         r   x�3�K�U(�/�K,RHT(OMR�M�,VHLN-.>��,5G!U!3/9��8�,Q!9?�*=5�$U�ˈ�-���D��Ģ�T��Ĭ� ��4�tJ>P�X� (��X��eH-�b���� O�J�      �   =   x�3�L*��4�L��-��K�+)�O*-)�ϋ�s�ss�Wb�i�e�_�1�!W� �6#~      U   
  x���=N�0�k��@B��W�	� �"�����HN&k;F�3���bLŊM�v#��y߳�������aD�n)&s)����Gf���_�u�O\�QJ\q`��x�
����18i3_^��V���Y�;�TK|_^O��ļt���?c>X\��x����d���<�>=�J����x�����-
7�fك���Ş�+i�t7=og�FF^ya��9�{��4��Bw$�4*Iw����N��=�b��dr��O���vXȃ      W   3   x�3�t��MMNUHTH,(J�KI-RH��U�/V��/.R饙��\1z\\\ [��      Y   M   x�3�L/�LIuN,J�4�L��-��K�+)����M�/HLO�+�O�(*1�2B�bDX�P�1�c�Z��Zb���� �5�      K   �   x��A�0��+̽T�	|��mv��l�&�A<��� �`��2�(��k�ZZ(h	�eVpx�J�&��F��d���L�N�u/��f���C�Ag�y쉯�=��H�A&$�O-�#Uڴ$�m¦^!	��pXCL<���}?:ط���/ι��A\      M   -   x�3�L*��4�L��-��K�+)�O*-)�ϋ�%�b���� ?      �   .   x�3�(��K�,H�,V����.VHITH�L���/IMN����� 4S      �   *   x�3�4�4�2��\�@�Ѐ�Hs�IK.3�W� n_      �   /   x�3�L*��4�L��-��K�+)�O*-)�ϋ�sqr��qqq "@      �   �   x���=�0F��fbC�.AG+1$j��:E�<����G��N���{z��)*xW��2���7X�j��1B�Q괦 kH���H-����������������mK�S���٦�	$Qy�C"�H�.{F<c?��a��q��4�sN���P�����%��KIM����H��J��h�      g   �  x���Ko�0����7�Q�W
��K]�@Q p��XS\aIZ��/%�6�����r���j�u9�R�8�~R��^R�BJ����v �o}�A�[�$��7K['�q�x����Ч��l���b8�Y��C1�	��>ɡ�;�C!�mV�h'?��G�p��?�G0bKN@t��tt�����l�Y���J���[L�b���$�VP����)7�T�.��(��(~�6��όƅDj�f�R���HYd�0Eg�Q9�Ng&���lf�Z_��h��F��O���)��H��-_DzĒ����Q��/��=�84������|���l;u0��:M����o�EHu_YMهN��l�Պt�ޖ�b�����aߊI�kS$��43Nũ^�����p���!֤��K��_�#�      i   f  x����n�0���SXb˿���0���
�7s��d���yx V�b;/��*:M:�Q�n�sO.�V5��n\�6v���n�m���n��m���e�ca�%F�FH,�*�h���\c.G��B��ғ$sv�=�u��������z�.a]u��.���N�����Jr����*?p���g4����1��Bo�H�"���Q��u3��'��%�b�Kݔj�+*���_?�Ơ���`@�>�W@�y��N�I�J,��0�,�Tl�.Uj���l�=t	ǣ�\�>:�f��M��Ӻ�;i\i$��YL�²�3d�N�2W�l����}b�I���@pw-�����YSF�8Q����<Q2gZ��4���s��>@��1���{ס���mq��EmxO0�,��sS��Se�W���yz������V��i�4�(����M��=������5�ӷO�|�3�.�Cӡ���ɒS��FV��%6f8���c66�-J09�F��/�ȱj��wn�Duh<
3���,�̈M��
W"��S���ޠz3���<��� B�O#�Mq�:��L��#�I����(G�*��N!6.r�)&i���������O      k      x������ � �      m   o   x���;�@��>L�� �@!K4�}6'�4��\x��^0���s�g��iߖs>��?�zdtR98��T�I���"UAa���2K��i�l�G/������0��?W���      �      x�3�4�44�2R�\1z\\\ G=      o   �  x�u�Mn�0���)r��?wu���(���n\GI��Qa�9g��p�!�ϟ��Q}�l��<��x=L�
�hp�� ��XL�֎�*�߾uv�eQ�4@E�,����m<|�K 5b��:@Y,��,�����dH�dA� ]f�D+�c���٠��}hN�2yy����R�Nm�<�}�7�
"������PN��=�������ʑ`e���>N������W�|w������!��Q�ה�KCR_�e^�V׽�T0jc��^ǔE
)�a�է�ۅ.jn[ǐ��_��r�ZeT.��˨ò���u�(p44=L���I�����o����i"/ou��*s����(�!�)�v���<���F��v-�b?��ȷ��L�xW����=N�WE :Z�Ł����&���4���?)��I�g��ހ����^ 6�o�5"󴵔��ޝ-�t������-��=(�P���b���)��(4&�ỵ����a�0�s�      q   J   x����@�b(��y?����p� ��p.�fAw0L7˂ۇ�<��2!5��j�H'��j3�$��j�C� ��4      1      x��=�n�H����������q���u��&������h�c�T���ކ����������Y�X��pГD��ú�:�����<ǳ�8�L�y|��&q��Q��$K_��[&��En��F�lF|��1�9��,�Ӳ 0��~i�^*�[Iz��.����|-@&#��E/J'��h�=����^���de4_�_�Ѭ�QsT�y2\�1�Q�b���_��t�@��o�$����2>�ͣ�?�餜�.�N��$�?_�DP���Uƿ�Հ�_�� �`H�2U��9"�qTFC<
��C��������>~��M��,#�|� (���$B?�x��/���,{��7hp4=?��К�_{��r���^.fY4>���Q���ߋl�/�Z/~��������4@�V"��(E���m2Y�~Y��9(..КD���bYĹ�f�C�L�%Z8������E}k��"���T}���u����1^�(I�M�٘�T^�d��������:��w���1B�wy}�7�<.�1Z8�F��^<NJ<E��YR��fѐ,���_����OO������X1��,���*��lF�$��H��00e,G���ȍ�( �
p<�^r������S�g���B�=i�!���"*��,C~�m!�T����ǈj�wn��8�0���wp���$�b\*>����Q|>!).э~��x[��^S��(�`M/iXC��!�e6��1c$ʔ����,���Y|ǚB̬��E1��6F����-�MR�O
bR�?���eI��3��5a&/#q��Jq�	3`�m���2ւ�,�_ZA����CѪ�獿ʗ��c�s���P���"@Ca(6���%ʁ$�'���U�U�j�!�_%'���W�03ĲJ^YE����e�Ŗ�$bK�WAe<FV�"4��D��Ȗ�'o���Y2"��⢌&}��0P#�@�1^��$������5�!@b��N���x�W���^?�P+��A�'y��h��yt[^��O�!"S1�����srw�=���K��o΢6�P�g��.	�+�|���3�
�t����+��u��!�8-�p1�zm9ǯ��?��\F31�af�fƺ@o����S�j���Z$��!�o�E��G�*�3IX���5&:)P��b9#�~��|�?��x�t��m�N';��u���@��-��|20��)|�z�&2�8x=�>�����h�Տ��1l�8)�ܘ���B\���>�}����B�q���܀�
x�t֓�B�)���J��Ys�>xK�	e��N�kRQ�l�D�׻8}	� v��L�ߖb�:��2w�k�)ģG�8�'E��z0�ѭ�v�Ԃ�x$�p0^+N��Y� "�8)F\!�;3<Xo������E�澤�F{w6�Fw���Ѳ�~��-P��p�h�%��=�����I&�,����w9*~[Fy�DFb0ɲ	�ێ�Y�ai��A�r�VJ;xJ���������̓Q��mY��"a�Cፄ��ģ�N혌_>$eI��ct��wt�_����QMt0���>�#�7��9X����Wm��;�a��v2��ѴfJQ�&3:�:?�/���fI���$�@@t�E�� "�fI�F\�� äI��(��I�U��78���>싟}$�BȲ�*V	_�qJHu� I�iuH�.<Kqc X�w+(r�H���_V��7KG��@�P?^B3D� Q��'J���9#ׇ�B�*�?`��z�1���:9>Yˀ�5[�?�4�9lw�d�sٗ>��-}��+q>���
?�샛6���7JsLu���D�X�4�l,��a�y��b��ڠ^in�#"�Ҁ��ڠ~ߡH�ОVe�_�ƫ��*|��"�[h��� �j��2y0�:�id�X���n:���\�q ��X?��1��t�M�m�k�)������7�a#7�ė�`�Y���19x�!�YS%l?�(b��2�-Οdk;�ޓ�f)��5�dkFB�/�;���/�*S�/o��f�q�	*Z��K6��p^^�u}I���];�����z���/z�w�+�L%F���Н�_�J�9�Q�)��b��&��7�<N7�,q�2�1O�u��"��D�h�c>4����Y^��ѻ�z/�Ba����(��Q-��PD�p�x�L㱩��l?0��4]���L��7+���b)������;(PR���؏7�PK�}�o8:m_ �����9�V压����$��঄�
�GeMA<Rl/n*�%�G���-A�(�׹pg����Q�����&nti28�ħ!�֬�nc�i ���X/XV<_�&!�ok{��C6v�ЭІFx���#�`�9�]��bk�K.r�J��pjR	�ɇd\N!�IB �!��7���\��iKh��,�G%(p˚����~��4*�e�?2�������N�{�<O`���$id��h�j�g�y��y��Ш�y��(
�3��>�>��}���$xO�#���G�H�ȁ7�s��*�e�����x�"��=��'��ZvgQ�b$��M~T2y�\�ֶ�1���F�ɳ <p�
����o%O�9��F�%:'�����L ,��|e��OXS+�VE�F�ڷm�+����~AeϥC�˟p�Fd�.��ͭ6��n�a�M9�.<}�I^9>�P-L۫�ӯ�NaX`�� shW�1��@@�Au'�wJ������*<w����-!L��H=�^��:���eۜ��`]�/(��Y�֯y�M���Lf�%���z�ڸ��x�C��%3Q�6et2i1~��N۲N����e���g� �\"j���^@$��d?o��7�HDb��R��A�tvbx��9��dyZL��K�H�E�y����Oş:{𮐃�٨��"*�MOp\]R\�D��.����\X�T
�����6Ǹur�șzĒ�5Y'6Ic3NV�&[%?VGw�����Z���a0(`?g��2�"m�J�:�Ǌ�F2����w<��f��yѵ�b֌�֍M�:d���UAO6=��.$�f�����xʆ�.�ק���8p'���/�rҺ�,c��A��K
�i?�6J��.q#����RؚW��+�-���u��6���WF��k!6��L�����( G�'2f>K�J�Q9*����T�M¿��2iw
9GE�������쾗Z�9g���;g���4{�G����Ni⇡��s+[�``�{�ƭ�B-6 Ӈ��=�cn�~��n�og�G���M{e?^�E֒V�,������zW�F�Ιx�L����Hl,ʛy�)�� �@�|�Ku-51��&���-<x�`rH�3�26(�!rH����Ƀ��������W��P�62�"*���^B�1O�s�LF��+w�kr��"�q���qR����\��%"�X^�]E.��1�4�r�gsU���QTl9��1>��X���(��������I�{Yc�`����z� �~zY����]W�r��J:�e�G.�� �8<����"��������`�CO�Y����������B�FQz�&��fX.Gg� g�=(�2C�8*��?����O����֜���7?���G�D�f�wE?�	o��z�+�	�.֊(�dR�M���h�-���@L[9��d�n�� g�y�닃Wb��x�8:�d��̸�	�X#$������F�
18�C_����Đ��Տ߼�^$�	�"�|4���Q<����L��(z��I�x``�9G��3��A���ct2]
���(Q�K�+8�񈨞ԯR����!N�쮰�����}J��&��eĕ���D��Z5�	g�x*��&*��r�n�Yq�{�"��o]�t��@S�LҾ��J�t�֔�_s��S��Q��v�\��p��v��2�-B6�-k����W\���j!�Y2̣���E3�蜍ݿ���>H��yo��c���)���i]��	$�8w!o5��ֶݗ#)0 ܍��l�ޚ�v��qz��Y:'dh��I�ss�^{��?�,BO��U��{���Y�l�6W���    h��
�?hը�؜�H��
Ϊ�:�e���!#�#���Z��� u$ �:�5����Q4+�FI>��G��0���=��cɚjX(��w�C����S	���̀�X� #���tSdđE+XR���4T�������D�S��%����*;d\��h�������~e�_�W����t����1�F�	���T���%����Vj3d��Ue�� �{��Twg�ˋ��<ιB�³�f��**+��{<C5����<�����f�c���(�����@�u�y��ٶ�%�9�� ��~`M!��}�t%����B�ـ�����
~�SA�閆x?��1�<�q.��-b�=S��'�|��;�t�M�<�Pj�͝Jc�����cb�0�ʻҼO�+��̃�7]�Xx�s��g�&���[4l�^m "��KL,�X��i�6����<��{��y�9��4��5F6�L'�f��I��ꤨ��=�W��b��?�8l:= ���=k�$���qgbwI[��E�=�v1Ľ�|h�n�a�̏�0�Qs�Y��`���lRI1n��T_4B����� �Guk�g�.�3�gb_�I�'Q_�����w-ڱk�gx���5�����Z;��4O ��*Ť��B[��b�����6�,�Ʀ]�[�������x��q��I2��uA�XM��I%���C#�q��6����F�֍��2��~�r��1	af$T9
Y��V�?�ю��Y������Uvi	!�c�Q۽����\����T¢u򤫟�w�]تCq7��+kHW���F�����ͲȽI�h�@(q��bH�K�<���5�]#��8��n!�#f�It�;��X����9��m����ԋ�gMa��rػ�cdԃ��@�wloӤ�]���D��US�h�����OJs���*|/�q��T�>]�}����A<��	����7T��1�b��4w)�� ���[�q�#�l��/����1�j�+U�a�ׇl@�44qX\�N�� #w��-��pn2�|f�y�(/��U�:���w��h�Y�H�� �֍Vc��y/�,=7���&�b�M�k�`�B��~���F�b�մqR���is��vy:��,N���?H�<�u���x�F��L����!��y�ҙ�'��?o�4S�A��T�P�d@�t�J�Z��	V��'����3*#�Ϛ�S�舔���)|����[��.�?v��|U����T�F7�b^qx�$Ԗ��_9�I����0�`��ס13cLzF�&�����nJ+�(�E}j&C1X?����X+x�;;:�7t�d��|a#�������q��ˋ�@�>?]�l��e�o�32:=,�8*�ê�2C��<�J�� ��� "A.g�"���%K�{it�������bzu��3L�zkj��`�~��q���H�T��G�S�HD`���);�a{�H�ůX�+�O�g�\nݴS��AƱ�A��>�,9��G�P��`;=��u���é�oV������j��v��_�=��zMU�%����n�`%��50T%�u�Q-$&P=�������=���E1�·i+ĉ��+�Q�[ND�׫�]��s�F�U]��7~WSc�Ka5�]�B3VgK]rh�FP�D��aR3�c��e�\��ۂ`)�7��\�$���Myw�cz}�4�j<�t�I�&ױ�:���팛�(�p]&���	�M=�l*����=T@)tчib�G�: {���ZU�K�SY[�=���B^�Os8Gl�J�vjC���Tzh�Ɏo�߾��γa�xι�k�,��ۮ�?����h�d��n��˷��V��eـdb�D�K'��7��S��Z��Zp��%�ZXs��@T(��� �����&.�n���p���=ނ	^i�;w~W��f�dzW�VEvWZ��J�Zf�M�7��@�lf��^��˩��C��kE�j����2*#h�J0I�fX�W�@�� F8�[�6fԚ�3g�'���ư�C�ͭh��iuI[��Ʒ_ɡ�b:��e9���#���9�����[-K�8n�I$���S�渒���dY��C3��a$�3�M5.���l�������L��FٿʥB�X\)tPf����2k67�^�aݫ�m8W`����A�gu�<��\F��G��2�ſ`>�q�q@=#?f���^4b%W�b�Ch�������]�\g�#�{C*�Z�ZAl�,�[b��2�}��tϑ�<�Q{�;!��.��lt]b�-v����i�2�~��z���=6�������/��̢g�S�U��Ssf��S�Ѳ*�I�g@����ɴ�&S���p<��l�z�W�\.��(綠4Ҳ��F��g.���oP�mt�V]�y�����wQCM�Q�����2ڋ����Y�>��|Q>�vR�f� �O�'7yF�W���%��	P�ҰJ�����.��ӡ�������髮��L�ߖb��u����b  ޛh�ٴ��H۰�J�ͨ��ܾ*Yao��Y*ȍ	pLԴbCA^c�,�뱠�����xs�?�Ƚ+�h$(\O	~?�@�3\�!?�"*k���k�ܿ~���L�/X�:�'��\�:�;��8+��N�ms�agU�tt��@黚bm(d �?�*����;��S$7@�=Er��h�Q�8s:�%��6��ٟ4���%
��M�f:�{k�p�Z�����ᵍ�Q#>;��
��
��������5}w�̺��
'����2�G�W����{�cԥqۋ4n�x��lN�N���rl���s�K����Q���� �i�b7���	TQ��H�S���<�q�}������;߅��]x�- ���5�=�O�t]؝���v�zvL�0�zN>�i4�!�e�6�k��ޮ^?A����ɦ�$����&[8�=n	t�)�P�P�wY�����-����R3�{�*�Q �ۖe��Pu]K2*?fϛ7��꒔5O����m�VѾ!�f�\Ue�A<X�|���щv����{=�%��
��<P�>�g� �
uk�pb�Ϩ�U�F��K�Z������+^J;;Ñ/�b��(�Θ�N��d��:L�3u��f��v
�od7��_5(�(���TT*����6����R���zם�F�hb@a,�)��^ٷx����{x ���]![|�@�/}{��Mnr���������3�.υ��'}���`�=�+=�Lހl���3x���Q��3��k
?]�����B33�E@NVoڏ7�)�Pf�a6P]n��ꂢ��Q�];�,6�����(V�k��)W%_ 2@iд�O,��,�6�S�dP�¸aʽV�,wg͌��E�NUoJ?*Y�ix�0ܗƕ��{1:1��<?�o	��(Mv��Y�7��IT1�}<Y�+��5��KldM6���Ͽ�
���Բ`w\c�\��M���B���Hɼӗ�ϫ7tެ������N�{t�|Q�qcś�������9��|u����ޏS�{� f�,�l�a�!��a �'�����1�kGM��^0�~qB�2��i��sgv:�N���;|���q��qBC4A}��#Hv����;v��zG� ��]�_����?�U�*?X��4�l,�kW�i�����/t���\��щ�}��"�v���aP�4ڪw���Y�DP��O�ܬNAްNA�f�B�}5�+ p��k+<���R�7��B)<��U
\ +Q�G�2�ί�8M�QA�:L��:�<��o!8���-��Z43��srp~�9}�j��0*X�	k�Mcd~���H�(R�
C��h���d>���� *kB�w[�;U�m�ݸ[�gkT���h��b�Z#ߴl��؉���}���=�$��,W��=9�^�Z34�n��4^Z�x���8C�;�o���L&/J��(@&o�.���0'-���A���X�[PuR��%�}��{Zj�C���(��ucK��)��Xٷ���P�	���NִygN}@ˉC,��Q�[y ߻ɶYe$	��l6��D�^E������1��"� �  �*����!P�b�
8\�h�7��)P��ov��x�����(�&ē�~�P7a9Y���m������l��*�5u�9b�(,|�v��=!ƈ��)��o�3��Ӧ��<!��(�\�?��8�y���O�Mv�ھ Pz�~_RR\�Ss����`z��5�p#��MUbM�vb��R��f��3[��G�4�����~�������,��6F;�C�N��$���
]��H�$�k�eǠ���j�=�d[ �K%�m��^j�s�JK+�����V�&�B�p���c�F�^�&jA��0�K�٩w�Ǘ�Fͳ������*�lO������{^9�=k����8XՀWX����'
kw�B��~Q�M�S#앉G�*ŏ-M�U�~S�q�o62��<&z��'����Pa#k�BcM66h��(�T����� -�rko�[go]7P�'֍D;4KC�����L��0�Va7�k�*ŭ́�
l�u�0p�:J�?��u�+�����k8��¤��<�3e��HnGr=\e[�������ܓWu���n6~W�v�_�E�Y����+�:��[����wf��m���ш�T��V��8]�cj���_x�"z�%K�:a�,���<�Q���u��R�� H�Xs]=1񗦌�٭���nO�(���$����s����e�����Q��a\Nw��}��d'䷏�7�.��6X����z{�[U\��v�r�/y�aX��!��K͍#��#]h�0�!�{[tO��N���'�i����,�G��]���"sl[?*���[���'�,54J:��2�~}��V{���I���y'�O�pj^�Q)����]S��]�\���^=�c��s_�T�ܩ��5�߰dt��2+��mz�p�[�i�ڬbs����8��VF ��!�#\��u<ZF+bRc��@AƼ��3I3�&����W_�?���      �      x��]K�$Uv^'�"\##eF壞9ݍ��̴�k��� ����n�ģ����kom�x$#�X���m�~��s�}eU6��a _���2�q�y|��NFD.F������j�|:���Ԫ2�*u���P�|y��&�]�3]鍮�&��＝�z������՛�l�a��MմYg�Lmt?Ί��t��~h3U���
S�q��ٳ���4t��[S�ez�tm6Y����\�Uy��҅�U�]5��oUO�Uf�ۆ7���j�g�No�f��L�Z&�0�Z
�Lh%���e��&X���6��?U���F�kSO*}�/���������8�z�|�zs��<�Y-��Ъ���]��0���j��Q�3S�D��M�հ������<�d��f�NSi9�F�k%��}�};�lOk���C�'q�Z3t�l[�B�؟Λ�Ķս���d�o]�qԾ7]�1��őp�)�m�A�:��%����TXҴ+��^>Z��t�r�S!D����������������4�1F��>��
~�K���V7��yY�..3f7g֚J�4j�_���8�8yU<�ݚRUZ�CTM�iJj���.L9ԈuOn&w�z����˰@eM[��`��Z2�u~��������72��۔���d�eS��S[�k�=���ldt��BW6 5~{�!�;�6�t �4�^W���ه�?)���yL��U���<,���_�coT��L�7�=,��/.�rȝ(�u���]�R�[��m/��*����q������^iN�8���>�d`Q�N��GE�/����ufJ�^�Q�� j��]F�%#%3�+�V]��
V�+Z\8��L)�ȼU������8�� S*�u���ph�Î� k���@5x�W�8��ި�a�̬���k�g��.�4@\���"H��:�˱��y_�㺶qɳ?�w�I3^��)GXu���R�bu���lvN&Pm�ܥ|���L�/��p
#2�@������Vv�łn��ȡ�L�҈�l�bh;:^�C��1�F}�cCp���ƍ�6T�9!Ɣ�
O��C��ڼ��� ��ǡl:�\4�b�/-��1�Ql�e떺� h*.�]a�'�)������� K?nJ�9���Ks�g���8����#'���yl�Q�� zB'i	�6�Z0�r�}}@A��Ö�q�bb:�.�A���J�o|��(�a�'����:d�����W���������+��u5���e�FW��m �~K���!����h6����/�H��!�;�'r.�eE��$[}sA�D��K�!}�=ކ�$��S�6S�P� �%��$�����{�Z!�ڦ���qvo���;!wn�=���H�mUS���![�h
>#�[S���g�-�SQׯ�`
=�E��Z�s��Ibe�Δn�0��?D���^�N��ml�c��gy�X�[1!G� ܽ�(��;�vH���,�p���;5mƯ_"s[dNf���KX��S�&N&^٘��F��{`a�b(��i��'酈��K�� m�0i�����5�Ȕ�Sq6T3�B�mN�K�F"����W,�OhՒ�bsw���-�vX��yǑ}_�q��]dqj��$�����}Q�w�m-U_;G�eL�E3�7�ޢ�EZF�K��kG��lM�6�zX�rvߕ���:NH���Τް�8�;��7�ؓ�ʖ'�.U�h6��rl����j4;�F�;���7�8�O���t>��g��r~�<:�gG��������g��{k~��ΖG���(?��W��8AG�q�B��͗��l���Յ�� i�)Eh#�"<�*Օ^+���F�+��ʺ��������H�OQ)F.%6�H��q��l�$�k�ѥ7kR�	�U�Ui��Fi��Fi��Fi��Fi��Fi��Fi��Fi�p�����<L������d��av�<�/�O����{FG��M�	��	d��WQ�>�N���zT��=���`B�-T3z `Y��~S���o�3?���AET�AET�AET�AET�AET�AET�AET��'�����"���Fo�N��1��MGO�M���!��CU�5���@��g����ˎq�	.�8��Ab�n� ��k�|�dj&l��O��`�O5��qW���((�ʍ %q�'c8ߟz��#H���:nED�d���lD��u�;�U�`�cF?W`���@���cU��-�q5 �E��V�����T#iC�t�k?R��E}q;T�o"���jӾ��J��>��h`>�O
�S�xqf3\kԜ*E@%�+���!��{��gs��-J)gmD4�
OtΪ I��D��l\���WC�	�pőgd��?|��	��~g2�*]���k,�|����3^���[at��Y�e�� mv�lvw\)�%�� $��V��Z�=��&���0���ﱮ5�.IIΊq�����L��g�#Mi�C]f�K�6H[��g���A�)6�VV�'S�[����1"���j	��=L�X�pLB�ܠ�	yh���	2:�OS�����.],��Gص9D4e<Ӓj�D�e�M6n��G|�qC/lǒ\P�q=_�Ȋ���#�<���8�y�� ��i��F�]ά�� �mz�0��"�$���`?���)��\2x%s���� ��'7#[�^��{���l�����y<B�P�&�Zw��f�,g$7+J[q���9MpK4\w�����c�[麃���(H��\x���Y��.�f�'|p��+�vx��q)�u��0&L%��
4w���n��l�P�t�U���% �]%Ȍp�{{�Kܔ6����G�>q���yԏ{���975k�o��3)p)rO�AE�)߉�@<�(����)�r0~4�/��R�X�k�DP]��ә����f�}�l�vv	r]լ`�������X�b�&!��YB�wg�$�=�z�9�wU0W�h�pɦ�Ŷ�B�>���c��_�U�p��]5�'����[4�?�!'��p��F=E���6�wS�`:��lc���m��a2>*�F�.,�-���J���t#���<��; �ãH�ӽ�x��w�l�8_Ύ������}��8�%�Ξ���+������FZ�U����������!I�$��tN�9I�$��tN�9I�$��tN�9I�L:����hD�x�t������}W�۷g���^�<?�O�����c�	����VvѴ�B>C8u��|�l�
�OJ5��ӳ�xC�'�dt��IF'�dt��IF'�dt��IF'����{�6���TF/ˣS���p�۳��X.񾣣g��_�=zSwEkD6�t��Z�[f���n��趾M��{���G�� ��ې�Fdo�Z��5t�A��W�jD./��#�䆙�kC'6 ?�|�d��_L�!�7kE�r���sӍ���HL¹�k֤�G���I5[?zp9�~��a\#6���-����������g�X!��]e�~�oY�����4��V�.H�%ߊD�T��.<�L�������?���,��M�>���r�7#�a=��j����S=�t?B{�Մ��
`�"W]�^��yPT��նm ĉP��g��f��DݹG%�f��C�K���q��V��$P(��`Au����D��^F�n2�
-�l�����`�Yf@�z����xph_���ۥ��+f#M�ڍ�a�5��w���՝��[[����8�CRP���w
��)�NDGh�ct�/���kӮUݠ�#�@U�-\���n<�O�+`{?�D�������8��h.E��h=ީ�r7t38C�����˖�XR��Y�q��e+`Ri���o�le����YӁ�B����Wp	\I�<~�g�S���n,��T`{�x�r";�QCͶ�%8	���7��ݺsO����l�c��]_���ɟp���Vޅ��Ht��[M��?�F�\���]G-�
]齁#��uw�C���AgJz�'�/��r�%V�2���8py�E�B���eDԔq
)��뫦��Z l  ��R�kZi��� �"���\�������-n�[jp�����xo���@wՋ�\���8�vx+���u����Ԃ8�0U�v�������˛�'�n��LG��C����8˜͏�2���!'����f�rS*^�]�EA���`�2fMuw�cCJ��?�Am� �!m�Cԥi�W��fAb% �~��֘R��P�~I�9#ߝGۂo�L�̣�4/�%��jX������j�4��DnG��!���7Em��qg���v�R��	
`M!���5����Db�kK5	a����Mͻ��>�'�x��r�:��2lڗ�	�^W�`���������Yf��5D�')ދ��AM�^0C���dhF���x�5�i��.�zI%��f�qW@>6n�I�t��8?k9�*� �1����wl$���!�H�%?�x�\������yA�������;K<�����s-��� &KX�x������Ł�o67�Ԇ���ɽ�H;Ӑ�%߉�B�R��9�C�U\ry�� ��ڂ�]{�<�j�@����m�m�����]��J:�X�\�x�I����W���b�_,"��ݒN�|<�>�I�>���� 7+iD	%�.�zh�4�{x�G;x�zs�.�~�-�yQ54ZW�r��aٿ����C��p��Uyx5;9:������C���.�ΏO�g�2�]�؇rJ���^sQז�d��Q�3�-�m)Wk��\\��Pϔ��`��#Km�~��U��yܷ
��{���V_����E���U{�d�&["'��胿=��� ��B�?<��榟�HT�Zh
9N���iwd��J_����r�u���fy�w�n��-F�����pM�D:�ZpC��"}�e�X�x�۸��}80Z����OkC��ܷ͹7vxL
��kZ*G'dlS�|�����v+zC��HXS`���q�H%knI��|������%�J�)@@j��z�j���^>7��QE��z��:�#��z��^Q3W�m=�l4��N�K~&-�q��@Kʽ�r��Y��k5��;�I�p�!Ph+[mSWH-��ף�Q)O�O��y�A�E�a���wA�33�=�^#���ܳ����ܥ���o���օ݄v�1�ƥ�w��������Ҝ&�2�j��gn���^�0i��T:�,̟�'�K����6���95���}qqq>�-f{�Ǟ�E����`R>�oJE��|���E0ለ�<�9|��c
NXF��B�-��EC�¹m��֚�T���8��Gi�mSӥ-�sػ�<D�ܬ���g�H?jv�-�);�N.�Og��yq';�nM��
d����&\h������3s�;�������eT�����B���|6�)���/�eI���	"��ū�ϑ�Χ�Əg���,���	YG۽����}��<��^}2���o�f˟�<|F���[��aW�V��-�g�b�?�p4������o�F����<��;O��W�=񞎆���??y��l�O�SB�#+�w�/k;_7H��!���W��?ĸ?F��1���Ǵo1E���]e�����n�鍌�&�<^;���O_�P���rzJ��އ����|q2��P��Oy����@�|d��>�#DFF��ߙ�֞�����ɭc������;���o "�.] �.�K����p��t\� .] �.�K����p�����~��h��!����������%�����Y~zz~���rv��.��c��Ɉ>��/[��V�-�@��z���JJ�hM_�륤ϓ>O�<��ϓ>O�<��ϓ>O�<���u�|�#R�/���}�l�OO_"Ч���(�ξ��P�Go5�f�����.�K��F�`G)���IcM"=��$ғHO"=��$ғHO"=��$ғH����t�J�}�J'��-�^�ҧ��4��Ͼ��@g�W���z�"�z�M&�줝�vN�9i礝�vN�9i礝�vN�9i礝�jg�����h�<>�O����o/N����'��,��|6���G�;�� �5�cF���ɠ�'_iB�P��@D��5hǆ��5�0�P���#jb]#��MT(,a�z�K��q��.�)���ݛI��I�Mbo�M�ށ7�ߑ��]�x��!Mc[�8�������&=bxӲ�X@Z�P�����7��������;�  �N4+5�*���p��y-y&J�#<9���R��&D$�c���0X!�A˳��!��xG�H�y�����\��g�����,U[R&�+�D��큂�e�A;M��Aq��ҍ�<!������T��G���%��-�#fI��Y������/&��u|���4���6|�l������&D�w�H]o�8��fL��z�0��_��⭣^=��w�������.�ڠ���!6����$��w�X����#�9�-��E�rs7����}�zbg8�%���[!�!�1]�<a,N�Av3���,x'�F�)����e�%3��˜����6dyges��!�2}�OԠ�LK��%����wS���wr�H��:�)JtF.3Ξ�9��K���GXk���b
��x��y��ЮӡV��r\<no�~�6
 :;����o�A���?�a�cH��KƁ�i'=+����,�mB��i�č���NƢlw�*���s�7��x�f�;8���8��N.��?�����N�����Ӭ���4L�N�[H�����!E�Z��v�>p��y�3Mm��3���#�n$ǥj�I���u��o���FÈ[���ȵR'�MԮ��0�s�i�WŌ�Vu��)u�F���J�5��e�M�Ջ��>�(��t��{��?ŵ>�y���얠t���l� �� �5��46���6���;��3b�Q
����B�{(�,����ah�>̱*�����k�hw>9��f����@b����8��[<N;�*�Yء��0�'v��3�љ����)����m����rv����~n+o�ӳ�WW�N���v>��r߽����^��Ŧ������#�h�I\&q��e�I\&q��e�I\&q��e��|q�s}�w�̓�b�/�g/љ���4?�����(�W�nz      �      x������ � �      �   +  x�͑1O�0���W� V쒴Ɉ�XX ��rr���N�s��8�@���y�w>��=]�%�X��@3����|��8�\��.�� ^8Zv#�Ģ�Y��8B
�y��D�Lh)���OI̛�ޑ��A�`Y�`��D���"�,�G���U�Bf����u���0�1Um*݁��u�7Zuݶ�7���|��^G�3I�}mT�iV�B�D�I��1v�����/"'R9��������,�jf�^�ӛ�9;\]�nɝ�o{Ӫ����L�����͘������`\Vӷ��*��[��      �      x�3�4�4�bN#�=... 
      �   <   x�3�L�-(��4�L��-��K�+)���L*J,��Ie�sZrr��Ѐӈ+F��� Ne      O   M   x�Uɱ�0D�ڞ"8�!���@��/Q����;N���4dz���C0��/Y��?
�0&��EK���/Z:v      Q      x������ � �      S   l   x���9
�0@�zr!.'��hF2���.�I!���kX(pO6:����'�,���q&�#�ȍ��a>�DR��,J�|M���1`8���w1��RJ]Em`�      G   v   x�3�t�K��,�P�H���L���!###]#]Cs+C+cc=Sc]c<R\F��E%�饩ũ
NE�U�9�
%�NA��`������"S=3t��R�F �c���� P�'+      �   1  x�u��R� ���)��!���س^����-�ZH��N>�/��E�0�����-J�wk��E<�x&�4b�D��6B�1�F=�.~��,�vD#0.yH~4:�?d>g(&@�_:�w<$��@�{�@�)F����޿��	%�ZJ��6 7mӴr]��jQ������wߺ�����r+�id�;E�����&��D0��Hx�:�< @�8L.�g8`��3���\D<��$ǳ7OIc�p�w��0{~��.ă��?b�T�Ȳ���U�b�Uu�]��Z��i�},�ˢ(� I���      �      x�3�4�4�bN#�=... 
      �   ;   x�3�L�-(��4�L��-��K�+)���L*J,��Ie�sqq�АӐ+F��� /��      �   �   x�e�A
�0��ur�� 	ʹj�N�����`�P�NHZ�:�Qz1�������Er���"/��P��Z	��J�D0�o~�uf��Y"C�w*�ERy6����th�b\���k�׭�����������j�?�.�      �      x������ � �      �   /   x�3�L*��4�L��-��K�+)�O*-)�ϋ�s�rr��qqq =C      9   z   x�3�tM)M,J��t��/�,��L��Ӱr�s3s���s9U�UT
�]-�˜�]�ʼ#���J�R]�\��#,�<���#=L���<M<J�*9c�@�D��:q��qqq ��.      5   D  x��\K��8>�EE��z�mf������{����6�"�6���bb��
I`J*W��q�.�l����	��=m��q�8�Y���$^�������w���|�}��>���֏�_������<p14ýy��1)��J�_$�0H ,�f"p:��J��(D`�}ߗ�O"�$Ȥ��8ߦ��qd�F0x�w�z����8���w�o��q?�Hq,�$�=s�6g�ݙ_jS�&��D8B�� "�a"RH�P�U�/�}1���x��^�C���}R��MWq�f���t��������u�5M��������"-���/�w����C���rY��Ͼ�S�Z^&�C��ɏ�|��6w���6[��DM����o���,��Λ�>_0�@����5�B��B��=s�����!�w��(v"$K�i︼��wz[q��+γo�:��gqx߳|]~�q���7>ejb=_�|'�۽���-S��<��>���}f>{1D����K���9hs�	i�����&o��ϋ��̗�t��$�6<���d�ukx �Ol�H���4�N����J��@�G��*����mb3?`��cr��<7���~��#��v܇g��1� �#�-H�'�!
@�z&`BN' O!!�4�Đ�R u��r�
�a�|d��4L垄5ܜ�d�-M����0����q^e�m�*��#qx�R-1��;d{q�Iu?f�b�.h/Q ����ұX������:�8-� J�ȣ$x���^[�"���AV���*°�"hͱ"���2r���`���������A�R��д�)���*�FCT���x�J��Iv�r*�*��hZ�u��d0�ot����\�E��f����ֻ�Ŀ"�nGɀ"B�(�r�_���|O��Y�`kx1����&�(�Mmu<��e��-�f|�7��堯�����"X�TjB�4F�Ym8L༌������v�����y�xK��D�;�urJ�@"P��t�3���Zq7]��1ҞՒ�C�*�)� 8���T�g����Q�
Q��~Yh�	GA����Xb����ak��
,�^�sR�ă��yp��� �s�{����Q���P/��F�1�U�RlAH��OK�1�dy{��WǪS|Pܚ�5qp�"�~��Z=�aB���cF^�W,�L-�ZW��u�5]��{��-�����9(��zZ�O��vZ��d��M�Ŕ}	��n]P��6���
D����i9|���;�D���@z�m�3���x!�ۮ�B�m[sK�6d͹ʑ� &1��e2?�y��mf�'y��B���5o
�`�_���I��{��;���	�~�i��j���.�A�����`���5�'�-+�l'�RčU�a�ks_]��m-��n���;��U7���K��/|�ѐv��b��$,j��P��2;��_HȰriV��s䗋��q/l�}C$�nL���뫅��?��3��hm�� ?t�m�u-��A6�]�_w3��x0����8�n���G)1jo9�|0"6F�t2ͪ�׼�@z���Q��J��!U����6w��J��I��Ӆ�SS/���~̙��z۷����|�-��f��i�ã: �����_����|�� �#��Vݾ�n�=�ͻ-c��\�2}�Ѿߜ�0d��m[��I#-�i|��E�����m��ή����nW�M�?QU�G�F'e�as�WU^#��6�ʸxF�� P�������#H=�9#H�AM���.��S�<�P�����1�&PZJ��ɏU�
�ۖp�nSZe����}J���O�4�{�Ċx����'���hNN_#i�O0.��%�BPLjQU�G�&(5pϘ]Y���DTZ�6�������!c{�q�7x�`�d܆-����qԉ��C�P�k;�Ry��N�g'r]����/g�x)��3�-����i)d�~$y�$-I��n�R}�
	:׎.( � ����a��	�@	T�̉�"�����܈3��p��w�����&\1��士��rH�r"�&��\0R��QD]1�k���u��g�����ʽa���P�!
������xk E7e����1eo$9����h���W�%p5Y�@�>kD�uU)�u�иxѴ�ѐl��]9��T�D6�1P���Zf�PO�A3��#W}V�Q_�x��O<U3#6����ֺ́��i�����z�3UŘ�e�g��kvگ����Mo���SչL�p�OD:���C�fW�+�0����{pS�k���U(t������=�ϭ|NK�\���	�6�g�.a�l�:�l��T�
0�]��1Ν1�KH� ���C7�z5]�0��`eq�n�k�zHJ=qf�t{�s�ʤU����d�3�n�����qw��������"�r�z&ռ8��;O}��~�t���N�e��$q��+x �*���#���D�o�	M'3��<�F���D"Fs�,e���S:���ё~B,�]��Gԓ�!u�^|_���c"��댊��������oT
3�\%̏�{+a"<��  v��`���ő7x(.*����)�4[!���^������MnŴ�����_3f�VZe�h��!4՜LJ4�j�sE��U�^�u3-T�`]�r{V�jR���M�c��[< 8{����9k�P!֭'��e��;�ߑ��sh��zq#��ɩ<P?`�R�)�f>�}-�Vooy�C�P��hX=a���Z�����F#�`G�J[�:�ɑ�֭7_O��i�9����0f�^A�
ļ��*�:s�9{�@�Xe�]]˥#�e�
�"W?s�8gCܪ��h1�� mx�S� -N��ٚ˿�¦u�Fp�l*=O�!�y�N��a��1}�N���q�f��NF���@Vf����+~ƨ�4�yƈp�������I��:�,�MG�wKԫ�jr -
V�6�i@��H��+���z�J�ê}m�ML�?�hG߭��vյ��F�L�~ӌ\�쇪�n =�۝mx:�M��G�:����Kٮ�UbD����^����{ED��_ZoB88���X���<������f���`��      7   �   x�}�An� E�p�� ����"'�6�)Lb$,*��%A�څ��y_��`u�'Qpɸ�O���~�#�s�=�1� ����fꜩ�o<��Qڨ� z:��h߇�����'�F�}()o>Է��V��������X(��R}�2'&HWHen��LyGj�T������Ha�:�#պ6����������[�[���e�R~��}�      ;      x�3�4�4����� �X      3      x������ � �      �      x������ � �      �      x������ � �      s   b  x�uWK��6]S��D�+��u�d&&�&���cKI�t��d����R$�k�ɇ�c�˂����u&����4�}$�	�0�pW�ɶ�-�m�$��[��2k#|��Iʌ������ҏ��0\�L�y�E�$�Z��.0���7|��F'>N~��q���ԏ�)�}\b:*�)E�,(aN�i�J�$T)�s��q�Ӗ|=/�
ʎi�ZUPP&��
fI�J�Oa��ۑ,���bg�hC��EkjM��߂�&ߏS��&=Q"�	Q�D��:�"DI2��j�f?N�'�ֶӝTZ]d���P�T̥��ݧ�ɗ�G�A���V��ɰ�t�lw��(�0ER%$yׇ�O{_�:-��'O�\�&4���>��6FC�����}��In��a��i��{�^�M:Xۼ턤��<p��ͳ�H	���qk��a�°���As{�Vs/�eW�*�Q���"C��-��9L��&�6�y�V*��̙)�-5X�$A�Q	M>O���Î�y^��5�&0�Z���i�h˒:G�"��i�s�;/1Y�GMtp>B� �:V�0m����N�2e���q����u*��RU�c�����I���=[��bb)3�T֔)�$m*N\������R�(�)G��T*,Q���ٍ-y���z��~��˿���/$�k��9a�56p�줢bm�*hk1��XRD�,������3)W�i6�4���$��y�5��o�0����o��nQ�C�������&磝'Kf����0��[Lg��ܖꢍTΡ� )���!��~�~�rH�&o0}��Ĝ�h���DFl}�Թ"��8Ntzo�GX�Y�%�Uѐ����T�v�c!���B�8��Q�V�/A��d��q�S&i�d�y4���v=^`N���{���*��K�(4���?��o<����+l�u(5�e��r=��$�*��Kl���gė�koN
��C촥f���#�18VS�`�a�<t�Ϋ[F�A��=��%w�ioaN�mḅ���ɶ��t�p }~�\�_��(���z�o%-O�d$Kڅ#�ܛ��q]QUR�w���(�$hr It�~�ҫ@%`Hb��%c~�*
&�~�UU��c.�      w   P   x����@�l�J�}����Fk@�nb�m��,�&Â�b�,�>���S�	�9W�F:iW�A&W�E6YW���?6�      C      x��]��8���z�B���vJ���ޙ`����� �.g��i��ά�i��,�Q�Ŗ�,[%��݉�Bg*H�����A}Jw�)�~��w�Qaf~����s%�9�d�-�yJ���c��O���q�$�����K�٥��q�J��? �ן7IU��y�O��2B����ъmDw�����/�v��M�a����҇���=ؿ�R��>���m�÷��@������T�Đ���$�5�����㾋�}��������61�J��,H�qh �Q�}9�]H�C�1�֩�D�!!K�J��iH�5�A��$	�F�����KV��9�H�tB1�7A�ߔ/R��3�D�ID�M��J?�-����u)�х���]~X�!(6(�c�Sz*�t�Cy�<�jT��1��LUY	����R���T�6�!��B��n<:�E1~F�~�$�q*3$y*��[����i��f��b0$�5��*})�t��ƪ�
fk(r�.�>2p���I��i\zUf���B�T�ZF/E�����}� %�z�/�t��Ƥ[c$�~,n�3���{��*/2�	��/Ã%�<fH��,,8P�D������?�^� B� #��_��?=|��ӝ;>�ۭn����'Ӻ)a��r�Zu:�fb߮}QXR� ������ɴ�W��x�<]!K~z.�{vi�t�=5��sz2��^�[��q�Sa�$�~��J0�+7��HDJS���A=���HO����m��͂of�e�yy��PR�>�K�զ�4��I>�'d�O���ĉ��S�X�u�����ͽ>(�\Zf��i���k�iq�ӂ�5YV������r�KR��GVf^��(��l���G�+�%��V�(���r%qdU�(�EɰC Z��gy��Y�BH�?=�vi�*�2(��"�=S�X��=h�1��g��J��E����1�+��������6>�d0?Ư���"���4��

�ۿ��������B�!�'�Vl#�>�vH�{W � ��l��$좉���as:mv�5.��K�\��T�H]����6�0�����4>�J�a�"��ʩIb�7AX�����6�M�ew��JO7�hZ2�Ƌ��xIDy2��4j�U��C+�WǄ�.v��s��8�����ğ����*W��o�ǋ�C$"ZD��a�˖��En����}�2�Q�;��T�CJ�HI"g%�i�r��*����m�ڿ�m�A�/�ڄ7�>�XԘ������k����8�ϋ����<ɹ�ۂ9G@G�Bz���
\ݎs�^�d]X�I�5^�<FckO��0�4�Ç�L�qc�4���/�dc��������E���M��.�n��o��[��=%1��{�IX;n]� 	�y��J3��|��T$�l;���Y������C�p:l���!�/����Ԗ�ϔ��#���?�fȍbv6C=UuOU�S�ꩪ{�֐�)�9˻>���t�]�k&�a᪗�pԦ�T�7�!�ֹ��g[����&/�u�|z K:f8���<;��b�Ӄ�Ս��m������!�:3��w�!w�m�IBFۍ���^���l1mj���='̷h��{^wb<;���0��`^�[�w��ea��1a.�"�j;�Fy����ܜ��C��{��޴�b����|���p<=�����!}�� "?S,�/e�l�M�w��v����M��lo�E��V�jw[{Uu[�n+�me���n+P��p�]���]}�P��6Co��AabAG,R���l�'�8��d��l��q2ݺ���tn�	Ţ�;�گ�د��\r��7�L��e�8�n���t����|±#�$A��7�ܖ��o��w�V�hdzf5Z���1o
��u�<���h�P�]CQe�]��XΎ �S�%7������Ô&ta�Q7X�J��n���Y���]��M??VR�Lb0tm����^�`�$�I�����~���$���y�$�
����cz��w]��%����9p��JI@�lk(g�� (W ��4.����Qy|��~J�����K�`"(���LT�Zf9������l~��h�'fBŀ^��۩�3�S��7HH�xe�@E0��H�I�HȢ���Iwb�������Z��A�n`׻!fy����n��nH�1��B��*	G�3��7?�����	����%YH2��m�;ȷ��`���X��9��ݧX�ZDb8���8hYw[��q���.�2��z���R��f�Ng�U1��u[��w����2&�}O��RV�6���֊'<����������g<b��d I��yn��k�WX��ٻIg{�G��������Lx-7G�.� ���('�$���fGϳ5,�������*�Ɣm�3]�'<?�1�����J.�7^���X(w���ͭͮ����Q����+膒
c�o�%�*s��t Z�t0�[4^��T���y(�fٸ�?^�Ґ+�9��CiT$\m �(O�S��?�ԗ<�1H`\3��.n�K������
ı k�2w��`q�h�����Y3�vٚh��oծ� k��͆�����(Fc� p�2�w�P��h���G��(� �@�X�K�y����Ɨ�/,8>J���(cƥ���9<�+�c	�g�V2��Szz�hU�{�~{z�x��Hx��!ⷚ�R�'�L?�Vk�N�~��f�2�E8`��i�U&�����Li���m�+j<��&��4[j�f[<�x*�@�����*b_�x�����_d[|��*�@�H1�h��0ż�3�U�R��r�g� %*�:�6�(#<�QߢѺ]��ɂ�]�m8�dָҞ=V���+(c�����$L�0�����lN��$��п��S��\�½c.g��ÐC�<p7�q6�Y/0� kP�FȑԠ"�
/�����E�>T�����҅���\B�t��F�[#|"5o���)6��;"�Tw`�Cy��g|��5BUT��K��]!(XF��-�<O�nJ��-#M�-�(�Ĥ�iҶh^��\�t[~WlҶ��Q��(D�x[&�ad�Tu��v�Հ�C��|�i�p�!�"�������V]�7���PG�3\#���%�^�@]��t_s�!\��>T��<�w�S/�UR�B��n��I��%ݗ�=qohYKG|a�m����~ַ�.1ܾ�(�ks��@�k������ښ͸g_VL�0���b<fWc�Տ_�GL�j�Ħ|�5my3Ƒq�g��\6�����3�
F�����ʼsJ��@l�4MTg�B`&r�
��(���iZ�-Z��Ȝ�\!��z��𸐸� �x�'�6w^K�:����`�����nV+�RW�_d%�֑�u�Եk�ϸ��m*!SF״�Jwle�[|�+���'t��A&ΜQ�Ex��o�\��yo�.Y�_��.���AFԭ9|���ks)�g��;Je9��ʒ��Vf�ݚ���d1�n�[.e��7�D�,g�D_7��������������$�3&|�7D�g4�����e�P,��n��9���ܝjo-���� -MY�*1&��mi���پH �@�Ps>>Iw��$�+HL�T��>�+�T:�_���v���P�aØEH�����4Y�kA�L����tQ1L��n�j��.LRm{��/$T�鴂�\F�{ï*Qu+żȐ�߃3/4����!e�X��(�k�)WP�@t/�����9�#>�:��뙳�,K�;�_-&�/^!�5�_�j x��p�Ϥ3x"*��O_Ϩ!�憬:�h+AΘX�W�,���I��i��5B��+�V�鯰{�Ր�ّ���QQ�7�F���o��K����+]U�Ͳ�ȝSk�a��>��4pc�CU6G��aI����3��d�����./�7V���&S�z ���h/� `�o��eӫ�+�b�*�L���1�����A	K�ŭ��4bSǖ۵��o�5�
�޻V���;��{ۄ�vY�<Ogs�b=�/7�GJdZHs����ӟ�L���ؽo���bE��c�:�s �  ���ݞ�Z��iѸ��r�E�XN$y�r��\d!3n�nC>�n� |�і�=�W����˚ X����̉Ҳ�	#�8�
ʚp����P�h��+�U�0m7���.L��b%YF��s�%h�� ,�63N�FPXa�� �)t�����zx��b�L�u�ΉCc���"�����4,���i�	z�1�	I��=0ċ4����� )�N+���\+bB��➱u�0kMh�_�a�u�?�����e&�N�X�;�4�8��d�pAݾ�N!_�}=�a�<�o�����7�W���>�����|`
�'BO�"|?����O�깝�y�`��zm�f���'sB �uJ����Bt�7�B\$�'֯�C�&&�D�T��	�#��l�
��QQQ�v��~�^�(RR�3�eN!�P�z\#�^�b��<�N G/� 4���4����R��`�l�#b�7��p?�&�B���Ѓ¼&��,f�\*`靤!�[1�,݋�H/��Q&@��yR���%F�ʘZm�V�t��(�����F���c��J,Kh.�t�[p,�'���"I��ͳv� X�����Y�^��H��ѱ� 5Lt�x�Mt������
�9�TÔ�7�2ޱ5ը�O ���0�U-$,r���7����2����L���j�eD���I3�˷2����*� ��%����A�:�"�:% �oQ�p�0�@O�٢Ӡ��>�Ӯf��w'���k�����E:;7��u�DʻJN��"q���z�� b8(:��d�xv�c0����a��o$=9��9���T���H$6b�f��{_�ɱl��1�
Љ�`���-��	Po��m��Pc<�<i���I�;��fOR����L�Ԍ����(���).���dk�!&h�^�N� !:�W���m�����7��z���R!Bt"1�e���Z�$�G�}���-Gǀ,(G'r��F����r�p+G���r�D,����z��<)G}�Г�p�
�'E/h�2Q������������{�~���ۿ/w6�Y�ED�$l�.��Ls$`ISg0%��k5`Bk���̴ף]>.�"p���w}�W���������a_�2���{�Y�Q�X���5�.����l�L��&�Mc5P�4���6�A��qK6�!�$���@|����.߾��(_�8�.����9��ܹ��c<7rĠe��F|���C�1�qzŇb�E�+���L=w��yܵ�1O���D^�4�C�h�N�(�&��dn���NC>Pu��C��A��u�2=����������v~���g`��=4��	&ٞ�I��iu��?6���������=��$ie9Cg������������9������a��ur�Z��^(�EA��Rȴt���1��R��;�a�"�a���mE����u����Q����)!옮�=����#K�|`~}�M[�V�kB��Q�w;7�#&Fx��P��g	K��k��L���Zۿ����Tj�����G0�l��վ�`�F�eN�X�g��e��fq3ƾM�b>�1��ȿٟN���R�JYr�R�z��^�2��^0x��^�p�|E`8�A��������g܎��FAk5�TГ����=X��hz��K�G�V�ZJ����_�*ۃ;Dsg$�^]��=wVܒ*�I&yW���=Xe�jm�r�U���A���ڽ��2�K<1D�ăe!�<h�nuNM�R���"YU����>�mz,�c,��R���Y��S �NG�������0v����uk�G��ӼۥC�GǨ�N��T�.����q��	XR)'y*�(�����[jW��i�zU�9�P�Uj�H!�*%U.=��:-�]�V�Te0\��q�D,��"��
�^�b�J�s���K�s�"�vg���>�����X�\%D�J�p��uU�u���n�2���/P�?k3�+t��_h�J[ �?�.��rp&���q�k�Ci�s��-q���k۾�(g���$�떚�nl����`���E�
x���~�
br^SLA�.��0��x�����K�P���`!���`
�b�!
(�6Q�������,��S`�	S��wf;�Ր�sb��#�z�x��@� ������F�R^�bE�
�����jQ��*�{��ݻ��%      E   �  x��Uˎ�0<�|L���5�O�1b2���G�$�ߧڛee�;H������r��"%Hj�0w�\���c3��D��B�d*MB���֌��~����O�Ԏ�m��������Hmڶ�������B��O�"Y@Mҽ�|10H�^k `z�G�l�^z
h��4h�ߡ�uw�}K��d6dEHn�q4Ɠ�ơ/��QbX��K��\��uj���'-��",*G
^�˽?/Q�Gq�
��l�0�aܸ$y)���o�8�/�?�XJ=+]�o��{J�(�0�[�2[JmGC(L-�W��\SxTL>�n�˂�����5��5���q�,-<���X�5d�Po ��3X�Ց
k0Koޥ��e�a���SVa�	��7a�I�*�4D��,�^%�lF	�Z1��
�&�
C��0�Z�ɟ�;[��k�N���%|b�9��QE��[E>^*�J�� Q0Qؘ��,y='�8�~�@����!���x΋��+����� �1� z&�#�S�ā�
���xl����G��]�Bl�J��L?��kXȸ�"��h�y1��Y�U�w&�ʓ��P�����o_��d�~UC7���~�$��xKYu���8�����^�	��3+��+S/]��S��@��Q�N$��-f����L.�s>�c�F~�Ǯ�
���8�I���bQ{H ޸[�T��E~|9�N� �G3�      =   �
  x��[�r����y�l��%��l3	5�q�n��0FR�Ny�*�ĶZ�ut�%��p�sw��>�k�ލ���ҝ�~���߷n:�_���������������*�=�}��صT���M,_�4U�B?���գ^�h���l�5q"Õ(J���6ei�/v����G�=v�v�d"�#@r�/��A�"*�6�G��~u���!��}�Y�ϛ��u^c^�q?�����������F��Jm�fN���9��O�S@��C�Z_[�?�Y��!T�k��ӕ!�E�b�B�8E#�P��y��4v���X����a_�XW6B�;ɖ�}g�kS�|�:dǫ��M�1҇�cr�H�F�+vDү������a�c���q$ضI�>x�m�y�K���}hXr?�c��Y��qp�χ�Gw���i�����K?�|�Č6	��{w�4���W��0��ݐe�v�������w��M��՝��'��"y]�t�)���m}������L���ҝ�ٝ�x���3K�3˶ �ďbW��ڕ6��ߑ6��ߏ������i%(Z
�n6�{�����~���8�����h6v�8s��-S�-�_����o���D?ݷ/]�"�B�F��4��m�@�+p{3lT"�V������_Ğ(N�_���S���﹛���Ч���nz��p������it�c��lfg�>n�u��,ZR��y�����3��[���������О�?� ���nR�AS׎'��U��v������>���.�������V	�7�w�O��ixsã_�����p�d�&|�E�QH�^��[���֍��4=Vf{�����>̷v����av��v�Z�C�vˬf`.��7t�Կo��@ޠ)Ɓ�5�!�F�3��RP����lw�?��R�����avoF0�R���0S�±��%x=+ŕ�FO�����cs9~�gF
�>`v֌5���BOԲ����^�BOՊ�F��Y��Y{�j���X#��8ɞ�4v����iJ ��1(9��qM%q��r>��436E!~�ȇ���T`���Q�t�q��Y<��Q�*���[��oh��oNث:T$��J�>�$(��Oi�������{��S�G��.��ɕTm��vU�t�ܗ�s$�|�lݟ�bp:�q��5E0��f82S�[uB0�T�q��K52V,�� ��8(C+�9�Ԧ�G��������,3��	bqfab�Q�r ;C#��_���a.�4(�@5aV1@A	�l��ci���P�fP��V�t%�]��Ls�}"�[���4E���<��2J|�.oS�D�q+4xa��b�q�3�$O7�i*v��=��_4�b�,��6�b��A4��Y�mgUx�m9�ʖ6����*TD7�0�᝺R�}����S7}�=����#�eo�o�UQ	CAǨX��5�"X����`Y��]����y�k�%��,���L:"=+=e����%�(9J�(ʖ�h���q ��x�P幀[�\�"������P��N̊1��eE�	AGM��F�j�؄�O~�<��H>�)b���y�Em�v���0���(4<rγ�x�"F	��9K�0��N^Wp�=R]�@�w)8��t�K���y�*�j��qչl1��LT�;(Y��<�� {�9qp��B$7눑�4D�$�.l��5p'��.�ai�/°$��Em��h��pʓ]�Y�����\�CN��	�갡��җpo�q>.��;���`JW�G�Q���2E"�v�YX�2ݏ�U��g��-;2-�R���z}��5���e6��������c^�X%���,~��`���(����C���G���:���"�& ���-�u�$w�7�A`qP�p�B�@��P
e�8I�t-#��h�H.��wXɉp�b<��8Y�B�ټ�b��p�����\���oo���{���	�d-x�<ge��!�fR�e����o��oH�&6�ַ@���NS��߮+��5���@��G����Bذ���1�2Nb�󁓱r��0A.D���Sݴ!wI	��6�__3�I۽C�X(=ɍ@�
S�r쯕I*)Y���M�.��

'��;��_���
yA�T�I*AYʗ/�A�I&�\�kp�y4K9Y-~�ZH<y֞Z 9���k��ϛ�&����ޟ�ǔ�I�sjfS���P�T�o�Rh#j�R'�ۦ�붫�a�yŜ�z���p�T�1b��B ��<�#�ʠ �;c?m��a[|�Qa�Ѷ�Q�g�VjVG�-R�
;zSF��Y�o�eQWǣ���*���c.k���b�ԍA̠3e�՞N�4����> F�:5"*�!�s��g�,d?"M�D�ޘ��.�$;>�Xo
�q��g\~��Ft��d�X�U�s@�
3�Č�'���ک5�/�q�Wk��ǟ(��k�Vp��1�5�ɠE����b�g� $#��⣶���l����t�eX�8�=�]d縪���*h����� N�ZT#"7F9.�?7�
��@�������;�\!P�{l;
Z�w����Kj���/{DdU��gǙ�`�Z����=���AF[����a�h@߻�$�H�Q�/n�?b��ٵ
j�����8{��!�^�M�'�������������Q���qO���T�KP��Hsߎ����ѫ��
%�[c_/�WQ������^I�-9v!�ޱ�����Sn����Ǐ�Ė�      ?   X   x�3�t,-�H�+�LN,IM�tIMK,�)Q(��IUH�,K�S(�WHDV�PZ�Z�ǉ"��D\F��I9��8�)��fPDĄ=... ��3O      A      x������ � �     