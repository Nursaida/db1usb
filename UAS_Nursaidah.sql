PGDMP                          z            retaill    15.1    15.1                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16459    retaill    DATABASE     ~   CREATE DATABASE retaill WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_Indonesia.1252';
    DROP DATABASE retaill;
                postgres    false            ?            1259    16465    barang    TABLE     ?   CREATE TABLE public.barang (
    id_barang integer NOT NULL,
    nama_barang character varying(30) NOT NULL,
    harga_barang integer,
    stok_barang integer,
    id_supplier integer
);
    DROP TABLE public.barang;
       public         heap    postgres    false            ?            1259    16480 
   pembayaran    TABLE     ?   CREATE TABLE public.pembayaran (
    id_pembayaran integer NOT NULL,
    tanggal_bayar date,
    total_bayar integer,
    id_transaksi integer
);
    DROP TABLE public.pembayaran;
       public         heap    postgres    false            ?            1259    16470    pembeli    TABLE     ?   CREATE TABLE public.pembeli (
    id_pembeli integer NOT NULL,
    nama_pembeli character varying(30) NOT NULL,
    jenis_kelamin character(1),
    no_tlpn character(15),
    alamat character varying(15)
);
    DROP TABLE public.pembeli;
       public         heap    postgres    false            ?            1259    16460    supllier    TABLE     ?   CREATE TABLE public.supllier (
    id_supplier integer NOT NULL,
    nama_supplier character varying(30) NOT NULL,
    nomor_telepon character(15),
    alamat character varying(100)
);
    DROP TABLE public.supllier;
       public         heap    postgres    false            ?            1259    16475 	   transaksi    TABLE     ?   CREATE TABLE public.transaksi (
    id_transaksi integer NOT NULL,
    id_barang integer,
    id_pembeli integer,
    tanggal date,
    keterangan character varying(100)
);
    DROP TABLE public.transaksi;
       public         heap    postgres    false                      0    16465    barang 
   TABLE DATA           `   COPY public.barang (id_barang, nama_barang, harga_barang, stok_barang, id_supplier) FROM stdin;
    public          postgres    false    215   ?                 0    16480 
   pembayaran 
   TABLE DATA           ]   COPY public.pembayaran (id_pembayaran, tanggal_bayar, total_bayar, id_transaksi) FROM stdin;
    public          postgres    false    218   ?                 0    16470    pembeli 
   TABLE DATA           [   COPY public.pembeli (id_pembeli, nama_pembeli, jenis_kelamin, no_tlpn, alamat) FROM stdin;
    public          postgres    false    216   ?                 0    16460    supllier 
   TABLE DATA           U   COPY public.supllier (id_supplier, nama_supplier, nomor_telepon, alamat) FROM stdin;
    public          postgres    false    214   g                 0    16475 	   transaksi 
   TABLE DATA           ]   COPY public.transaksi (id_transaksi, id_barang, id_pembeli, tanggal, keterangan) FROM stdin;
    public          postgres    false    217   ?        w           2606    16469    barang barang_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.barang
    ADD CONSTRAINT barang_pkey PRIMARY KEY (id_barang);
 <   ALTER TABLE ONLY public.barang DROP CONSTRAINT barang_pkey;
       public            postgres    false    215            }           2606    16484    pembayaran pembayaran_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.pembayaran
    ADD CONSTRAINT pembayaran_pkey PRIMARY KEY (id_pembayaran);
 D   ALTER TABLE ONLY public.pembayaran DROP CONSTRAINT pembayaran_pkey;
       public            postgres    false    218            y           2606    16474    pembeli pembeli_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.pembeli
    ADD CONSTRAINT pembeli_pkey PRIMARY KEY (id_pembeli);
 >   ALTER TABLE ONLY public.pembeli DROP CONSTRAINT pembeli_pkey;
       public            postgres    false    216            u           2606    16464    supllier supllier_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.supllier
    ADD CONSTRAINT supllier_pkey PRIMARY KEY (id_supplier);
 @   ALTER TABLE ONLY public.supllier DROP CONSTRAINT supllier_pkey;
       public            postgres    false    214            {           2606    16479    transaksi transaksi_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.transaksi
    ADD CONSTRAINT transaksi_pkey PRIMARY KEY (id_transaksi);
 B   ALTER TABLE ONLY public.transaksi DROP CONSTRAINT transaksi_pkey;
       public            postgres    false    217            ~           2606    16485    barang fk_barang_transaksi    FK CONSTRAINT     ?   ALTER TABLE ONLY public.barang
    ADD CONSTRAINT fk_barang_transaksi FOREIGN KEY (id_supplier) REFERENCES public.supllier(id_supplier) ON DELETE CASCADE;
 D   ALTER TABLE ONLY public.barang DROP CONSTRAINT fk_barang_transaksi;
       public          postgres    false    214    3189    215            ?           2606    16495    transaksi fk_barang_transaksi    FK CONSTRAINT     ?   ALTER TABLE ONLY public.transaksi
    ADD CONSTRAINT fk_barang_transaksi FOREIGN KEY (id_barang) REFERENCES public.barang(id_barang) ON DELETE CASCADE;
 G   ALTER TABLE ONLY public.transaksi DROP CONSTRAINT fk_barang_transaksi;
       public          postgres    false    3191    215    217            ?           2606    16500    transaksi fk_pembeli_transaksi    FK CONSTRAINT     ?   ALTER TABLE ONLY public.transaksi
    ADD CONSTRAINT fk_pembeli_transaksi FOREIGN KEY (id_pembeli) REFERENCES public.pembeli(id_pembeli) ON DELETE CASCADE;
 H   ALTER TABLE ONLY public.transaksi DROP CONSTRAINT fk_pembeli_transaksi;
       public          postgres    false    3193    217    216                       2606    16490    barang fk_supplier_barang    FK CONSTRAINT     ?   ALTER TABLE ONLY public.barang
    ADD CONSTRAINT fk_supplier_barang FOREIGN KEY (id_supplier) REFERENCES public.supllier(id_supplier) ON DELETE CASCADE;
 C   ALTER TABLE ONLY public.barang DROP CONSTRAINT fk_supplier_barang;
       public          postgres    false    214    3189    215            ?           2606    16505 "   pembayaran fk_transaksi_pembayaran    FK CONSTRAINT     ?   ALTER TABLE ONLY public.pembayaran
    ADD CONSTRAINT fk_transaksi_pembayaran FOREIGN KEY (id_transaksi) REFERENCES public.transaksi(id_transaksi) ON DELETE CASCADE;
 L   ALTER TABLE ONLY public.pembayaran DROP CONSTRAINT fk_transaksi_pembayaran;
       public          postgres    false    3195    217    218               ?   x?-бn?0?z?|A?5C"??N?t?iX:rN???Kh??1Zp??g??(??Em??'????cl?h????x??8g\??!?0	rBA???-ے}?u?=P??h?%.~~??x??????T?6ܲ6L~?9????B????}B~?ibE???ޥ?8O??h|?>?/]B$?(?y?	L?!?1?m?م?????m^??@?6"?B??{?ǝ"qa'b?.3/9bs?~ޔR??XVd         ?   x?E???0Cѳ?K
Ѷlg???G?Xoށ???]??6??????zA'??Y0)H[I??i?`?`?狰?6???=/p??? ??s?*??,??9????P?3?*??v ??q??U??           x?e??N?0????<?i)?ǽ?Aݐ?ċ?Ѣ?)]4F??iaIw?F?/??S%$?ݘvH?Q?M]?E?2??)<?qVc?D?κ?4WD??,??#???#ž??9????s~??z۳*?'|?y?W^?Z?ĞbY????????
:???T^?U??Ly?z29???????:?:N,x?QӀ?L)???ф?p??c??{?j???????????tʉ?u=???d??????ʹG3??Ñw?2r;՝??S?h4aN?8^.????? V???y??M?$????         0  x?]??j?0??>E^?%???? ????N'XGM$F߾7?8:?????^F?W???
P??׹??,M?(X?SB?WB?w??h??,??p?5??Ѡ??f?Zr???6?Y*n?2r???????w.8?ظ??0?39+9n8]q(mR??@ρԲ?;?^pjp???? ?#?-?̰s??m';R?0?͌r?R?(???)??'??깶??j???rʉ|????0}	?`?@??{?nE3y4=?
3??U[?鿺hKp???-?|Hy?ht?5???
̒?]ɉwuv?<??@???}????         ?   x?EлAQ???]??7$"???!Q?е1?U????Kp?{#6??????_?R?8V4?aM?DӚ??Z?j?????fm????n???:?a??:?i??ź?e]?j????W??҈K???J4?Rn%????[ɭD#.?Vr+шK???V?[)??>X?     