PGDMP             
        
    z            asistencia_admin    15.1    15.1 N    T           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            U           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            V           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            W           1262    16398    asistencia_admin    DATABASE     ?   CREATE DATABASE asistencia_admin WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Ecuador.1252';
     DROP DATABASE asistencia_admin;
                postgres    false            ?            1259    16832    actividad_dias_festivos    TABLE     ?   CREATE TABLE public.actividad_dias_festivos (
    id integer NOT NULL,
    actividad_id integer,
    dias_festivos_id integer
);
 +   DROP TABLE public.actividad_dias_festivos;
       public         heap    postgres    false            ?            1259    16831    actividad_dias_festivos_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.actividad_dias_festivos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.actividad_dias_festivos_id_seq;
       public          postgres    false    229            X           0    0    actividad_dias_festivos_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.actividad_dias_festivos_id_seq OWNED BY public.actividad_dias_festivos.id;
          public          postgres    false    228            ?            1259    16759    actividades    TABLE       CREATE TABLE public.actividades (
    actividad_id integer NOT NULL,
    nombre character varying,
    categoria character varying,
    created timestamp without time zone,
    updated timestamp without time zone,
    enabled boolean,
    archivate boolean,
    categoria_id integer
);
    DROP TABLE public.actividades;
       public         heap    postgres    false            ?            1259    16758    actividades_actividad_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.actividades_actividad_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.actividades_actividad_id_seq;
       public          postgres    false    215            Y           0    0    actividades_actividad_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.actividades_actividad_id_seq OWNED BY public.actividades.actividad_id;
          public          postgres    false    214            ?            1259    16768    categoria_actividad    TABLE     s  CREATE TABLE public.categoria_actividad (
    categoria_actividad_id integer NOT NULL,
    nombre character varying(200),
    secuencia integer NOT NULL,
    color character varying(200),
    created timestamp without time zone NOT NULL,
    updated timestamp without time zone NOT NULL,
    enabled boolean NOT NULL,
    archived boolean NOT NULL,
    rol_id integer
);
 '   DROP TABLE public.categoria_actividad;
       public         heap    postgres    false            ?            1259    16767 .   categoria_actividad_categoria_actividad_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.categoria_actividad_categoria_actividad_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 E   DROP SEQUENCE public.categoria_actividad_categoria_actividad_id_seq;
       public          postgres    false    217            Z           0    0 .   categoria_actividad_categoria_actividad_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.categoria_actividad_categoria_actividad_id_seq OWNED BY public.categoria_actividad.categoria_actividad_id;
          public          postgres    false    216            ?            1259    16847    categoria_actividades    TABLE     {   CREATE TABLE public.categoria_actividades (
    id integer NOT NULL,
    categoria_id integer,
    actividad_id integer
);
 )   DROP TABLE public.categoria_actividades;
       public         heap    postgres    false            ?            1259    16846    categoria_actividades_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.categoria_actividades_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.categoria_actividades_id_seq;
       public          postgres    false    231            [           0    0    categoria_actividades_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.categoria_actividades_id_seq OWNED BY public.categoria_actividades.id;
          public          postgres    false    230            ?            1259    16775    dias_festivos    TABLE     $  CREATE TABLE public.dias_festivos (
    id_dia_festivo integer NOT NULL,
    nombre_dia_festivo character varying,
    fecha_dia_festivo date,
    created timestamp without time zone,
    updated timestamp without time zone,
    archived boolean,
    enabled boolean,
    fk_roles integer
);
 !   DROP TABLE public.dias_festivos;
       public         heap    postgres    false            ?            1259    16798    dias_festivos_categorias    TABLE     ?   CREATE TABLE public.dias_festivos_categorias (
    id integer NOT NULL,
    dia_festivo_id integer,
    categoria_id integer
);
 ,   DROP TABLE public.dias_festivos_categorias;
       public         heap    postgres    false            ?            1259    16797    dias_festivos_categorias_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.dias_festivos_categorias_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.dias_festivos_categorias_id_seq;
       public          postgres    false    225            \           0    0    dias_festivos_categorias_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.dias_festivos_categorias_id_seq OWNED BY public.dias_festivos_categorias.id;
          public          postgres    false    224            ?            1259    16774     dias_festivos_id_dia_festivo_seq    SEQUENCE     ?   CREATE SEQUENCE public.dias_festivos_id_dia_festivo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.dias_festivos_id_dia_festivo_seq;
       public          postgres    false    219            ]           0    0     dias_festivos_id_dia_festivo_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.dias_festivos_id_dia_festivo_seq OWNED BY public.dias_festivos.id_dia_festivo;
          public          postgres    false    218            ?            1259    16784    estudiantes    TABLE     ?   CREATE TABLE public.estudiantes (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    lastname character varying(50) NOT NULL,
    enabled boolean NOT NULL,
    phone character varying(10),
    birthday date
);
    DROP TABLE public.estudiantes;
       public         heap    postgres    false            ?            1259    16783    personas_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.personas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.personas_id_seq;
       public          postgres    false    221            ^           0    0    personas_id_seq    SEQUENCE OWNED BY     F   ALTER SEQUENCE public.personas_id_seq OWNED BY public.estudiantes.id;
          public          postgres    false    220            ?            1259    16815 
   rol_person    TABLE     g   CREATE TABLE public.rol_person (
    id integer NOT NULL,
    rol_id integer,
    person_id integer
);
    DROP TABLE public.rol_person;
       public         heap    postgres    false            ?            1259    16814    rol_person_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.rol_person_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.rol_person_id_seq;
       public          postgres    false    227            _           0    0    rol_person_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.rol_person_id_seq OWNED BY public.rol_person.id;
          public          postgres    false    226            ?            1259    16791    roles    TABLE     F  CREATE TABLE public.roles (
    rol_id integer NOT NULL,
    nombre character varying(50) NOT NULL,
    admin boolean NOT NULL,
    created timestamp without time zone NOT NULL,
    updated timestamp without time zone NOT NULL,
    enable boolean NOT NULL,
    archived boolean NOT NULL,
    categoria_actividad_id integer
);
    DROP TABLE public.roles;
       public         heap    postgres    false            ?            1259    16790    roles_rol_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.roles_rol_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.roles_rol_id_seq;
       public          postgres    false    223            `           0    0    roles_rol_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.roles_rol_id_seq OWNED BY public.roles.rol_id;
          public          postgres    false    222            ?           2604    16835    actividad_dias_festivos id    DEFAULT     ?   ALTER TABLE ONLY public.actividad_dias_festivos ALTER COLUMN id SET DEFAULT nextval('public.actividad_dias_festivos_id_seq'::regclass);
 I   ALTER TABLE public.actividad_dias_festivos ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    228    229            ?           2604    16762    actividades actividad_id    DEFAULT     ?   ALTER TABLE ONLY public.actividades ALTER COLUMN actividad_id SET DEFAULT nextval('public.actividades_actividad_id_seq'::regclass);
 G   ALTER TABLE public.actividades ALTER COLUMN actividad_id DROP DEFAULT;
       public          postgres    false    215    214    215            ?           2604    16771 *   categoria_actividad categoria_actividad_id    DEFAULT     ?   ALTER TABLE ONLY public.categoria_actividad ALTER COLUMN categoria_actividad_id SET DEFAULT nextval('public.categoria_actividad_categoria_actividad_id_seq'::regclass);
 Y   ALTER TABLE public.categoria_actividad ALTER COLUMN categoria_actividad_id DROP DEFAULT;
       public          postgres    false    217    216    217            ?           2604    16850    categoria_actividades id    DEFAULT     ?   ALTER TABLE ONLY public.categoria_actividades ALTER COLUMN id SET DEFAULT nextval('public.categoria_actividades_id_seq'::regclass);
 G   ALTER TABLE public.categoria_actividades ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    231    231            ?           2604    16778    dias_festivos id_dia_festivo    DEFAULT     ?   ALTER TABLE ONLY public.dias_festivos ALTER COLUMN id_dia_festivo SET DEFAULT nextval('public.dias_festivos_id_dia_festivo_seq'::regclass);
 K   ALTER TABLE public.dias_festivos ALTER COLUMN id_dia_festivo DROP DEFAULT;
       public          postgres    false    219    218    219            ?           2604    16801    dias_festivos_categorias id    DEFAULT     ?   ALTER TABLE ONLY public.dias_festivos_categorias ALTER COLUMN id SET DEFAULT nextval('public.dias_festivos_categorias_id_seq'::regclass);
 J   ALTER TABLE public.dias_festivos_categorias ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    224    225            ?           2604    16787    estudiantes id    DEFAULT     m   ALTER TABLE ONLY public.estudiantes ALTER COLUMN id SET DEFAULT nextval('public.personas_id_seq'::regclass);
 =   ALTER TABLE public.estudiantes ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220    221            ?           2604    16818    rol_person id    DEFAULT     n   ALTER TABLE ONLY public.rol_person ALTER COLUMN id SET DEFAULT nextval('public.rol_person_id_seq'::regclass);
 <   ALTER TABLE public.rol_person ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    227    227            ?           2604    16794    roles rol_id    DEFAULT     l   ALTER TABLE ONLY public.roles ALTER COLUMN rol_id SET DEFAULT nextval('public.roles_rol_id_seq'::regclass);
 ;   ALTER TABLE public.roles ALTER COLUMN rol_id DROP DEFAULT;
       public          postgres    false    222    223    223            O          0    16832    actividad_dias_festivos 
   TABLE DATA           U   COPY public.actividad_dias_festivos (id, actividad_id, dias_festivos_id) FROM stdin;
    public          postgres    false    229   ?b       A          0    16759    actividades 
   TABLE DATA           z   COPY public.actividades (actividad_id, nombre, categoria, created, updated, enabled, archivate, categoria_id) FROM stdin;
    public          postgres    false    215   ?b       C          0    16768    categoria_actividad 
   TABLE DATA           ?   COPY public.categoria_actividad (categoria_actividad_id, nombre, secuencia, color, created, updated, enabled, archived, rol_id) FROM stdin;
    public          postgres    false    217   c       Q          0    16847    categoria_actividades 
   TABLE DATA           O   COPY public.categoria_actividades (id, categoria_id, actividad_id) FROM stdin;
    public          postgres    false    231   5c       E          0    16775    dias_festivos 
   TABLE DATA           ?   COPY public.dias_festivos (id_dia_festivo, nombre_dia_festivo, fecha_dia_festivo, created, updated, archived, enabled, fk_roles) FROM stdin;
    public          postgres    false    219   Rc       K          0    16798    dias_festivos_categorias 
   TABLE DATA           T   COPY public.dias_festivos_categorias (id, dia_festivo_id, categoria_id) FROM stdin;
    public          postgres    false    225   oc       G          0    16784    estudiantes 
   TABLE DATA           S   COPY public.estudiantes (id, name, lastname, enabled, phone, birthday) FROM stdin;
    public          postgres    false    221   ?c       M          0    16815 
   rol_person 
   TABLE DATA           ;   COPY public.rol_person (id, rol_id, person_id) FROM stdin;
    public          postgres    false    227   ?c       I          0    16791    roles 
   TABLE DATA           r   COPY public.roles (rol_id, nombre, admin, created, updated, enable, archived, categoria_actividad_id) FROM stdin;
    public          postgres    false    223   ?c       a           0    0    actividad_dias_festivos_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.actividad_dias_festivos_id_seq', 1, false);
          public          postgres    false    228            b           0    0    actividades_actividad_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.actividades_actividad_id_seq', 1, false);
          public          postgres    false    214            c           0    0 .   categoria_actividad_categoria_actividad_id_seq    SEQUENCE SET     ]   SELECT pg_catalog.setval('public.categoria_actividad_categoria_actividad_id_seq', 1, false);
          public          postgres    false    216            d           0    0    categoria_actividades_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.categoria_actividades_id_seq', 1, false);
          public          postgres    false    230            e           0    0    dias_festivos_categorias_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.dias_festivos_categorias_id_seq', 1, false);
          public          postgres    false    224            f           0    0     dias_festivos_id_dia_festivo_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.dias_festivos_id_dia_festivo_seq', 1, false);
          public          postgres    false    218            g           0    0    personas_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.personas_id_seq', 2, true);
          public          postgres    false    220            h           0    0    rol_person_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.rol_person_id_seq', 1, false);
          public          postgres    false    226            i           0    0    roles_rol_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.roles_rol_id_seq', 1, false);
          public          postgres    false    222            ?           2606    16766    actividades actividades_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.actividades
    ADD CONSTRAINT actividades_pkey PRIMARY KEY (actividad_id);
 F   ALTER TABLE ONLY public.actividades DROP CONSTRAINT actividades_pkey;
       public            postgres    false    215            ?           2606    16773 ,   categoria_actividad categoria_actividad_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.categoria_actividad
    ADD CONSTRAINT categoria_actividad_pkey PRIMARY KEY (categoria_actividad_id);
 V   ALTER TABLE ONLY public.categoria_actividad DROP CONSTRAINT categoria_actividad_pkey;
       public            postgres    false    217            ?           2606    16852 0   categoria_actividades categoria_actividades_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.categoria_actividades
    ADD CONSTRAINT categoria_actividades_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.categoria_actividades DROP CONSTRAINT categoria_actividades_pkey;
       public            postgres    false    231            ?           2606    16803 6   dias_festivos_categorias dias_festivos_categorias_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.dias_festivos_categorias
    ADD CONSTRAINT dias_festivos_categorias_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.dias_festivos_categorias DROP CONSTRAINT dias_festivos_categorias_pkey;
       public            postgres    false    225            ?           2606    16782     dias_festivos dias_festivos_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.dias_festivos
    ADD CONSTRAINT dias_festivos_pkey PRIMARY KEY (id_dia_festivo);
 J   ALTER TABLE ONLY public.dias_festivos DROP CONSTRAINT dias_festivos_pkey;
       public            postgres    false    219            ?           2606    16789    estudiantes personas_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.estudiantes
    ADD CONSTRAINT personas_pkey PRIMARY KEY (id);
 C   ALTER TABLE ONLY public.estudiantes DROP CONSTRAINT personas_pkey;
       public            postgres    false    221            ?           2606    16796    roles rol_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT rol_pkey PRIMARY KEY (rol_id);
 8   ALTER TABLE ONLY public.roles DROP CONSTRAINT rol_pkey;
       public            postgres    false    223            ?           2606    16820    rol_person role_person_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.rol_person
    ADD CONSTRAINT role_person_pkey PRIMARY KEY (id);
 E   ALTER TABLE ONLY public.rol_person DROP CONSTRAINT role_person_pkey;
       public            postgres    false    227            ?           2606    16853 "   categoria_actividades fk_actividad    FK CONSTRAINT     ?   ALTER TABLE ONLY public.categoria_actividades
    ADD CONSTRAINT fk_actividad FOREIGN KEY (actividad_id) REFERENCES public.actividades(actividad_id);
 L   ALTER TABLE ONLY public.categoria_actividades DROP CONSTRAINT fk_actividad;
       public          postgres    false    3223    231    215            ?           2606    16836 &   actividad_dias_festivos fk_actividades    FK CONSTRAINT     ?   ALTER TABLE ONLY public.actividad_dias_festivos
    ADD CONSTRAINT fk_actividades FOREIGN KEY (actividad_id) REFERENCES public.actividades(actividad_id);
 P   ALTER TABLE ONLY public.actividad_dias_festivos DROP CONSTRAINT fk_actividades;
       public          postgres    false    229    215    3223            ?           2606    16873 $   actividades fk_actividades_categoria    FK CONSTRAINT     ?   ALTER TABLE ONLY public.actividades
    ADD CONSTRAINT fk_actividades_categoria FOREIGN KEY (categoria_id) REFERENCES public.categoria_actividad(categoria_actividad_id);
 N   ALTER TABLE ONLY public.actividades DROP CONSTRAINT fk_actividades_categoria;
       public          postgres    false    217    215    3225            ?           2606    16858 "   categoria_actividades fk_categoria    FK CONSTRAINT     ?   ALTER TABLE ONLY public.categoria_actividades
    ADD CONSTRAINT fk_categoria FOREIGN KEY (categoria_id) REFERENCES public.categoria_actividad(categoria_actividad_id);
 L   ALTER TABLE ONLY public.categoria_actividades DROP CONSTRAINT fk_categoria;
       public          postgres    false    217    3225    231            ?           2606    16883    roles fk_categoria_actividad_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT fk_categoria_actividad_id FOREIGN KEY (categoria_actividad_id) REFERENCES public.categoria_actividad(categoria_actividad_id);
 I   ALTER TABLE ONLY public.roles DROP CONSTRAINT fk_categoria_actividad_id;
       public          postgres    false    3225    223    217            ?           2606    16804 &   dias_festivos_categorias fk_categorias    FK CONSTRAINT     ?   ALTER TABLE ONLY public.dias_festivos_categorias
    ADD CONSTRAINT fk_categorias FOREIGN KEY (categoria_id) REFERENCES public.categoria_actividad(categoria_actividad_id);
 P   ALTER TABLE ONLY public.dias_festivos_categorias DROP CONSTRAINT fk_categorias;
       public          postgres    false    217    3225    225            ?           2606    16841 (   actividad_dias_festivos fk_dias_feriados    FK CONSTRAINT     ?   ALTER TABLE ONLY public.actividad_dias_festivos
    ADD CONSTRAINT fk_dias_feriados FOREIGN KEY (dias_festivos_id) REFERENCES public.dias_festivos(id_dia_festivo);
 R   ALTER TABLE ONLY public.actividad_dias_festivos DROP CONSTRAINT fk_dias_feriados;
       public          postgres    false    229    219    3227            ?           2606    16809 )   dias_festivos_categorias fk_dias_festivos    FK CONSTRAINT     ?   ALTER TABLE ONLY public.dias_festivos_categorias
    ADD CONSTRAINT fk_dias_festivos FOREIGN KEY (dia_festivo_id) REFERENCES public.dias_festivos(id_dia_festivo);
 S   ALTER TABLE ONLY public.dias_festivos_categorias DROP CONSTRAINT fk_dias_festivos;
       public          postgres    false    225    219    3227            ?           2606    16821    rol_person fk_person_id    FK CONSTRAINT     ~   ALTER TABLE ONLY public.rol_person
    ADD CONSTRAINT fk_person_id FOREIGN KEY (person_id) REFERENCES public.estudiantes(id);
 A   ALTER TABLE ONLY public.rol_person DROP CONSTRAINT fk_person_id;
       public          postgres    false    227    3229    221            ?           2606    16878    categoria_actividad fk_rol    FK CONSTRAINT     |   ALTER TABLE ONLY public.categoria_actividad
    ADD CONSTRAINT fk_rol FOREIGN KEY (rol_id) REFERENCES public.roles(rol_id);
 D   ALTER TABLE ONLY public.categoria_actividad DROP CONSTRAINT fk_rol;
       public          postgres    false    3231    223    217            ?           2606    16826    rol_person fk_rol_id    FK CONSTRAINT     v   ALTER TABLE ONLY public.rol_person
    ADD CONSTRAINT fk_rol_id FOREIGN KEY (rol_id) REFERENCES public.roles(rol_id);
 >   ALTER TABLE ONLY public.rol_person DROP CONSTRAINT fk_rol_id;
       public          postgres    false    3231    227    223            ?           2606    16888    dias_festivos fk_roles_id    FK CONSTRAINT     }   ALTER TABLE ONLY public.dias_festivos
    ADD CONSTRAINT fk_roles_id FOREIGN KEY (fk_roles) REFERENCES public.roles(rol_id);
 C   ALTER TABLE ONLY public.dias_festivos DROP CONSTRAINT fk_roles_id;
       public          postgres    false    223    219    3231            O      x?????? ? ?      A      x?????? ? ?      C      x?????? ? ?      Q      x?????? ? ?      E      x?????? ? ?      K      x?????? ? ?      G   C   x?3?L?L?,?4426153??4?4200?5??50?2??OJ-*???O*JM???L???"?=... ??	      M      x?????? ? ?      I      x?????? ? ?     