PGDMP                         z         	   kutuphane    15.1    15.1 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16398 	   kutuphane    DATABASE     }   CREATE DATABASE kutuphane WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Turkish_Turkey.1254';
    DROP DATABASE kutuphane;
                postgres    false                        2615    16540    Personel    SCHEMA        CREATE SCHEMA "Personel";
    DROP SCHEMA "Personel";
                postgres    false            �            1255    16704 )   bolme(double precision, double precision)    FUNCTION     �   CREATE FUNCTION public.bolme(sayi1 double precision, sayi2 double precision) RETURNS double precision
    LANGUAGE plpgsql
    AS $$
declare 
sonuc float;
begin
sonuc:= sayi1 / sayi2;
return sonuc;
end;
$$;
 L   DROP FUNCTION public.bolme(sayi1 double precision, sayi2 double precision);
       public          postgres    false            �            1255    16702    carpma(integer, integer)    FUNCTION     �   CREATE FUNCTION public.carpma(sayi1 integer, sayi2 integer) RETURNS integer
    LANGUAGE plpgsql
    AS $$
declare 
sonuc integer;
begin
sonuc:= sayi1 * sayi2;
return sonuc;
end;
$$;
 ;   DROP FUNCTION public.carpma(sayi1 integer, sayi2 integer);
       public          postgres    false            �            1255    16701    cikarma(integer, integer)    FUNCTION     �   CREATE FUNCTION public.cikarma(sayi1 integer, sayi2 integer) RETURNS integer
    LANGUAGE plpgsql
    AS $$
declare 
sonuc integer;
begin
sonuc:= sayi1 - sayi2;
return sonuc;
end;
$$;
 <   DROP FUNCTION public.cikarma(sayi1 integer, sayi2 integer);
       public          postgres    false                       1255    16740    eklenenbolum()    FUNCTION     �   CREATE FUNCTION public.eklenenbolum() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
begin
update eklenenbolum set eklenenbolumsayisi=eklenenbolumsayisi+1;
return new;
end;
$$;
 %   DROP FUNCTION public.eklenenbolum();
       public          postgres    false                        1255    16732    eklenenogrenci()    FUNCTION     �   CREATE FUNCTION public.eklenenogrenci() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
begin
update eklenenogrenci set eklenenogrencisayisi=eklenenogrencisayisi+1;
return new;
end;
$$;
 '   DROP FUNCTION public.eklenenogrenci();
       public          postgres    false            �            1255    16727    eklenensayi()    FUNCTION     �   CREATE FUNCTION public.eklenensayi() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
begin
update eklenenkitap set eklenenkitapsayisi=eklenenkitapsayisi+1;
return new;
end;
$$;
 $   DROP FUNCTION public.eklenensayi();
       public          postgres    false            �            1255    16722    sayi()    FUNCTION     �   CREATE FUNCTION public.sayi() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
begin
update silinenkitap set silinenkitapsayisi=silinenkitapsayisi+1;
return new;
end;
$$;
    DROP FUNCTION public.sayi();
       public          postgres    false            �            1255    16700    toplama(integer, integer)    FUNCTION     �   CREATE FUNCTION public.toplama(sayi1 integer, sayi2 integer) RETURNS integer
    LANGUAGE plpgsql
    AS $$
