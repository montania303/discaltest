PGDMP                     
    y        
   discaltest    12.8    12.8 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                        0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16520 
   discaltest    DATABASE     �   CREATE DATABASE discaltest WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Paraguay.1252' LC_CTYPE = 'Spanish_Paraguay.1252';
    DROP DATABASE discaltest;
                postgres    false            �            1259    16552 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            �            1259    16550    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    209                       0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    208            �            1259    16562    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            �            1259    16560    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    211                       0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    210            �            1259    16544    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            �            1259    16542    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    207                       0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    206            �            1259    16783    authtoken_token    TABLE     �   CREATE TABLE public.authtoken_token (
    key character varying(40) NOT NULL,
    created timestamp with time zone NOT NULL,
    user_id integer NOT NULL
);
 #   DROP TABLE public.authtoken_token;
       public         heap    postgres    false            �            1259    16622    discaltest_api_alumnos    TABLE     l   CREATE TABLE public.discaltest_api_alumnos (
    id integer NOT NULL,
    id_entidad_id integer NOT NULL
);
 *   DROP TABLE public.discaltest_api_alumnos;
       public         heap    postgres    false            �            1259    16620    discaltest_api_alumnos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.discaltest_api_alumnos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.discaltest_api_alumnos_id_seq;
       public          postgres    false    219                       0    0    discaltest_api_alumnos_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.discaltest_api_alumnos_id_seq OWNED BY public.discaltest_api_alumnos.id;
          public          postgres    false    218            �            1259    16670    discaltest_api_aluprofe    TABLE     �   CREATE TABLE public.discaltest_api_aluprofe (
    id integer NOT NULL,
    id_alumno_id integer NOT NULL,
    id_profesor_id integer NOT NULL
);
 +   DROP TABLE public.discaltest_api_aluprofe;
       public         heap    postgres    false            �            1259    16668    discaltest_api_aluprofe_id_seq    SEQUENCE     �   CREATE SEQUENCE public.discaltest_api_aluprofe_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.discaltest_api_aluprofe_id_seq;
       public          postgres    false    225                       0    0    discaltest_api_aluprofe_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.discaltest_api_aluprofe_id_seq OWNED BY public.discaltest_api_aluprofe.id;
          public          postgres    false    224            �            1259    25169    discaltest_api_area    TABLE     �   CREATE TABLE public.discaltest_api_area (
    id integer NOT NULL,
    descripcion character varying(120) NOT NULL,
    "pEsperado" integer NOT NULL
);
 '   DROP TABLE public.discaltest_api_area;
       public         heap    postgres    false            �            1259    25167    discaltest_api_area_id_seq    SEQUENCE     �   CREATE SEQUENCE public.discaltest_api_area_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.discaltest_api_area_id_seq;
       public          postgres    false    231                       0    0    discaltest_api_area_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.discaltest_api_area_id_seq OWNED BY public.discaltest_api_area.id;
          public          postgres    false    230            �            1259    16630    discaltest_api_entidad    TABLE     x  CREATE TABLE public.discaltest_api_entidad (
    id integer NOT NULL,
    tipo_entidad character varying(2) NOT NULL,
    nombre character varying(60) NOT NULL,
    apellido character varying(60) NOT NULL,
    telefono character varying(20) NOT NULL,
    direccion character varying(20) NOT NULL,
    id_usuario_id integer,
    nro_documento character varying(60) NOT NULL
);
 *   DROP TABLE public.discaltest_api_entidad;
       public         heap    postgres    false            �            1259    16628    discaltest_api_entidad_id_seq    SEQUENCE     �   CREATE SEQUENCE public.discaltest_api_entidad_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.discaltest_api_entidad_id_seq;
       public          postgres    false    221                       0    0    discaltest_api_entidad_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.discaltest_api_entidad_id_seq OWNED BY public.discaltest_api_entidad.id;
          public          postgres    false    220            �            1259    16638    discaltest_api_profesor    TABLE     �   CREATE TABLE public.discaltest_api_profesor (
    id integer NOT NULL,
    id_entidad_id integer NOT NULL,
    curso integer NOT NULL
);
 +   DROP TABLE public.discaltest_api_profesor;
       public         heap    postgres    false            �            1259    16636    discaltest_api_profesor_id_seq    SEQUENCE     �   CREATE SEQUENCE public.discaltest_api_profesor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.discaltest_api_profesor_id_seq;
       public          postgres    false    223            	           0    0    discaltest_api_profesor_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.discaltest_api_profesor_id_seq OWNED BY public.discaltest_api_profesor.id;
          public          postgres    false    222            �            1259    25445    discaltest_api_resultadoitem    TABLE     	  CREATE TABLE public.discaltest_api_resultadoitem (
    id integer NOT NULL,
    "pObtenido" integer NOT NULL,
    indicador character varying(1),
    observacion character varying(500),
    id_area_id integer NOT NULL,
    "id_resultadoTest_id" integer NOT NULL
);
 0   DROP TABLE public.discaltest_api_resultadoitem;
       public         heap    postgres    false            �            1259    25443 #   discaltest_api_resultadoitem_id_seq    SEQUENCE     �   CREATE SEQUENCE public.discaltest_api_resultadoitem_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.discaltest_api_resultadoitem_id_seq;
       public          postgres    false    235            
           0    0 #   discaltest_api_resultadoitem_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.discaltest_api_resultadoitem_id_seq OWNED BY public.discaltest_api_resultadoitem.id;
          public          postgres    false    234            �            1259    25279    discaltest_api_resultadotest    TABLE     �   CREATE TABLE public.discaltest_api_resultadotest (
    id integer NOT NULL,
    indicador character varying(1),
    observacion character varying(250),
    id_alumno_id integer NOT NULL,
    id_profesor_id integer NOT NULL
);
 0   DROP TABLE public.discaltest_api_resultadotest;
       public         heap    postgres    false            �            1259    25277 #   discaltest_api_resultadotest_id_seq    SEQUENCE     �   CREATE SEQUENCE public.discaltest_api_resultadotest_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.discaltest_api_resultadotest_id_seq;
       public          postgres    false    233                       0    0 #   discaltest_api_resultadotest_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.discaltest_api_resultadotest_id_seq OWNED BY public.discaltest_api_resultadotest.id;
          public          postgres    false    232            �            1259    16596    discaltest_api_userprofile    TABLE       CREATE TABLE public.discaltest_api_userprofile (
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    id integer NOT NULL,
    loggin character varying(255) NOT NULL,
    is_active boolean NOT NULL
);
 .   DROP TABLE public.discaltest_api_userprofile;
       public         heap    postgres    false            �            1259    16606 !   discaltest_api_userprofile_groups    TABLE     �   CREATE TABLE public.discaltest_api_userprofile_groups (
    id bigint NOT NULL,
    userprofile_id integer NOT NULL,
    group_id integer NOT NULL
);
 5   DROP TABLE public.discaltest_api_userprofile_groups;
       public         heap    postgres    false            �            1259    16604 (   discaltest_api_userprofile_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.discaltest_api_userprofile_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public.discaltest_api_userprofile_groups_id_seq;
       public          postgres    false    215                       0    0 (   discaltest_api_userprofile_groups_id_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE public.discaltest_api_userprofile_groups_id_seq OWNED BY public.discaltest_api_userprofile_groups.id;
          public          postgres    false    214            �            1259    16594 !   discaltest_api_userprofile_id_seq    SEQUENCE     �   CREATE SEQUENCE public.discaltest_api_userprofile_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.discaltest_api_userprofile_id_seq;
       public          postgres    false    213                       0    0 !   discaltest_api_userprofile_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.discaltest_api_userprofile_id_seq OWNED BY public.discaltest_api_userprofile.id;
          public          postgres    false    212            �            1259    16614 +   discaltest_api_userprofile_user_permissions    TABLE     �   CREATE TABLE public.discaltest_api_userprofile_user_permissions (
    id bigint NOT NULL,
    userprofile_id integer NOT NULL,
    permission_id integer NOT NULL
);
 ?   DROP TABLE public.discaltest_api_userprofile_user_permissions;
       public         heap    postgres    false            �            1259    16612 2   discaltest_api_userprofile_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.discaltest_api_userprofile_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 I   DROP SEQUENCE public.discaltest_api_userprofile_user_permissions_id_seq;
       public          postgres    false    217                       0    0 2   discaltest_api_userprofile_user_permissions_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.discaltest_api_userprofile_user_permissions_id_seq OWNED BY public.discaltest_api_userprofile_user_permissions.id;
          public          postgres    false    216            �            1259    16761    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         heap    postgres    false            �            1259    16759    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    227                       0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    226            �            1259    16534    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            �            1259    16532    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    205                       0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    204            �            1259    16523    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            �            1259    16521    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    203                       0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    202            �            1259    16824    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            �            1259    34221    v_resultados    VIEW     �  CREATE VIEW public.v_resultados AS
 WITH ritem AS (
         SELECT ri."id_resultadoTest_id" AS id,
            area.id AS id_area,
            ri."pObtenido",
            area."pEsperado",
            ri.indicador,
            ri.observacion
           FROM public.discaltest_api_area area,
            public.discaltest_api_resultadoitem ri
          WHERE (area.id = ri.id_area_id)
          ORDER BY ri."id_resultadoTest_id" DESC, area.id
        ), resultado_test AS (
         SELECT rt.id,
            alu.id AS id_alumno,
            (((enti.nombre)::text || ' '::text) || (enti.apellido)::text) AS nombre_alumno,
            enti.nro_documento,
            rt.indicador,
            rt.observacion
           FROM public.discaltest_api_resultadotest rt,
            public.discaltest_api_alumnos alu,
            public.discaltest_api_entidad enti
          WHERE ((rt.id_alumno_id = alu.id) AND (alu.id_entidad_id = enti.id))
        )
 SELECT 1 AS id,
    resultado_test.id AS id_resultadotest,
    resultado_test.id_alumno,
    resultado_test.nombre_alumno,
    resultado_test.nro_documento,
    contar.id_area AS c_id,
    contar."pObtenido" AS c_pobtenido,
    contar."pEsperado" AS c_pesperado,
    contar.indicador AS c_indicador,
    contar.observacion AS c_observacion,
    numerar.id_area AS n_id,
    numerar."pObtenido" AS n_pobtenido,
    numerar."pEsperado" AS n_pesperado,
    numerar.indicador AS n_indicador,
    numerar.observacion AS n_observacion,
    s_numerico.id_area AS sn_id,
    s_numerico."pObtenido" AS sn_pobtenido,
    s_numerico."pEsperado" AS sn_pesperado,
    s_numerico.indicador AS sn_indicador,
    s_numerico.observacion AS sn_observacion,
    op_logica.id_area AS opl_id,
    op_logica."pObtenido" AS opl_pobtenido,
    op_logica."pEsperado" AS opl_pesperado,
    op_logica.indicador AS opl_indicador,
    op_logica.observacion AS opl_observacion,
    operaciones.id_area AS op_id,
    operaciones."pObtenido" AS op_pobtenido,
    operaciones."pEsperado" AS op_pesperado,
    operaciones.indicador AS op_indicador,
    operaciones.observacion AS op_observacion,
    e_tamanho.id_area AS et_id,
    e_tamanho."pObtenido" AS et_pobtenido,
    e_tamanho."pEsperado" AS et_pesperado,
    e_tamanho.indicador AS et_indicador,
    e_tamanho.observacion AS et_observacion,
    resultado_test.indicador,
    resultado_test.observacion
   FROM resultado_test,
    ( SELECT ritem.id,
            ritem.id_area,
            ritem."pObtenido",
            ritem."pEsperado",
            ritem.indicador,
            ritem.observacion
           FROM ritem
          WHERE (ritem.id_area = 1)) contar,
    ( SELECT ritem.id,
            ritem.id_area,
            ritem."pObtenido",
            ritem."pEsperado",
            ritem.indicador,
            ritem.observacion
           FROM ritem
          WHERE (ritem.id_area = 2)) numerar,
    ( SELECT ritem.id,
            ritem.id_area,
            ritem."pObtenido",
            ritem."pEsperado",
            ritem.indicador,
            ritem.observacion
           FROM ritem
          WHERE (ritem.id_area = 3)) s_numerico,
    ( SELECT ritem.id,
            ritem.id_area,
            ritem."pObtenido",
            ritem."pEsperado",
            ritem.indicador,
            ritem.observacion
           FROM ritem
          WHERE (ritem.id_area = 4)) op_logica,
    ( SELECT ritem.id,
            ritem.id_area,
            ritem."pObtenido",
            ritem."pEsperado",
            ritem.indicador,
            ritem.observacion
           FROM ritem
          WHERE (ritem.id_area = 5)) operaciones,
    ( SELECT ritem.id,
            ritem.id_area,
            ritem."pObtenido",
            ritem."pEsperado",
            ritem.indicador,
            ritem.observacion
           FROM ritem
          WHERE (ritem.id_area = 6)) e_tamanho
  WHERE ((resultado_test.id = contar.id) AND (resultado_test.id = numerar.id) AND (resultado_test.id = s_numerico.id) AND (resultado_test.id = op_logica.id) AND (resultado_test.id = operaciones.id) AND (resultado_test.id = e_tamanho.id));
    DROP VIEW public.v_resultados;
       public          postgres    false    219    235    235    235    219    221    221    235    233    233    233    233    231    231    221    221    235            �
           2604    16555    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    208    209    209            �
           2604    16565    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    210    211            �
           2604    16547    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    207    206    207            �
           2604    16625    discaltest_api_alumnos id    DEFAULT     �   ALTER TABLE ONLY public.discaltest_api_alumnos ALTER COLUMN id SET DEFAULT nextval('public.discaltest_api_alumnos_id_seq'::regclass);
 H   ALTER TABLE public.discaltest_api_alumnos ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    219    219            �
           2604    16673    discaltest_api_aluprofe id    DEFAULT     �   ALTER TABLE ONLY public.discaltest_api_aluprofe ALTER COLUMN id SET DEFAULT nextval('public.discaltest_api_aluprofe_id_seq'::regclass);
 I   ALTER TABLE public.discaltest_api_aluprofe ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    225    225            �
           2604    25172    discaltest_api_area id    DEFAULT     �   ALTER TABLE ONLY public.discaltest_api_area ALTER COLUMN id SET DEFAULT nextval('public.discaltest_api_area_id_seq'::regclass);
 E   ALTER TABLE public.discaltest_api_area ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    231    231            �
           2604    16633    discaltest_api_entidad id    DEFAULT     �   ALTER TABLE ONLY public.discaltest_api_entidad ALTER COLUMN id SET DEFAULT nextval('public.discaltest_api_entidad_id_seq'::regclass);
 H   ALTER TABLE public.discaltest_api_entidad ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    221    221            �
           2604    16641    discaltest_api_profesor id    DEFAULT     �   ALTER TABLE ONLY public.discaltest_api_profesor ALTER COLUMN id SET DEFAULT nextval('public.discaltest_api_profesor_id_seq'::regclass);
 I   ALTER TABLE public.discaltest_api_profesor ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222    223            �
           2604    25448    discaltest_api_resultadoitem id    DEFAULT     �   ALTER TABLE ONLY public.discaltest_api_resultadoitem ALTER COLUMN id SET DEFAULT nextval('public.discaltest_api_resultadoitem_id_seq'::regclass);
 N   ALTER TABLE public.discaltest_api_resultadoitem ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    235    234    235            �
           2604    25282    discaltest_api_resultadotest id    DEFAULT     �   ALTER TABLE ONLY public.discaltest_api_resultadotest ALTER COLUMN id SET DEFAULT nextval('public.discaltest_api_resultadotest_id_seq'::regclass);
 N   ALTER TABLE public.discaltest_api_resultadotest ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    233    232    233            �
           2604    16599    discaltest_api_userprofile id    DEFAULT     �   ALTER TABLE ONLY public.discaltest_api_userprofile ALTER COLUMN id SET DEFAULT nextval('public.discaltest_api_userprofile_id_seq'::regclass);
 L   ALTER TABLE public.discaltest_api_userprofile ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    212    213            �
           2604    16609 $   discaltest_api_userprofile_groups id    DEFAULT     �   ALTER TABLE ONLY public.discaltest_api_userprofile_groups ALTER COLUMN id SET DEFAULT nextval('public.discaltest_api_userprofile_groups_id_seq'::regclass);
 S   ALTER TABLE public.discaltest_api_userprofile_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215            �
           2604    16617 .   discaltest_api_userprofile_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.discaltest_api_userprofile_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.discaltest_api_userprofile_user_permissions_id_seq'::regclass);
 ]   ALTER TABLE public.discaltest_api_userprofile_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217            �
           2604    16764    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    226    227            �
           2604    16537    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    204    205            �
           2604    16526    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202    203            �          0    16552 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    209   �      �          0    16562    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    211   �      �          0    16544    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    207   �      �          0    16783    authtoken_token 
   TABLE DATA           @   COPY public.authtoken_token (key, created, user_id) FROM stdin;
    public          postgres    false    228   �      �          0    16622    discaltest_api_alumnos 
   TABLE DATA           C   COPY public.discaltest_api_alumnos (id, id_entidad_id) FROM stdin;
    public          postgres    false    219   
      �          0    16670    discaltest_api_aluprofe 
   TABLE DATA           S   COPY public.discaltest_api_aluprofe (id, id_alumno_id, id_profesor_id) FROM stdin;
    public          postgres    false    225   L      �          0    25169    discaltest_api_area 
   TABLE DATA           K   COPY public.discaltest_api_area (id, descripcion, "pEsperado") FROM stdin;
    public          postgres    false    231   �      �          0    16630    discaltest_api_entidad 
   TABLE DATA           �   COPY public.discaltest_api_entidad (id, tipo_entidad, nombre, apellido, telefono, direccion, id_usuario_id, nro_documento) FROM stdin;
    public          postgres    false    221         �          0    16638    discaltest_api_profesor 
   TABLE DATA           K   COPY public.discaltest_api_profesor (id, id_entidad_id, curso) FROM stdin;
    public          postgres    false    223         �          0    25445    discaltest_api_resultadoitem 
   TABLE DATA           �   COPY public.discaltest_api_resultadoitem (id, "pObtenido", indicador, observacion, id_area_id, "id_resultadoTest_id") FROM stdin;
    public          postgres    false    235   /      �          0    25279    discaltest_api_resultadotest 
   TABLE DATA           p   COPY public.discaltest_api_resultadotest (id, indicador, observacion, id_alumno_id, id_profesor_id) FROM stdin;
    public          postgres    false    233   L      �          0    16596    discaltest_api_userprofile 
   TABLE DATA           o   COPY public.discaltest_api_userprofile (password, last_login, is_superuser, id, loggin, is_active) FROM stdin;
    public          postgres    false    213   i      �          0    16606 !   discaltest_api_userprofile_groups 
   TABLE DATA           Y   COPY public.discaltest_api_userprofile_groups (id, userprofile_id, group_id) FROM stdin;
    public          postgres    false    215   �      �          0    16614 +   discaltest_api_userprofile_user_permissions 
   TABLE DATA           h   COPY public.discaltest_api_userprofile_user_permissions (id, userprofile_id, permission_id) FROM stdin;
    public          postgres    false    217         �          0    16761    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    227   0      �          0    16534    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    205   M      �          0    16523    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    203   I      �          0    16824    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    229   K                 0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    208                       0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    210                       0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 96, true);
          public          postgres    false    206                       0    0    discaltest_api_alumnos_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.discaltest_api_alumnos_id_seq', 11, true);
          public          postgres    false    218                       0    0    discaltest_api_aluprofe_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.discaltest_api_aluprofe_id_seq', 10, true);
          public          postgres    false    224                       0    0    discaltest_api_area_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.discaltest_api_area_id_seq', 7, true);
          public          postgres    false    230                       0    0    discaltest_api_entidad_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.discaltest_api_entidad_id_seq', 28, true);
          public          postgres    false    220                       0    0    discaltest_api_profesor_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.discaltest_api_profesor_id_seq', 2, true);
          public          postgres    false    222                       0    0 #   discaltest_api_resultadoitem_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.discaltest_api_resultadoitem_id_seq', 567, true);
          public          postgres    false    234                       0    0 #   discaltest_api_resultadotest_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.discaltest_api_resultadotest_id_seq', 33, true);
          public          postgres    false    232                       0    0 (   discaltest_api_userprofile_groups_id_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public.discaltest_api_userprofile_groups_id_seq', 1, false);
          public          postgres    false    214                       0    0 !   discaltest_api_userprofile_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.discaltest_api_userprofile_id_seq', 11, true);
          public          postgres    false    212                       0    0 2   discaltest_api_userprofile_user_permissions_id_seq    SEQUENCE SET     a   SELECT pg_catalog.setval('public.discaltest_api_userprofile_user_permissions_id_seq', 1, false);
          public          postgres    false    216                       0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);
          public          postgres    false    226                        0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 24, true);
          public          postgres    false    204            !           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 75, true);
          public          postgres    false    202                       2606    16592    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    209                       2606    16578 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    211    211                       2606    16567 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    211            	           2606    16557    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    209                       2606    16569 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    207    207                       2606    16549 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    207            7           2606    16787 $   authtoken_token authtoken_token_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_pkey PRIMARY KEY (key);
 N   ALTER TABLE ONLY public.authtoken_token DROP CONSTRAINT authtoken_token_pkey;
       public            postgres    false    228            9           2606    16789 +   authtoken_token authtoken_token_user_id_key 
   CONSTRAINT     i   ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_user_id_key UNIQUE (user_id);
 U   ALTER TABLE ONLY public.authtoken_token DROP CONSTRAINT authtoken_token_user_id_key;
       public            postgres    false    228                        2606    16627 2   discaltest_api_alumnos discaltest_api_alumnos_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.discaltest_api_alumnos
    ADD CONSTRAINT discaltest_api_alumnos_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.discaltest_api_alumnos DROP CONSTRAINT discaltest_api_alumnos_pkey;
       public            postgres    false    219            0           2606    16675 4   discaltest_api_aluprofe discaltest_api_aluprofe_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.discaltest_api_aluprofe
    ADD CONSTRAINT discaltest_api_aluprofe_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.discaltest_api_aluprofe DROP CONSTRAINT discaltest_api_aluprofe_pkey;
       public            postgres    false    225            ?           2606    25174 ,   discaltest_api_area discaltest_api_area_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.discaltest_api_area
    ADD CONSTRAINT discaltest_api_area_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.discaltest_api_area DROP CONSTRAINT discaltest_api_area_pkey;
       public            postgres    false    231            $           2606    25194 I   discaltest_api_entidad discaltest_api_entidad_nro_documento_7df8b143_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.discaltest_api_entidad
    ADD CONSTRAINT discaltest_api_entidad_nro_documento_7df8b143_uniq UNIQUE (nro_documento);
 s   ALTER TABLE ONLY public.discaltest_api_entidad DROP CONSTRAINT discaltest_api_entidad_nro_documento_7df8b143_uniq;
       public            postgres    false    221            &           2606    16635 2   discaltest_api_entidad discaltest_api_entidad_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.discaltest_api_entidad
    ADD CONSTRAINT discaltest_api_entidad_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.discaltest_api_entidad DROP CONSTRAINT discaltest_api_entidad_pkey;
       public            postgres    false    221            )           2606    34116 D   discaltest_api_entidad discaltest_api_entidad_telefono_1c5e4ee0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.discaltest_api_entidad
    ADD CONSTRAINT discaltest_api_entidad_telefono_1c5e4ee0_uniq UNIQUE (telefono);
 n   ALTER TABLE ONLY public.discaltest_api_entidad DROP CONSTRAINT discaltest_api_entidad_telefono_1c5e4ee0_uniq;
       public            postgres    false    221            ,           2606    16643 4   discaltest_api_profesor discaltest_api_profesor_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.discaltest_api_profesor
    ADD CONSTRAINT discaltest_api_profesor_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.discaltest_api_profesor DROP CONSTRAINT discaltest_api_profesor_pkey;
       public            postgres    false    223            G           2606    25450 >   discaltest_api_resultadoitem discaltest_api_resultadoitem_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.discaltest_api_resultadoitem
    ADD CONSTRAINT discaltest_api_resultadoitem_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.discaltest_api_resultadoitem DROP CONSTRAINT discaltest_api_resultadoitem_pkey;
       public            postgres    false    235            C           2606    25284 >   discaltest_api_resultadotest discaltest_api_resultadotest_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.discaltest_api_resultadotest
    ADD CONSTRAINT discaltest_api_resultadotest_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.discaltest_api_resultadotest DROP CONSTRAINT discaltest_api_resultadotest_pkey;
       public            postgres    false    233                       2606    16683 `   discaltest_api_userprofile_groups discaltest_api_userprofi_userprofile_id_group_id_8575c3f9_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.discaltest_api_userprofile_groups
    ADD CONSTRAINT discaltest_api_userprofi_userprofile_id_group_id_8575c3f9_uniq UNIQUE (userprofile_id, group_id);
 �   ALTER TABLE ONLY public.discaltest_api_userprofile_groups DROP CONSTRAINT discaltest_api_userprofi_userprofile_id_group_id_8575c3f9_uniq;
       public            postgres    false    215    215                       2606    16697 k   discaltest_api_userprofile_user_permissions discaltest_api_userprofi_userprofile_id_permissio_1b6ee980_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.discaltest_api_userprofile_user_permissions
    ADD CONSTRAINT discaltest_api_userprofi_userprofile_id_permissio_1b6ee980_uniq UNIQUE (userprofile_id, permission_id);
 �   ALTER TABLE ONLY public.discaltest_api_userprofile_user_permissions DROP CONSTRAINT discaltest_api_userprofi_userprofile_id_permissio_1b6ee980_uniq;
       public            postgres    false    217    217                       2606    16611 H   discaltest_api_userprofile_groups discaltest_api_userprofile_groups_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.discaltest_api_userprofile_groups
    ADD CONSTRAINT discaltest_api_userprofile_groups_pkey PRIMARY KEY (id);
 r   ALTER TABLE ONLY public.discaltest_api_userprofile_groups DROP CONSTRAINT discaltest_api_userprofile_groups_pkey;
       public            postgres    false    215                       2606    16601 :   discaltest_api_userprofile discaltest_api_userprofile_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.discaltest_api_userprofile
    ADD CONSTRAINT discaltest_api_userprofile_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.discaltest_api_userprofile DROP CONSTRAINT discaltest_api_userprofile_pkey;
       public            postgres    false    213                       2606    16619 \   discaltest_api_userprofile_user_permissions discaltest_api_userprofile_user_permissions_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.discaltest_api_userprofile_user_permissions
    ADD CONSTRAINT discaltest_api_userprofile_user_permissions_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.discaltest_api_userprofile_user_permissions DROP CONSTRAINT discaltest_api_userprofile_user_permissions_pkey;
       public            postgres    false    217            3           2606    16770 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    227            �
           2606    16541 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    205    205            �
           2606    16539 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    205            �
           2606    16531 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    203            <           2606    16831 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    229                       1259    16593    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    209            
           1259    16589 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    211                       1259    16590 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    211                        1259    16575 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    207            5           1259    16795 !   authtoken_token_key_10f0b77e_like    INDEX     p   CREATE INDEX authtoken_token_key_10f0b77e_like ON public.authtoken_token USING btree (key varchar_pattern_ops);
 5   DROP INDEX public.authtoken_token_key_10f0b77e_like;
       public            postgres    false    228                       1259    16758 -   discaltest_api_alumnos_id_entidad_id_df577318    INDEX     y   CREATE INDEX discaltest_api_alumnos_id_entidad_id_df577318 ON public.discaltest_api_alumnos USING btree (id_entidad_id);
 A   DROP INDEX public.discaltest_api_alumnos_id_entidad_id_df577318;
       public            postgres    false    219            -           1259    16756 -   discaltest_api_aluprofe_id_alumno_id_fc852f59    INDEX     y   CREATE INDEX discaltest_api_aluprofe_id_alumno_id_fc852f59 ON public.discaltest_api_aluprofe USING btree (id_alumno_id);
 A   DROP INDEX public.discaltest_api_aluprofe_id_alumno_id_fc852f59;
       public            postgres    false    225            .           1259    16757 /   discaltest_api_aluprofe_id_profedor_id_78a81bff    INDEX     }   CREATE INDEX discaltest_api_aluprofe_id_profedor_id_78a81bff ON public.discaltest_api_aluprofe USING btree (id_profesor_id);
 C   DROP INDEX public.discaltest_api_aluprofe_id_profedor_id_78a81bff;
       public            postgres    false    225            !           1259    16715 -   discaltest_api_entidad_id_usuario_id_ff7aff57    INDEX     y   CREATE INDEX discaltest_api_entidad_id_usuario_id_ff7aff57 ON public.discaltest_api_entidad USING btree (id_usuario_id);
 A   DROP INDEX public.discaltest_api_entidad_id_usuario_id_ff7aff57;
       public            postgres    false    221            "           1259    25195 2   discaltest_api_entidad_nro_documento_7df8b143_like    INDEX     �   CREATE INDEX discaltest_api_entidad_nro_documento_7df8b143_like ON public.discaltest_api_entidad USING btree (nro_documento varchar_pattern_ops);
 F   DROP INDEX public.discaltest_api_entidad_nro_documento_7df8b143_like;
       public            postgres    false    221            '           1259    34117 -   discaltest_api_entidad_telefono_1c5e4ee0_like    INDEX     �   CREATE INDEX discaltest_api_entidad_telefono_1c5e4ee0_like ON public.discaltest_api_entidad USING btree (telefono varchar_pattern_ops);
 A   DROP INDEX public.discaltest_api_entidad_telefono_1c5e4ee0_like;
       public            postgres    false    221            *           1259    16721 .   discaltest_api_profesor_id_entidad_id_dcee73db    INDEX     {   CREATE INDEX discaltest_api_profesor_id_entidad_id_dcee73db ON public.discaltest_api_profesor USING btree (id_entidad_id);
 B   DROP INDEX public.discaltest_api_profesor_id_entidad_id_dcee73db;
       public            postgres    false    223            D           1259    25461 0   discaltest_api_resultadoitem_id_area_id_99a68086    INDEX        CREATE INDEX discaltest_api_resultadoitem_id_area_id_99a68086 ON public.discaltest_api_resultadoitem USING btree (id_area_id);
 D   DROP INDEX public.discaltest_api_resultadoitem_id_area_id_99a68086;
       public            postgres    false    235            E           1259    25462 9   discaltest_api_resultadoitem_id_resultadoTest_id_10653a5d    INDEX     �   CREATE INDEX "discaltest_api_resultadoitem_id_resultadoTest_id_10653a5d" ON public.discaltest_api_resultadoitem USING btree ("id_resultadoTest_id");
 O   DROP INDEX public."discaltest_api_resultadoitem_id_resultadoTest_id_10653a5d";
       public            postgres    false    235            @           1259    25303 2   discaltest_api_resultadotest_id_alumno_id_cdd24346    INDEX     �   CREATE INDEX discaltest_api_resultadotest_id_alumno_id_cdd24346 ON public.discaltest_api_resultadotest USING btree (id_alumno_id);
 F   DROP INDEX public.discaltest_api_resultadotest_id_alumno_id_cdd24346;
       public            postgres    false    233            A           1259    25304 4   discaltest_api_resultadotest_id_profesor_id_be43f297    INDEX     �   CREATE INDEX discaltest_api_resultadotest_id_profesor_id_be43f297 ON public.discaltest_api_resultadotest USING btree (id_profesor_id);
 H   DROP INDEX public.discaltest_api_resultadotest_id_profesor_id_be43f297;
       public            postgres    false    233                       1259    16695 3   discaltest_api_userprofile_groups_group_id_12655e6e    INDEX     �   CREATE INDEX discaltest_api_userprofile_groups_group_id_12655e6e ON public.discaltest_api_userprofile_groups USING btree (group_id);
 G   DROP INDEX public.discaltest_api_userprofile_groups_group_id_12655e6e;
       public            postgres    false    215                       1259    16694 9   discaltest_api_userprofile_groups_userprofile_id_800cc94b    INDEX     �   CREATE INDEX discaltest_api_userprofile_groups_userprofile_id_800cc94b ON public.discaltest_api_userprofile_groups USING btree (userprofile_id);
 M   DROP INDEX public.discaltest_api_userprofile_groups_userprofile_id_800cc94b;
       public            postgres    false    215                       1259    16709 1   discaltest_api_userprofile_permission_id_a7f5992e    INDEX     �   CREATE INDEX discaltest_api_userprofile_permission_id_a7f5992e ON public.discaltest_api_userprofile_user_permissions USING btree (permission_id);
 E   DROP INDEX public.discaltest_api_userprofile_permission_id_a7f5992e;
       public            postgres    false    217                       1259    16708 2   discaltest_api_userprofile_userprofile_id_c0555c74    INDEX     �   CREATE INDEX discaltest_api_userprofile_userprofile_id_c0555c74 ON public.discaltest_api_userprofile_user_permissions USING btree (userprofile_id);
 F   DROP INDEX public.discaltest_api_userprofile_userprofile_id_c0555c74;
       public            postgres    false    217            1           1259    16781 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    227            4           1259    16782 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    227            :           1259    16833 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    229            =           1259    16832 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    229            J           2606    16584 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    207    2820    211            I           2606    16579 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    209    211    2825            H           2606    16570 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    205    2815    207            V           2606    16790 =   authtoken_token authtoken_token_user_id_35299eff_fk_discaltes    FK CONSTRAINT     �   ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_user_id_35299eff_fk_discaltes FOREIGN KEY (user_id) REFERENCES public.discaltest_api_userprofile(id) DEFERRABLE INITIALLY DEFERRED;
 g   ALTER TABLE ONLY public.authtoken_token DROP CONSTRAINT authtoken_token_user_id_35299eff_fk_discaltes;
       public          postgres    false    2833    213    228            O           2606    16676 O   discaltest_api_alumnos discaltest_api_alumn_id_entidad_id_df577318_fk_discaltes    FK CONSTRAINT     �   ALTER TABLE ONLY public.discaltest_api_alumnos
    ADD CONSTRAINT discaltest_api_alumn_id_entidad_id_df577318_fk_discaltes FOREIGN KEY (id_entidad_id) REFERENCES public.discaltest_api_entidad(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.discaltest_api_alumnos DROP CONSTRAINT discaltest_api_alumn_id_entidad_id_df577318_fk_discaltes;
       public          postgres    false    219    2854    221            R           2606    16746 O   discaltest_api_aluprofe discaltest_api_alupr_id_alumno_id_fc852f59_fk_discaltes    FK CONSTRAINT     �   ALTER TABLE ONLY public.discaltest_api_aluprofe
    ADD CONSTRAINT discaltest_api_alupr_id_alumno_id_fc852f59_fk_discaltes FOREIGN KEY (id_alumno_id) REFERENCES public.discaltest_api_alumnos(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.discaltest_api_aluprofe DROP CONSTRAINT discaltest_api_alupr_id_alumno_id_fc852f59_fk_discaltes;
       public          postgres    false    219    2848    225            S           2606    16835 Q   discaltest_api_aluprofe discaltest_api_alupr_id_profesor_id_df844cf1_fk_discaltes    FK CONSTRAINT     �   ALTER TABLE ONLY public.discaltest_api_aluprofe
    ADD CONSTRAINT discaltest_api_alupr_id_profesor_id_df844cf1_fk_discaltes FOREIGN KEY (id_profesor_id) REFERENCES public.discaltest_api_profesor(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.discaltest_api_aluprofe DROP CONSTRAINT discaltest_api_alupr_id_profesor_id_df844cf1_fk_discaltes;
       public          postgres    false    223    225    2860            P           2606    33843 O   discaltest_api_entidad discaltest_api_entid_id_usuario_id_ff7aff57_fk_discaltes    FK CONSTRAINT     �   ALTER TABLE ONLY public.discaltest_api_entidad
    ADD CONSTRAINT discaltest_api_entid_id_usuario_id_ff7aff57_fk_discaltes FOREIGN KEY (id_usuario_id) REFERENCES public.discaltest_api_userprofile(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.discaltest_api_entidad DROP CONSTRAINT discaltest_api_entid_id_usuario_id_ff7aff57_fk_discaltes;
       public          postgres    false    213    2833    221            Q           2606    16716 P   discaltest_api_profesor discaltest_api_profe_id_entidad_id_dcee73db_fk_discaltes    FK CONSTRAINT     �   ALTER TABLE ONLY public.discaltest_api_profesor
    ADD CONSTRAINT discaltest_api_profe_id_entidad_id_dcee73db_fk_discaltes FOREIGN KEY (id_entidad_id) REFERENCES public.discaltest_api_entidad(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.discaltest_api_profesor DROP CONSTRAINT discaltest_api_profe_id_entidad_id_dcee73db_fk_discaltes;
       public          postgres    false    2854    223    221            W           2606    25293 T   discaltest_api_resultadotest discaltest_api_resul_id_alumno_id_cdd24346_fk_discaltes    FK CONSTRAINT     �   ALTER TABLE ONLY public.discaltest_api_resultadotest
    ADD CONSTRAINT discaltest_api_resul_id_alumno_id_cdd24346_fk_discaltes FOREIGN KEY (id_alumno_id) REFERENCES public.discaltest_api_alumnos(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.discaltest_api_resultadotest DROP CONSTRAINT discaltest_api_resul_id_alumno_id_cdd24346_fk_discaltes;
       public          postgres    false    233    219    2848            Y           2606    25451 R   discaltest_api_resultadoitem discaltest_api_resul_id_area_id_99a68086_fk_discaltes    FK CONSTRAINT     �   ALTER TABLE ONLY public.discaltest_api_resultadoitem
    ADD CONSTRAINT discaltest_api_resul_id_area_id_99a68086_fk_discaltes FOREIGN KEY (id_area_id) REFERENCES public.discaltest_api_area(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.discaltest_api_resultadoitem DROP CONSTRAINT discaltest_api_resul_id_area_id_99a68086_fk_discaltes;
       public          postgres    false    2879    231    235            X           2606    25298 V   discaltest_api_resultadotest discaltest_api_resul_id_profesor_id_be43f297_fk_discaltes    FK CONSTRAINT     �   ALTER TABLE ONLY public.discaltest_api_resultadotest
    ADD CONSTRAINT discaltest_api_resul_id_profesor_id_be43f297_fk_discaltes FOREIGN KEY (id_profesor_id) REFERENCES public.discaltest_api_profesor(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.discaltest_api_resultadotest DROP CONSTRAINT discaltest_api_resul_id_profesor_id_be43f297_fk_discaltes;
       public          postgres    false    2860    233    223            Z           2606    25456 [   discaltest_api_resultadoitem discaltest_api_resul_id_resultadoTest_id_10653a5d_fk_discaltes    FK CONSTRAINT     �   ALTER TABLE ONLY public.discaltest_api_resultadoitem
    ADD CONSTRAINT "discaltest_api_resul_id_resultadoTest_id_10653a5d_fk_discaltes" FOREIGN KEY ("id_resultadoTest_id") REFERENCES public.discaltest_api_resultadotest(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.discaltest_api_resultadoitem DROP CONSTRAINT "discaltest_api_resul_id_resultadoTest_id_10653a5d_fk_discaltes";
       public          postgres    false    235    2883    233            L           2606    16689 U   discaltest_api_userprofile_groups discaltest_api_userp_group_id_12655e6e_fk_auth_grou    FK CONSTRAINT     �   ALTER TABLE ONLY public.discaltest_api_userprofile_groups
    ADD CONSTRAINT discaltest_api_userp_group_id_12655e6e_fk_auth_grou FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.discaltest_api_userprofile_groups DROP CONSTRAINT discaltest_api_userp_group_id_12655e6e_fk_auth_grou;
       public          postgres    false    209    215    2825            N           2606    16703 d   discaltest_api_userprofile_user_permissions discaltest_api_userp_permission_id_a7f5992e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.discaltest_api_userprofile_user_permissions
    ADD CONSTRAINT discaltest_api_userp_permission_id_a7f5992e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.discaltest_api_userprofile_user_permissions DROP CONSTRAINT discaltest_api_userp_permission_id_a7f5992e_fk_auth_perm;
       public          postgres    false    217    207    2820            K           2606    16684 [   discaltest_api_userprofile_groups discaltest_api_userp_userprofile_id_800cc94b_fk_discaltes    FK CONSTRAINT     �   ALTER TABLE ONLY public.discaltest_api_userprofile_groups
    ADD CONSTRAINT discaltest_api_userp_userprofile_id_800cc94b_fk_discaltes FOREIGN KEY (userprofile_id) REFERENCES public.discaltest_api_userprofile(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.discaltest_api_userprofile_groups DROP CONSTRAINT discaltest_api_userp_userprofile_id_800cc94b_fk_discaltes;
       public          postgres    false    2833    215    213            M           2606    16698 e   discaltest_api_userprofile_user_permissions discaltest_api_userp_userprofile_id_c0555c74_fk_discaltes    FK CONSTRAINT     �   ALTER TABLE ONLY public.discaltest_api_userprofile_user_permissions
    ADD CONSTRAINT discaltest_api_userp_userprofile_id_c0555c74_fk_discaltes FOREIGN KEY (userprofile_id) REFERENCES public.discaltest_api_userprofile(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.discaltest_api_userprofile_user_permissions DROP CONSTRAINT discaltest_api_userp_userprofile_id_c0555c74_fk_discaltes;
       public          postgres    false    213    2833    217            T           2606    16771 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    205    2815    227            U           2606    16776 ?   django_admin_log django_admin_log_user_id_c564eba6_fk_discaltes    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_discaltes FOREIGN KEY (user_id) REFERENCES public.discaltest_api_userprofile(id) DEFERRABLE INITIALLY DEFERRED;
 i   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_discaltes;
       public          postgres    false    2833    227    213            �      x������ � �      �      x������ � �      �   �  x�m����0���S�	:1� ��;�a6�6)�m��eɒ�oA|��d��ę��tn��}~;�i[>�3����.m���az�%k o��7�������P`��~y�u�'S��U�)��J?Ţ�`;VT$8
