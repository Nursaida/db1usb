PGDMP         .            
    z         	   penjualan    14.5    14.5                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16448 	   penjualan    DATABASE     i   CREATE DATABASE penjualan WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_Indonesia.1252';
    DROP DATABASE penjualan;
                postgres    false            ?            1259    16450    album    TABLE     ?   CREATE TABLE public.album (
    harga_album integer NOT NULL,
    nama_album character varying(30),
    nama_pelanggan character varying(30)
);
    DROP TABLE public.album;
       public         heap    postgres    false            ?            1259    16449    album_harga_album_seq    SEQUENCE     ?   CREATE SEQUENCE public.album_harga_album_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.album_harga_album_seq;
       public          postgres    false    210                       0    0    album_harga_album_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.album_harga_album_seq OWNED BY public.album.harga_album;
          public          postgres    false    209            ?            1259    16464 
   lightstick    TABLE     ?   CREATE TABLE public.lightstick (
    harga_lightstick integer NOT NULL,
    nama_lightstick character varying(30),
    nama_pelanggan character varying(30)
);
    DROP TABLE public.lightstick;
       public         heap    postgres    false            ?            1259    16463    lightstick_harga_lightstick_seq    SEQUENCE     ?   CREATE SEQUENCE public.lightstick_harga_lightstick_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.lightstick_harga_lightstick_seq;
       public          postgres    false    214                       0    0    lightstick_harga_lightstick_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.lightstick_harga_lightstick_seq OWNED BY public.lightstick.harga_lightstick;
          public          postgres    false    213            ?            1259    16457 	   photocard    TABLE     ?   CREATE TABLE public.photocard (
    harga_photocard integer NOT NULL,
    nama_photocard character varying(30),
    nama_pelanggan character varying(30)
);
    DROP TABLE public.photocard;
       public         heap    postgres    false            ?            1259    16456    photocard_harga_photocard_seq    SEQUENCE     ?   CREATE SEQUENCE public.photocard_harga_photocard_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.photocard_harga_photocard_seq;
       public          postgres    false    212                       0    0    photocard_harga_photocard_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.photocard_harga_photocard_seq OWNED BY public.photocard.harga_photocard;
          public          postgres    false    211            f           2604    16453    album harga_album    DEFAULT     v   ALTER TABLE ONLY public.album ALTER COLUMN harga_album SET DEFAULT nextval('public.album_harga_album_seq'::regclass);
 @   ALTER TABLE public.album ALTER COLUMN harga_album DROP DEFAULT;
       public          postgres    false    210    209    210            h           2604    16467    lightstick harga_lightstick    DEFAULT     ?   ALTER TABLE ONLY public.lightstick ALTER COLUMN harga_lightstick SET DEFAULT nextval('public.lightstick_harga_lightstick_seq'::regclass);
 J   ALTER TABLE public.lightstick ALTER COLUMN harga_lightstick DROP DEFAULT;
       public          postgres    false    213    214    214            g           2604    16460    photocard harga_photocard    DEFAULT     ?   ALTER TABLE ONLY public.photocard ALTER COLUMN harga_photocard SET DEFAULT nextval('public.photocard_harga_photocard_seq'::regclass);
 H   ALTER TABLE public.photocard ALTER COLUMN harga_photocard DROP DEFAULT;
       public          postgres    false    212    211    212            ?          0    16450    album 
   TABLE DATA           H   COPY public.album (harga_album, nama_album, nama_pelanggan) FROM stdin;
    public          postgres    false    210   c       ?          0    16464 
   lightstick 
   TABLE DATA           W   COPY public.lightstick (harga_lightstick, nama_lightstick, nama_pelanggan) FROM stdin;
    public          postgres    false    214   ?       ?          0    16457 	   photocard 
   TABLE DATA           T   COPY public.photocard (harga_photocard, nama_photocard, nama_pelanggan) FROM stdin;
    public          postgres    false    212   ?       	           0    0    album_harga_album_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.album_harga_album_seq', 1, false);
          public          postgres    false    209            
           0    0    lightstick_harga_lightstick_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.lightstick_harga_lightstick_seq', 1, false);
          public          postgres    false    213                       0    0    photocard_harga_photocard_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.photocard_harga_photocard_seq', 1, false);
          public          postgres    false    211            j           2606    16455    album album_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.album
    ADD CONSTRAINT album_pkey PRIMARY KEY (harga_album);
 :   ALTER TABLE ONLY public.album DROP CONSTRAINT album_pkey;
       public            postgres    false    210            n           2606    16469    lightstick lightstick_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.lightstick
    ADD CONSTRAINT lightstick_pkey PRIMARY KEY (harga_lightstick);
 D   ALTER TABLE ONLY public.lightstick DROP CONSTRAINT lightstick_pkey;
       public            postgres    false    214            l           2606    16462    photocard photocard_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.photocard
    ADD CONSTRAINT photocard_pkey PRIMARY KEY (harga_photocard);
 B   ALTER TABLE ONLY public.photocard DROP CONSTRAINT photocard_pkey;
       public            postgres    false    212            ?   '   x?33 N?Pא? 7N?? ?`GOG?=... ???      ?   ,   x?3425 NOw???Ogo??`N?? ?`GOG?=... ???      ?   %   x?345 ??PwG??`N?? ?`GOG?=... nq?     