declare 
sonuc integer;
begin
sonuc:= sayi1 + sayi2;
return sonuc;
end;
$$;
 <   DROP FUNCTION public.toplama(sayi1 integer, sayi2 integer);
       public          postgres    false            �            1259    16542    personel    TABLE       CREATE TABLE "Personel".personel (
    personel_id integer NOT NULL,
    personel_adi character varying(50) NOT NULL,
    personel_soyadi character varying(50) NOT NULL,
    personel_tur character(1) NOT NULL,
    adres_id integer NOT NULL,
    calismaalani_id integer NOT NULL
);
     DROP TABLE "Personel".personel;
       Personel         heap    postgres    false    6            �            1259    16541    Personel_personel_id_seq    SEQUENCE     �   CREATE SEQUENCE "Personel"."Personel_personel_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE "Personel"."Personel_personel_id_seq";
       Personel          postgres    false    6    241            �           0    0    Personel_personel_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE "Personel"."Personel_personel_id_seq" OWNED BY "Personel".personel.personel_id;
          Personel          postgres    false    240            �            1259    16548    kadrolu    TABLE     h   CREATE TABLE "Personel".kadrolu (
    personel_id integer NOT NULL,
    mesaiucreti integer NOT NULL
);
    DROP TABLE "Personel".kadrolu;
       Personel         heap    postgres    false    6            �            1259    16553 
   sozlesmeli    TABLE     k   CREATE TABLE "Personel".sozlesmeli (
    personel_id integer NOT NULL,
    mesaiucreti integer NOT NULL
);
 "   DROP TABLE "Personel".sozlesmeli;
       Personel         heap    postgres    false    6            �            1259    16469    adres    TABLE     �   CREATE TABLE public.adres (
    adres_id integer NOT NULL,
    ulke_id integer NOT NULL,
    bolge_id integer NOT NULL,
    il_id integer NOT NULL,
    ilce_id integer NOT NULL,
    mahalle_id integer NOT NULL,
    sokak_id integer NOT NULL
);
    DROP TABLE public.adres;
       public         heap    postgres    false            �            1259    16468    adres_adres_id_seq    SEQUENCE     �   ALTER TABLE public.adres ALTER COLUMN adres_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.adres_adres_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    222            �            1259    16523    bolge    TABLE     �   CREATE TABLE public.bolge (
    bolge_id integer NOT NULL,
    bolge_adi character varying(50) NOT NULL,
    ulke_id integer NOT NULL
);
    DROP TABLE public.bolge;
       public         heap    postgres    false            �            1259    16522    bolge_bolge_id_seq    SEQUENCE     �   ALTER TABLE public.bolge ALTER COLUMN bolge_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.bolge_bolge_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    235            �            1259    16451    bolum    TABLE     �   CREATE TABLE public.bolum (
    bolum_id integer NOT NULL,
    bolum_adi character varying(50) NOT NULL,
    fakulte_id integer NOT NULL
);
    DROP TABLE public.bolum;
       public         heap    postgres    false            �            1259    16450    bolum_bolum_id_seq    SEQUENCE     �   ALTER TABLE public.bolum ALTER COLUMN bolum_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.bolum_bolum_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    216            �            1259    16535    calismaalani    TABLE     �   CREATE TABLE public.calismaalani (
    calismaalani_id integer NOT NULL,
    calismaalani_adi character varying(50) NOT NULL
);
     DROP TABLE public.calismaalani;
       public         heap    postgres    false            �            1259    16534     calismaalani_calismaalani_id_seq    SEQUENCE     �   ALTER TABLE public.calismaalani ALTER COLUMN calismaalani_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.calismaalani_calismaalani_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    239            �            1259    16737    eklenenbolum    TABLE     E   CREATE TABLE public.eklenenbolum (
    eklenenbolumsayisi integer
);
     DROP TABLE public.eklenenbolum;
       public         heap    postgres    false            �            1259    16724    eklenenkitap    TABLE     E   CREATE TABLE public.eklenenkitap (
    eklenenkitapsayisi integer
);
     DROP TABLE public.eklenenkitap;
       public         heap    postgres    false            �            1259    16729    eklenenogrenci    TABLE     I   CREATE TABLE public.eklenenogrenci (
    eklenenogrencisayisi integer
);
 "   DROP TABLE public.eklenenogrenci;
       public         heap    postgres    false            �            1259    16456    fakulte    TABLE     �   CREATE TABLE public.fakulte (
    fakulte_id integer NOT NULL,
    fakulte_adi character varying(50) NOT NULL,
    adres_id integer NOT NULL,
    universite_id integer NOT NULL
);
    DROP TABLE public.fakulte;
       public         heap    postgres    false            �            1259    16461    fakulte_fakulte_id_seq    SEQUENCE     �   ALTER TABLE public.fakulte ALTER COLUMN fakulte_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.fakulte_fakulte_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    217            �            1259    16517    il    TABLE     �   CREATE TABLE public.il (
    il_id integer NOT NULL,
    il_adi character varying(50) NOT NULL,
    bolge_id integer NOT NULL
);
    DROP TABLE public.il;
       public         heap    postgres    false            �            1259    16511    ilce    TABLE     �   CREATE TABLE public.ilce (
    ilce_id integer NOT NULL,
    ilce_adi character varying(50) NOT NULL,
    il_id integer NOT NULL
);
    DROP TABLE public.ilce;
       public         heap    postgres    false            �            1259    16510    ilce_ilce_id_seq    SEQUENCE     �   ALTER TABLE public.ilce ALTER COLUMN ilce_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.ilce_ilce_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    232            �            1259    16481    kitaplar    TABLE     �   CREATE TABLE public.kitaplar (
    kitap_id integer NOT NULL,
    kitap_adi character varying(50) NOT NULL,
    yazar_adi character varying(50) NOT NULL,
    kitaptur_adi character varying(50) NOT NULL
);
    DROP TABLE public.kitaplar;
       public         heap    postgres    false            �            1259    16480    kitaplar_kitap_id_seq    SEQUENCE     �   ALTER TABLE public.kitaplar ALTER COLUMN kitap_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.kitaplar_kitap_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    226            �            1259    16505    mahalle    TABLE     �   CREATE TABLE public.mahalle (
    mahalle_id integer NOT NULL,
    mahalle_adi character varying(50) NOT NULL,
    ilce_id integer NOT NULL
);
    DROP TABLE public.mahalle;
       public         heap    postgres    false            �            1259    16504    mahalle_mahalle_id_seq    SEQUENCE     �   ALTER TABLE public.mahalle ALTER COLUMN mahalle_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.mahalle_mahalle_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    230            �            1259    16463    ogrenci    TABLE     �   CREATE TABLE public.ogrenci (
    ogrenci_id integer NOT NULL,
    ogrenci_adi character varying(50) NOT NULL,
    ogrenci_soyadi character varying(50) NOT NULL,
    bolum_id integer NOT NULL,
    adres_id integer NOT NULL
);
    DROP TABLE public.ogrenci;
       public         heap    postgres    false            �            1259    16462    ogrenci_ogrenci_id_seq    SEQUENCE     �   ALTER TABLE public.ogrenci ALTER COLUMN ogrenci_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.ogrenci_ogrenci_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    220            �            1259    16718    silinenkitap    TABLE     E   CREATE TABLE public.silinenkitap (
    silinenkitapsayisi integer
);
     DROP TABLE public.silinenkitap;
       public         heap    postgres    false            �            1259    16499    sokak    TABLE     �   CREATE TABLE public.sokak (
    sokak_id integer NOT NULL,
    sokak_adi character varying(50) NOT NULL,
    mahalle_id integer NOT NULL
);
    DROP TABLE public.sokak;
       public         heap    postgres    false            �            1259    16498    sokak_sokak_id_seq    SEQUENCE     �   ALTER TABLE public.sokak ALTER COLUMN sokak_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.sokak_sokak_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    228            �            1259    16529    ulke    TABLE     h   CREATE TABLE public.ulke (
    ulke_id integer NOT NULL,
    ulke_adi character varying(50) NOT NULL
);
    DROP TABLE public.ulke;
       public         heap    postgres    false            �            1259    16528    ulke_ulke_id_seq    SEQUENCE     �   ALTER TABLE public.ulke ALTER COLUMN ulke_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.ulke_ulke_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    237            �            1259    16705 
   universite    TABLE     z   CREATE TABLE public.universite (
    universite_id integer NOT NULL,
    universite_adi character varying(50) NOT NULL
);
    DROP TABLE public.universite;
       public         heap    postgres    false            �            1259    16710    universite_universite_id_seq    SEQUENCE     �   ALTER TABLE public.universite ALTER COLUMN universite_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.universite_universite_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    244            �            1259    16475    yayinevi    TABLE     �   CREATE TABLE public.yayinevi (
    yayinevi_id integer NOT NULL,
    yayinevi_adi character varying(50) NOT NULL,
    kitap_id integer NOT NULL,
    adres_id integer NOT NULL
);
    DROP TABLE public.yayinevi;
       public         heap    postgres    false            �            1259    16474    yayinevi_yayinevi_id_seq    SEQUENCE     �   ALTER TABLE public.yayinevi ALTER COLUMN yayinevi_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.yayinevi_yayinevi_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    224            �           2604    16545    personel personel_id    DEFAULT     �   ALTER TABLE ONLY "Personel".personel ALTER COLUMN personel_id SET DEFAULT nextval('"Personel"."Personel_personel_id_seq"'::regclass);
 G   ALTER TABLE "Personel".personel ALTER COLUMN personel_id DROP DEFAULT;
       Personel          postgres    false    241    240    241            �          0    16548    kadrolu 
   TABLE DATA           ?   COPY "Personel".kadrolu (personel_id, mesaiucreti) FROM stdin;
    Personel          postgres    false    242   ��       �          0    16542    personel 
   TABLE DATA           {   COPY "Personel".personel (personel_id, personel_adi, personel_soyadi, personel_tur, adres_id, calismaalani_id) FROM stdin;
    Personel          postgres    false    241   �       �          0    16553 
   sozlesmeli 
   TABLE DATA           B   COPY "Personel".sozlesmeli (personel_id, mesaiucreti) FROM stdin;
    Personel          postgres    false    243   W�       �          0    16469    adres 
   TABLE DATA           b   COPY public.adres (adres_id, ulke_id, bolge_id, il_id, ilce_id, mahalle_id, sokak_id) FROM stdin;
    public          postgres    false    222   y�       �          0    16523    bolge 
   TABLE DATA           =   COPY public.bolge (bolge_id, bolge_adi, ulke_id) FROM stdin;
    public          postgres    false    235   �       �          0    16451    bolum 
   TABLE DATA           @   COPY public.bolum (bolum_id, bolum_adi, fakulte_id) FROM stdin;
    public          postgres    false    216   T�       �          0    16535    calismaalani 
   TABLE DATA           I   COPY public.calismaalani (calismaalani_id, calismaalani_adi) FROM stdin;
    public          postgres    false    239   �       �          0    16737    eklenenbolum 
   TABLE DATA           :   COPY public.eklenenbolum (eklenenbolumsayisi) FROM stdin;
    public          postgres    false    249   U�       �          0    16724    eklenenkitap 
   TABLE DATA           :   COPY public.eklenenkitap (eklenenkitapsayisi) FROM stdin;
    public          postgres    false    247   t�       �          0    16729    eklenenogrenci 
   TABLE DATA           >   COPY public.eklenenogrenci (eklenenogrencisayisi) FROM stdin;
    public          postgres    false    248   ��       �          0    16456    fakulte 
   TABLE DATA           S   COPY public.fakulte (fakulte_id, fakulte_adi, adres_id, universite_id) FROM stdin;
    public          postgres    false    217   ��       �          0    16517    il 
   TABLE DATA           5   COPY public.il (il_id, il_adi, bolge_id) FROM stdin;
    public          postgres    false    233   .�       �          0    16511    ilce 
   TABLE DATA           8   COPY public.ilce (ilce_id, ilce_adi, il_id) FROM stdin;
    public          postgres    false    232   �       �          0    16481    kitaplar 
   TABLE DATA           P   COPY public.kitaplar (kitap_id, kitap_adi, yazar_adi, kitaptur_adi) FROM stdin;
    public          postgres    false    226   ��       �          0    16505    mahalle 
   TABLE DATA           C   COPY public.mahalle (mahalle_id, mahalle_adi, ilce_id) FROM stdin;
    public          postgres    false    230   Ұ       �          0    16463    ogrenci 
   TABLE DATA           ^   COPY public.ogrenci (ogrenci_id, ogrenci_adi, ogrenci_soyadi, bolum_id, adres_id) FROM stdin;
    public          postgres    false    220   b�       �          0    16718    silinenkitap 
   TABLE DATA           :   COPY public.silinenkitap (silinenkitapsayisi) FROM stdin;
    public          postgres    false    246   5�       �          0    16499    sokak 
   TABLE DATA           @   COPY public.sokak (sokak_id, sokak_adi, mahalle_id) FROM stdin;
    public          postgres    false    228   T�       �          0    16529    ulke 
   TABLE DATA           1   COPY public.ulke (ulke_id, ulke_adi) FROM stdin;
    public          postgres    false    237   �       �          0    16705 
   universite 
   TABLE DATA           C   COPY public.universite (universite_id, universite_adi) FROM stdin;
    public          postgres    false    244   �       �          0    16475    yayinevi 
   TABLE DATA           Q   COPY public.yayinevi (yayinevi_id, yayinevi_adi, kitap_id, adres_id) FROM stdin;
    public          postgres    false    224   F�       �           0    0    Personel_personel_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('"Personel"."Personel_personel_id_seq"', 2, true);
          Personel          postgres    false    240            �           0    0    adres_adres_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.adres_adres_id_seq', 13, true);
          public          postgres    false    221            �           0    0    bolge_bolge_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.bolge_bolge_id_seq', 7, true);
          public          postgres    false    234            �           0    0    bolum_bolum_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.bolum_bolum_id_seq', 7, true);
          public          postgres    false    215            �           0    0     calismaalani_calismaalani_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.calismaalani_calismaalani_id_seq', 5, true);
          public          postgres    false    238            �           0    0    fakulte_fakulte_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.fakulte_fakulte_id_seq', 6, true);
          public          postgres    false    218            �           0    0    ilce_ilce_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.ilce_ilce_id_seq', 11, true);
          public          postgres    false    231            �           0    0    kitaplar_kitap_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.kitaplar_kitap_id_seq', 40, true);
          public          postgres    false    225            �           0    0    mahalle_mahalle_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.mahalle_mahalle_id_seq', 10, true);
          public          postgres    false    229            �           0    0    ogrenci_ogrenci_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.ogrenci_ogrenci_id_seq', 12, true);
          public          postgres    false    219            �           0    0    sokak_sokak_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.sokak_sokak_id_seq', 10, true);
          public          postgres    false    227            �           0    0    ulke_ulke_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.ulke_ulke_id_seq', 1, true);
          public          postgres    false    236            �           0    0    universite_universite_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.universite_universite_id_seq', 1, true);
          public          postgres    false    245            �           0    0    yayinevi_yayinevi_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.yayinevi_yayinevi_id_seq', 24, true);
          public          postgres    false    223            �           2606    16552    kadrolu kadroluPK 
   CONSTRAINT     ^   ALTER TABLE ONLY "Personel".kadrolu
    ADD CONSTRAINT "kadroluPK" PRIMARY KEY (personel_id);
 A   ALTER TABLE ONLY "Personel".kadrolu DROP CONSTRAINT "kadroluPK";
       Personel            postgres    false    242            �           2606    16547    personel personel_id 
   CONSTRAINT     _   ALTER TABLE ONLY "Personel".personel
    ADD CONSTRAINT personel_id PRIMARY KEY (personel_id);
 B   ALTER TABLE ONLY "Personel".personel DROP CONSTRAINT personel_id;
       Personel            postgres    false    241            �           2606    16557    sozlesmeli sozlesmeliPK 
   CONSTRAINT     d   ALTER TABLE ONLY "Personel".sozlesmeli
    ADD CONSTRAINT "sozlesmeliPK" PRIMARY KEY (personel_id);
 G   ALTER TABLE ONLY "Personel".sozlesmeli DROP CONSTRAINT "sozlesmeliPK";
       Personel            postgres    false    243            �           2606    16473    adres adres_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.adres
    ADD CONSTRAINT adres_pkey PRIMARY KEY (adres_id);
 :   ALTER TABLE ONLY public.adres DROP CONSTRAINT adres_pkey;
       public            postgres    false    222            �           2606    16527    bolge bolge_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.bolge
    ADD CONSTRAINT bolge_pkey PRIMARY KEY (bolge_id);
 :   ALTER TABLE ONLY public.bolge DROP CONSTRAINT bolge_pkey;
       public            postgres    false    235            �           2606    16455    bolum bolum_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.bolum
    ADD CONSTRAINT bolum_pkey PRIMARY KEY (bolum_id);
 :   ALTER TABLE ONLY public.bolum DROP CONSTRAINT bolum_pkey;
       public            postgres    false    216            �           2606    16539    calismaalani calismaalani_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.calismaalani
    ADD CONSTRAINT calismaalani_pkey PRIMARY KEY (calismaalani_id);
 H   ALTER TABLE ONLY public.calismaalani DROP CONSTRAINT calismaalani_pkey;
       public            postgres    false    239            �           2606    16460    fakulte fakulte_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.fakulte
    ADD CONSTRAINT fakulte_pkey PRIMARY KEY (fakulte_id);
 >   ALTER TABLE ONLY public.fakulte DROP CONSTRAINT fakulte_pkey;
       public            postgres    false    217            �           2606    16521 
   il il_pkey 
   CONSTRAINT     K   ALTER TABLE ONLY public.il
    ADD CONSTRAINT il_pkey PRIMARY KEY (il_id);
 4   ALTER TABLE ONLY public.il DROP CONSTRAINT il_pkey;
       public            postgres    false    233            �           2606    16515    ilce ilce_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.ilce
    ADD CONSTRAINT ilce_pkey PRIMARY KEY (ilce_id);
 8   ALTER TABLE ONLY public.ilce DROP CONSTRAINT ilce_pkey;
       public            postgres    false    232            �           2606    16485    kitaplar kitaplar_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.kitaplar
    ADD CONSTRAINT kitaplar_pkey PRIMARY KEY (kitap_id);
 @   ALTER TABLE ONLY public.kitaplar DROP CONSTRAINT kitaplar_pkey;
       public            postgres    false    226            �           2606    16509    mahalle mahalle_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.mahalle
    ADD CONSTRAINT mahalle_pkey PRIMARY KEY (mahalle_id);
 >   ALTER TABLE ONLY public.mahalle DROP CONSTRAINT mahalle_pkey;
       public            postgres    false    230            �           2606    16467    ogrenci ogrenci_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.ogrenci
    ADD CONSTRAINT ogrenci_pkey PRIMARY KEY (ogrenci_id);
 >   ALTER TABLE ONLY public.ogrenci DROP CONSTRAINT ogrenci_pkey;
       public            postgres    false    220            �           2606    16503    sokak sokak_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.sokak
    ADD CONSTRAINT sokak_pkey PRIMARY KEY (sokak_id);
 :   ALTER TABLE ONLY public.sokak DROP CONSTRAINT sokak_pkey;
       public            postgres    false    228            �           2606    16533    ulke ulke_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.ulke
    ADD CONSTRAINT ulke_pkey PRIMARY KEY (ulke_id);
 8   ALTER TABLE ONLY public.ulke DROP CONSTRAINT ulke_pkey;
       public            postgres    false    237            �           2606    16709    universite universite_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.universite
    ADD CONSTRAINT universite_pkey PRIMARY KEY (universite_id);
 D   ALTER TABLE ONLY public.universite DROP CONSTRAINT universite_pkey;
       public            postgres    false    244            �           2606    16479    yayinevi yayinevi_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.yayinevi
    ADD CONSTRAINT yayinevi_pkey PRIMARY KEY (yayinevi_id);
 @   ALTER TABLE ONLY public.yayinevi DROP CONSTRAINT yayinevi_pkey;
       public            postgres    false    224            �           1259    16682    fki_personel_foreign    INDEX     S   CREATE INDEX fki_personel_foreign ON "Personel".kadrolu USING btree (personel_id);
 ,   DROP INDEX "Personel".fki_personel_foreign;
       Personel            postgres    false    242            �           1259    16620    fki_adres_foreign    INDEX     I   CREATE INDEX fki_adres_foreign ON public.fakulte USING btree (adres_id);
 %   DROP INDEX public.fki_adres_foreign;
       public            postgres    false    217            �           1259    16573    fki_b    INDEX     :   CREATE INDEX fki_b ON public.adres USING btree (ilce_id);
    DROP INDEX public.fki_b;
       public            postgres    false    222            �           1259    16585    fki_bolge_foreign    INDEX     G   CREATE INDEX fki_bolge_foreign ON public.adres USING btree (bolge_id);
 %   DROP INDEX public.fki_bolge_foreign;
       public            postgres    false    222            �           1259    16655    fki_bolum_foreign    INDEX     I   CREATE INDEX fki_bolum_foreign ON public.ogrenci USING btree (bolum_id);
 %   DROP INDEX public.fki_bolum_foreign;
       public            postgres    false    220            �           1259    16614    fki_fakulte_foreign    INDEX     K   CREATE INDEX fki_fakulte_foreign ON public.bolum USING btree (fakulte_id);
 '   DROP INDEX public.fki_fakulte_foreign;
       public            postgres    false    216            �           1259    16579    fki_il_foreign    INDEX     A   CREATE INDEX fki_il_foreign ON public.adres USING btree (il_id);
 "   DROP INDEX public.fki_il_foreign;
       public            postgres    false    222            �           1259    16649    fki_ilce_foreign    INDEX     G   CREATE INDEX fki_ilce_foreign ON public.mahalle USING btree (ilce_id);
 $   DROP INDEX public.fki_ilce_foreign;
       public            postgres    false    230            �           1259    16671    fki_kitap_foreign    INDEX     J   CREATE INDEX fki_kitap_foreign ON public.yayinevi USING btree (kitap_id);
 %   DROP INDEX public.fki_kitap_foreign;
       public            postgres    false    224            �           1259    16631    fki_l    INDEX     7   CREATE INDEX fki_l ON public.ilce USING btree (il_id);
    DROP INDEX public.fki_l;
       public            postgres    false    232            �           1259    16603    fki_mahalle_foreign    INDEX     K   CREATE INDEX fki_mahalle_foreign ON public.adres USING btree (mahalle_id);
 '   DROP INDEX public.fki_mahalle_foreign;
       public            postgres    false    222            �           1259    16597    fki_sokak_foreign    INDEX     G   CREATE INDEX fki_sokak_foreign ON public.adres USING btree (sokak_id);
 %   DROP INDEX public.fki_sokak_foreign;
       public            postgres    false    222            �           1259    16591    fki_ulke_foreign    INDEX     E   CREATE INDEX fki_ulke_foreign ON public.adres USING btree (ulke_id);
 $   DROP INDEX public.fki_ulke_foreign;
       public            postgres    false    222            �           1259    16716    fki_universite_foreign    INDEX     S   CREATE INDEX fki_universite_foreign ON public.fakulte USING btree (universite_id);
 *   DROP INDEX public.fki_universite_foreign;
       public            postgres    false    217                       2620    16741    bolum eklenenbolumtrig    TRIGGER     r   CREATE TRIGGER eklenenbolumtrig AFTER INSERT ON public.bolum FOR EACH ROW EXECUTE FUNCTION public.eklenenbolum();
 /   DROP TRIGGER eklenenbolumtrig ON public.bolum;
       public          postgres    false    257    216                       2620    16733    ogrenci eklenenogrencitrig    TRIGGER     x   CREATE TRIGGER eklenenogrencitrig AFTER INSERT ON public.ogrenci FOR EACH ROW EXECUTE FUNCTION public.eklenenogrenci();
 3   DROP TRIGGER eklenenogrencitrig ON public.ogrenci;
       public          postgres    false    256    220                       2620    16728    kitaplar eklenensayitrig    TRIGGER     s   CREATE TRIGGER eklenensayitrig AFTER INSERT ON public.kitaplar FOR EACH ROW EXECUTE FUNCTION public.eklenensayi();
 1   DROP TRIGGER eklenensayitrig ON public.kitaplar;
       public          postgres    false    255    226                       2620    16723    kitaplar sayitrig    TRIGGER     e   CREATE TRIGGER sayitrig AFTER DELETE ON public.kitaplar FOR EACH ROW EXECUTE FUNCTION public.sayi();
 *   DROP TRIGGER sayitrig ON public.kitaplar;
       public          postgres    false    254    226                       2606    16558    kadrolu kadrolupersonel    FK CONSTRAINT     �   ALTER TABLE ONLY "Personel".kadrolu
    ADD CONSTRAINT kadrolupersonel FOREIGN KEY (personel_id) REFERENCES "Personel".personel(personel_id) ON UPDATE CASCADE ON DELETE CASCADE;
 E   ALTER TABLE ONLY "Personel".kadrolu DROP CONSTRAINT kadrolupersonel;
       Personel          postgres    false    3316    242    241                       2606    16677    kadrolu personel_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY "Personel".kadrolu
    ADD CONSTRAINT personel_foreign FOREIGN KEY (personel_id) REFERENCES "Personel".personel(personel_id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 F   ALTER TABLE ONLY "Personel".kadrolu DROP CONSTRAINT personel_foreign;
       Personel          postgres    false    3316    241    242                       2606    16683    sozlesmeli personel_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY "Personel".sozlesmeli
    ADD CONSTRAINT personel_foreign FOREIGN KEY (personel_id) REFERENCES "Personel".personel(personel_id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 I   ALTER TABLE ONLY "Personel".sozlesmeli DROP CONSTRAINT personel_foreign;
       Personel          postgres    false    241    243    3316                       2606    16563    sozlesmeli sozlesmelipersonel    FK CONSTRAINT     �   ALTER TABLE ONLY "Personel".sozlesmeli
    ADD CONSTRAINT sozlesmelipersonel FOREIGN KEY (personel_id) REFERENCES "Personel".personel(personel_id) ON UPDATE CASCADE ON DELETE CASCADE;
 K   ALTER TABLE ONLY "Personel".sozlesmeli DROP CONSTRAINT sozlesmelipersonel;
       Personel          postgres    false    241    243    3316            �           2606    16615    fakulte adres_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.fakulte
    ADD CONSTRAINT adres_foreign FOREIGN KEY (adres_id) REFERENCES public.adres(adres_id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 ?   ALTER TABLE ONLY public.fakulte DROP CONSTRAINT adres_foreign;
       public          postgres    false    3287    217    222            �           2606    16656    ogrenci adres_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.ogrenci
    ADD CONSTRAINT adres_foreign FOREIGN KEY (adres_id) REFERENCES public.adres(adres_id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 ?   ALTER TABLE ONLY public.ogrenci DROP CONSTRAINT adres_foreign;
       public          postgres    false    220    3287    222                       2606    16672    yayinevi adres_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.yayinevi
    ADD CONSTRAINT adres_foreign FOREIGN KEY (adres_id) REFERENCES public.adres(adres_id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 @   ALTER TABLE ONLY public.yayinevi DROP CONSTRAINT adres_foreign;
       public          postgres    false    3287    224    222                       2606    16580    adres bolge_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.adres
    ADD CONSTRAINT bolge_foreign FOREIGN KEY (bolge_id) REFERENCES public.bolge(bolge_id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 =   ALTER TABLE ONLY public.adres DROP CONSTRAINT bolge_foreign;
       public          postgres    false    222    3310    235                       2606    16621    il bolge_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.il
    ADD CONSTRAINT bolge_foreign FOREIGN KEY (bolge_id) REFERENCES public.bolge(bolge_id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 :   ALTER TABLE ONLY public.il DROP CONSTRAINT bolge_foreign;
       public          postgres    false    233    3310    235                        2606    16650    ogrenci bolum_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.ogrenci
    ADD CONSTRAINT bolum_foreign FOREIGN KEY (bolum_id) REFERENCES public.bolum(bolum_id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 ?   ALTER TABLE ONLY public.ogrenci DROP CONSTRAINT bolum_foreign;
       public          postgres    false    220    3277    216            �           2606    16609    bolum fakulte_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.bolum
    ADD CONSTRAINT fakulte_foreign FOREIGN KEY (fakulte_id) REFERENCES public.fakulte(fakulte_id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 ?   ALTER TABLE ONLY public.bolum DROP CONSTRAINT fakulte_foreign;
       public          postgres    false    217    3280    216                       2606    16574    adres il_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.adres
    ADD CONSTRAINT il_foreign FOREIGN KEY (il_id) REFERENCES public.il(il_id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 :   ALTER TABLE ONLY public.adres DROP CONSTRAINT il_foreign;
       public          postgres    false    222    3308    233                       2606    16626    ilce il_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.ilce
    ADD CONSTRAINT il_foreign FOREIGN KEY (il_id) REFERENCES public.il(il_id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 9   ALTER TABLE ONLY public.ilce DROP CONSTRAINT il_foreign;
       public          postgres    false    232    3308    233                       2606    16568    adres ilce_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.adres
    ADD CONSTRAINT ilce_foreign FOREIGN KEY (ilce_id) REFERENCES public.ilce(ilce_id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 <   ALTER TABLE ONLY public.adres DROP CONSTRAINT ilce_foreign;
       public          postgres    false    222    3306    232            
           2606    16644    mahalle ilce_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.mahalle
    ADD CONSTRAINT ilce_foreign FOREIGN KEY (ilce_id) REFERENCES public.ilce(ilce_id) NOT VALID;
 >   ALTER TABLE ONLY public.mahalle DROP CONSTRAINT ilce_foreign;
       public          postgres    false    230    3306    232                       2606    16666    yayinevi kitap_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.yayinevi
    ADD CONSTRAINT kitap_foreign FOREIGN KEY (kitap_id) REFERENCES public.kitaplar(kitap_id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 @   ALTER TABLE ONLY public.yayinevi DROP CONSTRAINT kitap_foreign;
       public          postgres    false    3298    224    226                       2606    16598    adres mahalle_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.adres
    ADD CONSTRAINT mahalle_foreign FOREIGN KEY (mahalle_id) REFERENCES public.mahalle(mahalle_id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 ?   ALTER TABLE ONLY public.adres DROP CONSTRAINT mahalle_foreign;
       public          postgres    false    222    3303    230            	           2606    16661    sokak mahalle_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.sokak
    ADD CONSTRAINT mahalle_foreign FOREIGN KEY (mahalle_id) REFERENCES public.mahalle(mahalle_id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 ?   ALTER TABLE ONLY public.sokak DROP CONSTRAINT mahalle_foreign;
       public          postgres    false    3303    228    230                       2606    16592    adres sokak_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.adres
    ADD CONSTRAINT sokak_foreign FOREIGN KEY (sokak_id) REFERENCES public.sokak(sokak_id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 =   ALTER TABLE ONLY public.adres DROP CONSTRAINT sokak_foreign;
       public          postgres    false    222    3300    228                       2606    16586    adres ulke_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.adres
    ADD CONSTRAINT ulke_foreign FOREIGN KEY (ulke_id) REFERENCES public.ulke(ulke_id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 <   ALTER TABLE ONLY public.adres DROP CONSTRAINT ulke_foreign;
       public          postgres    false    222    3312    237                       2606    16604    bolge ulke_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.bolge
    ADD CONSTRAINT ulke_foreign FOREIGN KEY (ulke_id) REFERENCES public.ulke(ulke_id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 <   ALTER TABLE ONLY public.bolge DROP CONSTRAINT ulke_foreign;
       public          postgres    false    235    3312    237            �           2606    16711    fakulte universite_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.fakulte
    ADD CONSTRAINT universite_foreign FOREIGN KEY (universite_id) REFERENCES public.universite(universite_id) NOT VALID;
 D   ALTER TABLE ONLY public.fakulte DROP CONSTRAINT universite_foreign;
       public          postgres    false    244    217    3323            �      x�3�440������ 
~      �   /   x�3�t�-J����+��4�4�4�2�<��8��;1'��,���� ��
	      �      x�3�0������ [V      �   e   x�%���0��a� �]��5TH�N&��zf���ޘ]�A(&����[X�@��˰�+T�8��j��*6�����ơ�V����K�e������� w3      �   V   x�3�t�NI�ˬ�4�2�tMO�Ɯ��E��E�@�	���+8�%���L9��20-f�.�G�"ɛs�ޓ�Z��&���� 1�"3      �   �   x�e�;
�@���S�	�<����6+�:�d�x������^���%8��e�O]�y?8\e0YAB)j��o�fv����GAIN�:�>���_8oK�H)G���G�8̓��֗"�w�"�M��z����yGD_!�7�      �   T   x�3�t?��,5/'3�ˈ3$57�
�4���/�M�QH-*��K��2��=�'��".S�#���+��s��l����� A~�      �      x�3����� Z �      �      x�3����� h �      �      x�3����� Z �      �   l   x�3��=�'#5/%�8'3[�-1�𞜒��LNcNC.#�#rRK2����E�3�9�� ]Ԅӣ4�� S���#�s�l�Vp�����I-�DWc�,1#�2�]*F��� s�=�      �   �  x�=S�n�0</?��D�ᣃi`$�@�^ֶ����H?п�~�������R�#R���ِ�{vL��PM��+v�*M˗�v)C�i�ӉӲ�g�UBKW�g2*E�r�IFK��Í-{
E��ө��I�0�[�;[� ���o��hK�Hm�.;P�1�t~�yt��?S������2�͸�N"רp\��E�m��PZ�B��=�-�]LE��[�%Ҵ*y�N��������XP'� 	���^������R����k�7�������ČhAw�su9_��M�t@�E����!@�=���7o�[�Skz�}?Q��4-�mWB���
�#�Z��t�
��ډq:�M��Zcܢd���L0�����w��0p�<�Ѵ��[> !����� �6s-*^T!��M�s��)��C7��|w��*�=��qH�v���=��1G��Ķ8�g��M�z�ַ��S��~���#7B��M^X�g��VI@���V����v��'�hӹ�̝�D��7;���/������T'1}�s�$��^AeT�ҏڽv�w@�(�����﷝��i �4��&���N������˗��"ڂ�ȃ�H����0�H��W�a���sYe3�ln���ER����S��zj����l+��rv���"�����R���6�      �   �   x���
�0E��>FL�X���Q��IR|R�X�?��ܥ?��_��p�
G��aj���)�C�Ѳ[�{�G�����P�2��GFCZ��r�SxAW��!��&ON����;�PkX�~sZ��T
6I'�/tY�n,�      �   >  x��T�n7<?}{�)�%;��K K�ݨr�H	`��g�Y"�K��r���r*����%'�V��e�nmo�囙�yC6i �ՠ�63�5u$g���KU1m�h�-��(ŏ���p�)�#KV��V�T��_͝x��\����[���խ�>��XČ�1|Ϫ�m�]p�HvE�#�z�JQ�1]Vn���)�\���u�p��!�ԭW��ᠳF�I��m�b��c������$I�ې�RQ����I�J�nt��(��$�}�1��3.w%hJ���d`��+g�c��;���X��-�g�����ˀC���[ϡکW#1�6�zz3�A���>�F��b�-�U�i��ҧ0���o	]s���I���hN�B{U�Q�n���z	��sp�ጮQ��"��s��`j?P�^��@���!�9uŗi��	��V=��֕���2��c{���Cк۰.�x�h�2	j��^$5]��Y��j�9�׹�����\1bE���])��U�vtQk��P�8D��BC�\
u�"l���-��1��g��<���wL=7�]��4�	ܺ��N@Ym=��:C�,u��c��'F�����<�Z��>���H�9�]�v�/�;r��[�$q�g£Y��N�d�8����
����\2��>B~\��?��:��Z]:�ɚ�{׋� ���=�9՟0vDikAO|��^���AM��vZ�b��K���z	��U�}��T;z�>�'@�.�,����6OIP��p��B}LC���|�Po�M�.?S�y�{D߹�p|�����}�Lé��;/O�g���b_�����w�nU�      �   �   x��;
�@����H&��6A���<p�71$`�\FJ7�nȾ�S�^��(�"ș㢃�)Z8�a[K�j(Y���(/T�q��$�f�^��[��O���;��.�^�?6�O�	��#�@&�      �   �   x��=
�@���)<�8�SKQ!���V�8�@��T�ۙ��I9�x�<�J-u����)B�~rQ�[��%��P�mSH5��R��y��뱖W#	2ʰ��q��^���|�ubu��Z��>��{�O)�O ����3~�	���U5�8ψg8��N�8��Č�q�D^�<G��0k�3W�u5N�N����D       �      x�3����� h �      �   �   x��=
�0��}O�	��G�8Tp\>0�$Thɐ^���ݻ%�K�̏�༳�9��Y�,p�Q����jP�B�NA�g=�b�^R��z�ɸ�����q[а� ��S�e���ш��*�9nVO~��G�+2      �      x�3�9��(;�2�+F��� 1B�      �   %   x�3�N�N,�LT8<'/�,��8�$�8�+F��� ��	�      �   �   x�m�=
�@�z��@2��-E�D��%���)O���^�-7���xoG�>N�k|-�i���%!͚���ݳ\�a����bO�-���-9vt�C�_1�@�=�*��Zn��G��P�@���B�Q;�s��`��f�4�d�ˉb�,���0_LM|[�6��IH���T��$A���V�N �i��mP+�&�ի)���Y5�m��e��:     