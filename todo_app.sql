PGDMP         7                z            todo_app     14.5 (Ubuntu 14.5-1.pgdg20.04+1)     14.5 (Ubuntu 14.5-1.pgdg20.04+1)     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    25323    todo_app    DATABASE     ]   CREATE DATABASE todo_app WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE todo_app;
                postgres    false            �            1259    25339 	   todo_list    TABLE     �   CREATE TABLE public.todo_list (
    id integer NOT NULL,
    name character varying,
    description character varying,
    priority integer,
    status integer
);
    DROP TABLE public.todo_list;
       public         heap    postgres    false            �            1259    25338    todo_list_id_seq    SEQUENCE     �   CREATE SEQUENCE public.todo_list_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.todo_list_id_seq;
       public          postgres    false    210            �           0    0    todo_list_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.todo_list_id_seq OWNED BY public.todo_list.id;
          public          postgres    false    209            d           2604    25342    todo_list id    DEFAULT     l   ALTER TABLE ONLY public.todo_list ALTER COLUMN id SET DEFAULT nextval('public.todo_list_id_seq'::regclass);
 ;   ALTER TABLE public.todo_list ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    209    210            �          0    25339 	   todo_list 
   TABLE DATA           L   COPY public.todo_list (id, name, description, priority, status) FROM stdin;
    public          postgres    false    210   �
       �           0    0    todo_list_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.todo_list_id_seq', 6, true);
          public          postgres    false    209            f           2606    25346    todo_list todo_list_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.todo_list
    ADD CONSTRAINT todo_list_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.todo_list DROP CONSTRAINT todo_list_pkey;
       public            postgres    false    210            �   ?   x�3�,I-.Q(�Oɇ�RR���2J2��8�8�L
�0T  ��!�c(1�4 *����� �/"     