�O�o��|��ug)G��'�AD*V! ,�v�^�i���}>�i@K�b]#u2��n�����hF��b�d��x��+�:)�z&�����aՙ����d�2������~�Je��"j�	AD�� x�7
�e��2�ۓ��� ����t�rbˉb!dxß�_N{��x���P�պg0J*^�~ƣ��E2�˩���i^M�xekf�3a*��^���3V	��C0ކ���A	/m�V^@�8��C)������և�����tm���Wl"U$I/�D�(H.�^ŉ����b��'��m�2!1�cR�B�hǤȅ�����pv���!��˹t��/;Unu��U��1sku<nըΝ�T�DCCYb4ϓ�9Uܐ'K5p��AgL�4�[e�w!m���.wN#��	eՈ^��3�$�'������8?;�d�*L�ɫf<�#$/����]!YN��w���*�C��hxT�-*����-"��@��a�q�C~�V��n�. �2H� "jt?>y�ˉZ���o�m>m��q�����h[��c�eM*Y�&�͚D��-0@��&	'm���$mە'��|��ԗ'��|h�ΥI�EO�qS9=���� ��mW��+ۮ)�R�ڎ�w�m��VS��!��b;�����lW��p��&p�����I� 2����u.�^�ԅU.K�8ʡQĵ�C�
)��F��Ε�h�4;]�-����t)����Y��/���AYs�      �   t   x�-̱�0�ښ���GH�����Q�Ҿ�cN�@��J�����:�-cw"]r01.�E�D���H���Us�hY�}��I���FT�G��O����7�F�ER޻��S�#o      �   2   x����0��n1>b'�B�u m��y�dyH���n��"��R��      �   4   x�˱  ��:��]��槊���X2�I��,�<xW���63{�p�      �   ~   x�M�1�0 g�y�-��*�,Q��%�TI�(Fԍ����t��!�
챇i*��2J�srwz�7��&���
��G�َhU�8±63���k���#��cw���1�5�m��_?.3      �   �  x�]��r�0���S�%, K֏�̏a�	Sڡ�n[�ѠJA�;C߈5���J�����9�;�^F�d�I�эv$��&8�x�O�M���-���֤���,��}|t&D�5��QA�ٚ���>�L*j�jقnZ�yHf�7D��h�$��,<�L&�̩G��.Do��!�z 	�o`�M@���_p�gÛػ+��x���}��	�/`m��5C�dTf�[�1',�yps�K>�J�|o���q�;�#{�kd�b��,�p�ii�y�3oZ`4V2�
�I��%���M7�[���)�M.��:)��gk0�P�r�]�fʋ?٬��;��л1�\�F���"?��pJ�RQ^Z����,mpG���e!����㬖�����_�u��"S�yY!U��n(/�ݠO����[=Ux�[�ӫW��7-�7�i�����ƝM{T��VR��պ+���tU����ҿ���d      �      x�3�4�4����� 	^      �      x������ � �      �      x������ � �      �   }  x�}�Mo�@���+�`��������( �&7×L�����&mor����œ�ZK�d@I6��
��ᚸ��pC0�2TTM�hu�!�3�?�,8n0(�K��)���mK5]��t?��f�vE#�e�������>X�J/�� 5��u^Փ[�,gC�p�-)jώhđ����X����D��OW��ն��r�������΂�M�b�FS��u{��G����F����]}س����u�~e�z����揮e��d|X��ygm��A=�=�����h��yz̆�92��j�V�_p)i��JP���[�/q� �_T���e���R��g�y���E�_p_y�����
/7b���*��SS����6�	fw���`0xtp��      �      x������ � �      �      x������ � �      �      x������ � �      �   �   x�u�]N�0���� ���� !�5�!MJ���i��v�,/���3�5���g
�&p�~����"쮛s�y���b��T����#�(�6�q�j��`�N�fL�w�ӳt�D�qd��Ҍ>���}B��5��p�=X[�bFXW��<O%�����N��l���.`�M�/J+&�`O5e�a�m��D�i&�d��ǲ����b�ii����<�b�	���K��z�hz��oO ��R��      �   �  x���Yr�6@��S�f�l<K�X��q�H�BRS3�O��ŭ���r�����������<�>tӛ1�~��}�}C��a��;Ě��X9�����~[���톟]s�C�����]��1Ą���8�����x�l��܍͡w�4��>_�k5�n�)����	.�삢�8ɏn��ۧ��ƅDq�/)�G��p�'��	���Dl�in��g/��zZ<H"l����,�=��r�����;�4!��}�l�����qj�ͦ��q�]7M�gw'*�)��,��f�I�=��� R����P"���/��s���0֞B[�h��P�������A��`1�2���jT.WX�m�O�D����^O�,7�~��
�_���k0*����:�D5$[�@����BgHҬ]ϩ�l��f��Я��uP)���?ݳH�TFb�����uXv��Atx�:�Cv�AM�5�pg�eʽQ9�eƋ^�U��E%���;I�4x@��;���t��(]r�ԆR��/�[8j�}5���n\�s;�"�صg�#�j0��d���²W{����5P�
.8ʊ�W8.�n��>��p� W[��::٠0��旁m�i=������DN�"lE@�3*�p_J9�'N� �9w�1U`C��Q8_�q��vn7C��o?��4����w�����
�����ХMJy�(�4�Q��ǝ|p�5�.�wk)�%)��S�n�IǼ���lk�' ���B�3����c��*��<�I��� �����`‭��ޕ�P�~ycH�"��@J���Xh(�9!H�6����%@�����d�9T��m.)R��q^s5�W .I��p-~�|[��X���"S�+���[�Rt�$[s��)�VlG�!��W��˨�7B����M˧��T��W,�AʊՈ�I!�n9.U��r-�PdF�J���t�F�	1p)WV\ƯF������sjDc+��~�h��EV�$Rc�ˀaEe�Z\>���\E"�3�W�E�(=#�� E=Ea�=7�U��v`>�`�S\��{�U\�oM\⻌<+>qeM��(M�Aq�H��T+��r��M��)��O�Q���˥���Cy*9 z�)r�˒��
Y�JJU�B�\6V������ʔ=+��}|`���q���dg�8B+��O�1"�%ڈ�f��?���.�c�͜i�$.N���ˆ�* �
�?�A�=Wx��w�Γn�U����N+�T�KWDc�gWȜz��J���;�(�K�L��lq:�ru�LvWK���
��
�^nӼc���X����J�'�_s����ə����JH6_z��e���ᙟC�H�ts��6�W6��D.� �q(�)v�{�tP�D������|�B��Xg�@���A����@j�����#����GB�!=<d�b����o1ddrV�0���=��[�[%X�E��->߆�A.'^n9�^�҃�>9"��lC�����4q�Eɗ�d�*T���?��      �      x������ � �     