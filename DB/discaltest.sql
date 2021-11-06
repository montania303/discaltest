--
-- PostgreSQL database dump
--

-- Dumped from database version 12.8
-- Dumped by pg_dump version 12.8

-- Started on 2021-11-06 10:06:46

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 209 (class 1259 OID 16552)
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 16550)
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO postgres;

--
-- TOC entry 3070 (class 0 OID 0)
-- Dependencies: 208
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- TOC entry 211 (class 1259 OID 16562)
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 16560)
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO postgres;

--
-- TOC entry 3071 (class 0 OID 0)
-- Dependencies: 210
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- TOC entry 207 (class 1259 OID 16544)
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 16542)
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO postgres;

--
-- TOC entry 3072 (class 0 OID 0)
-- Dependencies: 206
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- TOC entry 228 (class 1259 OID 16783)
-- Name: authtoken_token; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.authtoken_token (
    key character varying(40) NOT NULL,
    created timestamp with time zone NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.authtoken_token OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16622)
-- Name: discaltest_api_alumnos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.discaltest_api_alumnos (
    id integer NOT NULL,
    id_entidad_id integer NOT NULL
);


ALTER TABLE public.discaltest_api_alumnos OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 16620)
-- Name: discaltest_api_alumnos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.discaltest_api_alumnos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.discaltest_api_alumnos_id_seq OWNER TO postgres;

--
-- TOC entry 3073 (class 0 OID 0)
-- Dependencies: 218
-- Name: discaltest_api_alumnos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.discaltest_api_alumnos_id_seq OWNED BY public.discaltest_api_alumnos.id;


--
-- TOC entry 225 (class 1259 OID 16670)
-- Name: discaltest_api_aluprofe; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.discaltest_api_aluprofe (
    id integer NOT NULL,
    id_alumno_id integer NOT NULL,
    id_profesor_id integer NOT NULL
);


ALTER TABLE public.discaltest_api_aluprofe OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 16668)
-- Name: discaltest_api_aluprofe_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.discaltest_api_aluprofe_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.discaltest_api_aluprofe_id_seq OWNER TO postgres;

--
-- TOC entry 3074 (class 0 OID 0)
-- Dependencies: 224
-- Name: discaltest_api_aluprofe_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.discaltest_api_aluprofe_id_seq OWNED BY public.discaltest_api_aluprofe.id;


--
-- TOC entry 231 (class 1259 OID 25169)
-- Name: discaltest_api_area; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.discaltest_api_area (
    id integer NOT NULL,
    descripcion character varying(120) NOT NULL,
    "pEsperado" integer NOT NULL
);


ALTER TABLE public.discaltest_api_area OWNER TO postgres;

--
-- TOC entry 230 (class 1259 OID 25167)
-- Name: discaltest_api_area_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.discaltest_api_area_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.discaltest_api_area_id_seq OWNER TO postgres;

--
-- TOC entry 3075 (class 0 OID 0)
-- Dependencies: 230
-- Name: discaltest_api_area_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.discaltest_api_area_id_seq OWNED BY public.discaltest_api_area.id;


--
-- TOC entry 221 (class 1259 OID 16630)
-- Name: discaltest_api_entidad; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.discaltest_api_entidad (
    id integer NOT NULL,
    tipo_entidad character varying(2) NOT NULL,
    nombre character varying(60) NOT NULL,
    apellido character varying(60) NOT NULL,
    telefono character varying(20) NOT NULL,
    direccion character varying(20) NOT NULL,
    id_usuario_id integer,
    nro_documento character varying(60) NOT NULL
);


ALTER TABLE public.discaltest_api_entidad OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16628)
-- Name: discaltest_api_entidad_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.discaltest_api_entidad_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.discaltest_api_entidad_id_seq OWNER TO postgres;

--
-- TOC entry 3076 (class 0 OID 0)
-- Dependencies: 220
-- Name: discaltest_api_entidad_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.discaltest_api_entidad_id_seq OWNED BY public.discaltest_api_entidad.id;


--
-- TOC entry 223 (class 1259 OID 16638)
-- Name: discaltest_api_profesor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.discaltest_api_profesor (
    id integer NOT NULL,
    id_entidad_id integer NOT NULL,
    curso integer NOT NULL
);


ALTER TABLE public.discaltest_api_profesor OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 16636)
-- Name: discaltest_api_profesor_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.discaltest_api_profesor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.discaltest_api_profesor_id_seq OWNER TO postgres;

--
-- TOC entry 3077 (class 0 OID 0)
-- Dependencies: 222
-- Name: discaltest_api_profesor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.discaltest_api_profesor_id_seq OWNED BY public.discaltest_api_profesor.id;


--
-- TOC entry 235 (class 1259 OID 25445)
-- Name: discaltest_api_resultadoitem; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.discaltest_api_resultadoitem (
    id integer NOT NULL,
    "pObtenido" integer NOT NULL,
    indicador character varying(1),
    observacion character varying(500),
    id_area_id integer NOT NULL,
    "id_resultadoTest_id" integer NOT NULL
);


ALTER TABLE public.discaltest_api_resultadoitem OWNER TO postgres;

--
-- TOC entry 234 (class 1259 OID 25443)
-- Name: discaltest_api_resultadoitem_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.discaltest_api_resultadoitem_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.discaltest_api_resultadoitem_id_seq OWNER TO postgres;

--
-- TOC entry 3078 (class 0 OID 0)
-- Dependencies: 234
-- Name: discaltest_api_resultadoitem_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.discaltest_api_resultadoitem_id_seq OWNED BY public.discaltest_api_resultadoitem.id;


--
-- TOC entry 233 (class 1259 OID 25279)
-- Name: discaltest_api_resultadotest; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.discaltest_api_resultadotest (
    id integer NOT NULL,
    indicador character varying(1),
    observacion character varying(250),
    id_alumno_id integer NOT NULL,
    id_profesor_id integer NOT NULL
);


ALTER TABLE public.discaltest_api_resultadotest OWNER TO postgres;

--
-- TOC entry 232 (class 1259 OID 25277)
-- Name: discaltest_api_resultadotest_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.discaltest_api_resultadotest_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.discaltest_api_resultadotest_id_seq OWNER TO postgres;

--
-- TOC entry 3079 (class 0 OID 0)
-- Dependencies: 232
-- Name: discaltest_api_resultadotest_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.discaltest_api_resultadotest_id_seq OWNED BY public.discaltest_api_resultadotest.id;


--
-- TOC entry 213 (class 1259 OID 16596)
-- Name: discaltest_api_userprofile; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.discaltest_api_userprofile (
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    id integer NOT NULL,
    loggin character varying(255) NOT NULL,
    is_active boolean NOT NULL
);


ALTER TABLE public.discaltest_api_userprofile OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 16606)
-- Name: discaltest_api_userprofile_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.discaltest_api_userprofile_groups (
    id bigint NOT NULL,
    userprofile_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.discaltest_api_userprofile_groups OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 16604)
-- Name: discaltest_api_userprofile_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.discaltest_api_userprofile_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.discaltest_api_userprofile_groups_id_seq OWNER TO postgres;

--
-- TOC entry 3080 (class 0 OID 0)
-- Dependencies: 214
-- Name: discaltest_api_userprofile_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.discaltest_api_userprofile_groups_id_seq OWNED BY public.discaltest_api_userprofile_groups.id;


--
-- TOC entry 212 (class 1259 OID 16594)
-- Name: discaltest_api_userprofile_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.discaltest_api_userprofile_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.discaltest_api_userprofile_id_seq OWNER TO postgres;

--
-- TOC entry 3081 (class 0 OID 0)
-- Dependencies: 212
-- Name: discaltest_api_userprofile_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.discaltest_api_userprofile_id_seq OWNED BY public.discaltest_api_userprofile.id;


--
-- TOC entry 217 (class 1259 OID 16614)
-- Name: discaltest_api_userprofile_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.discaltest_api_userprofile_user_permissions (
    id bigint NOT NULL,
    userprofile_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.discaltest_api_userprofile_user_permissions OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 16612)
-- Name: discaltest_api_userprofile_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.discaltest_api_userprofile_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.discaltest_api_userprofile_user_permissions_id_seq OWNER TO postgres;

--
-- TOC entry 3082 (class 0 OID 0)
-- Dependencies: 216
-- Name: discaltest_api_userprofile_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.discaltest_api_userprofile_user_permissions_id_seq OWNED BY public.discaltest_api_userprofile_user_permissions.id;


--
-- TOC entry 227 (class 1259 OID 16761)
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_admin_log (
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


ALTER TABLE public.django_admin_log OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 16759)
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO postgres;

--
-- TOC entry 3083 (class 0 OID 0)
-- Dependencies: 226
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- TOC entry 205 (class 1259 OID 16534)
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 16532)
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO postgres;

--
-- TOC entry 3084 (class 0 OID 0)
-- Dependencies: 204
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- TOC entry 203 (class 1259 OID 16523)
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 16521)
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO postgres;

--
-- TOC entry 3085 (class 0 OID 0)
-- Dependencies: 202
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- TOC entry 229 (class 1259 OID 16824)
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- TOC entry 236 (class 1259 OID 34221)
-- Name: v_resultados; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.v_resultados AS
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


ALTER TABLE public.v_resultados OWNER TO postgres;

--
-- TOC entry 2796 (class 2604 OID 16555)
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- TOC entry 2797 (class 2604 OID 16565)
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- TOC entry 2795 (class 2604 OID 16547)
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- TOC entry 2801 (class 2604 OID 16625)
-- Name: discaltest_api_alumnos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.discaltest_api_alumnos ALTER COLUMN id SET DEFAULT nextval('public.discaltest_api_alumnos_id_seq'::regclass);


--
-- TOC entry 2804 (class 2604 OID 16673)
-- Name: discaltest_api_aluprofe id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.discaltest_api_aluprofe ALTER COLUMN id SET DEFAULT nextval('public.discaltest_api_aluprofe_id_seq'::regclass);


--
-- TOC entry 2807 (class 2604 OID 25172)
-- Name: discaltest_api_area id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.discaltest_api_area ALTER COLUMN id SET DEFAULT nextval('public.discaltest_api_area_id_seq'::regclass);


--
-- TOC entry 2802 (class 2604 OID 16633)
-- Name: discaltest_api_entidad id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.discaltest_api_entidad ALTER COLUMN id SET DEFAULT nextval('public.discaltest_api_entidad_id_seq'::regclass);


--
-- TOC entry 2803 (class 2604 OID 16641)
-- Name: discaltest_api_profesor id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.discaltest_api_profesor ALTER COLUMN id SET DEFAULT nextval('public.discaltest_api_profesor_id_seq'::regclass);


--
-- TOC entry 2809 (class 2604 OID 25448)
-- Name: discaltest_api_resultadoitem id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.discaltest_api_resultadoitem ALTER COLUMN id SET DEFAULT nextval('public.discaltest_api_resultadoitem_id_seq'::regclass);


--
-- TOC entry 2808 (class 2604 OID 25282)
-- Name: discaltest_api_resultadotest id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.discaltest_api_resultadotest ALTER COLUMN id SET DEFAULT nextval('public.discaltest_api_resultadotest_id_seq'::regclass);


--
-- TOC entry 2798 (class 2604 OID 16599)
-- Name: discaltest_api_userprofile id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.discaltest_api_userprofile ALTER COLUMN id SET DEFAULT nextval('public.discaltest_api_userprofile_id_seq'::regclass);


--
-- TOC entry 2799 (class 2604 OID 16609)
-- Name: discaltest_api_userprofile_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.discaltest_api_userprofile_groups ALTER COLUMN id SET DEFAULT nextval('public.discaltest_api_userprofile_groups_id_seq'::regclass);


--
-- TOC entry 2800 (class 2604 OID 16617)
-- Name: discaltest_api_userprofile_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.discaltest_api_userprofile_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.discaltest_api_userprofile_user_permissions_id_seq'::regclass);


--
-- TOC entry 2805 (class 2604 OID 16764)
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- TOC entry 2794 (class 2604 OID 16537)
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- TOC entry 2793 (class 2604 OID 16526)
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- TOC entry 3038 (class 0 OID 16552)
-- Dependencies: 209
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- TOC entry 3040 (class 0 OID 16562)
-- Dependencies: 211
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- TOC entry 3036 (class 0 OID 16544)
-- Dependencies: 207
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add content type	4	add_contenttype
14	Can change content type	4	change_contenttype
15	Can delete content type	4	delete_contenttype
16	Can view content type	4	view_contenttype
17	Can add session	5	add_session
18	Can change session	5	change_session
19	Can delete session	5	delete_session
20	Can view session	5	view_session
21	Can add Token	6	add_token
22	Can change Token	6	change_token
23	Can delete Token	6	delete_token
24	Can view Token	6	view_token
25	Can add token	7	add_tokenproxy
26	Can change token	7	change_tokenproxy
27	Can delete token	7	delete_tokenproxy
28	Can view token	7	view_tokenproxy
29	Can add user profile	8	add_userprofile
30	Can change user profile	8	change_userprofile
31	Can delete user profile	8	delete_userprofile
32	Can view user profile	8	view_userprofile
33	Can add alumnos	9	add_alumnos
34	Can change alumnos	9	change_alumnos
35	Can delete alumnos	9	delete_alumnos
36	Can view alumnos	9	view_alumnos
37	Can add entidad	10	add_entidad
38	Can change entidad	10	change_entidad
39	Can delete entidad	10	delete_entidad
40	Can view entidad	10	view_entidad
41	Can add profesor	11	add_profesor
42	Can change profesor	11	change_profesor
43	Can delete profesor	11	delete_profesor
44	Can view profesor	11	view_profesor
45	Can add question	12	add_question
46	Can change question	12	change_question
47	Can delete question	12	delete_question
48	Can view question	12	view_question
49	Can add profesor question	13	add_profesorquestion
50	Can change profesor question	13	change_profesorquestion
51	Can delete profesor question	13	delete_profesorquestion
52	Can view profesor question	13	view_profesorquestion
53	Can add alu question	14	add_aluquestion
54	Can change alu question	14	change_aluquestion
55	Can delete alu question	14	delete_aluquestion
56	Can view alu question	14	view_aluquestion
57	Can add alu profe	15	add_aluprofe
58	Can change alu profe	15	change_aluprofe
59	Can delete alu profe	15	delete_aluprofe
60	Can view alu profe	15	view_aluprofe
61	Can add ejercitario	16	add_ejercitario
62	Can change ejercitario	16	change_ejercitario
63	Can delete ejercitario	16	delete_ejercitario
64	Can view ejercitario	16	view_ejercitario
65	Can add item question	17	add_itemquestion
66	Can change item question	17	change_itemquestion
67	Can delete item question	17	delete_itemquestion
68	Can view item question	17	view_itemquestion
69	Can add area	18	add_area
70	Can change area	18	change_area
71	Can delete area	18	delete_area
72	Can view area	18	view_area
73	Can add resultado test	19	add_resultadotest
74	Can change resultado test	19	change_resultadotest
75	Can delete resultado test	19	delete_resultadotest
76	Can view resultado test	19	view_resultadotest
77	Can add resultado item	20	add_resultadoitem
78	Can change resultado item	20	change_resultadoitem
79	Can delete resultado item	20	delete_resultadoitem
80	Can view resultado item	20	view_resultadoitem
81	Can add resultado	21	add_resultado
82	Can change resultado	21	change_resultado
83	Can delete resultado	21	delete_resultado
84	Can view resultado	21	view_resultado
85	Can add lista items	22	add_listaitems
86	Can change lista items	22	change_listaitems
87	Can delete lista items	22	delete_listaitems
88	Can view lista items	22	view_listaitems
89	Can add vista resultados	23	add_vistaresultados
90	Can change vista resultados	23	change_vistaresultados
91	Can delete vista resultados	23	delete_vistaresultados
92	Can view vista resultados	23	view_vistaresultados
93	Can add resultados	24	add_resultados
94	Can change resultados	24	change_resultados
95	Can delete resultados	24	delete_resultados
96	Can view resultados	24	view_resultados
\.


--
-- TOC entry 3057 (class 0 OID 16783)
-- Dependencies: 228
-- Data for Name: authtoken_token; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.authtoken_token (key, created, user_id) FROM stdin;
aa1ee13b1b10efd0e9dc6da137f490f92aa008f4	2021-10-03 16:12:06.904508-03	1
a8a88d76b5d3daa76f29b144d1d9da11b57b39b8	2021-11-02 21:56:18.160214-03	4
\.


--
-- TOC entry 3048 (class 0 OID 16622)
-- Dependencies: 219
-- Data for Name: discaltest_api_alumnos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.discaltest_api_alumnos (id, id_entidad_id) FROM stdin;
1	5
2	6
4	2
5	7
6	23
7	24
8	25
9	26
10	27
11	28
12	29
13	30
14	31
15	32
17	34
18	35
19	36
20	37
21	38
22	39
23	40
24	41
25	42
26	43
\.


--
-- TOC entry 3054 (class 0 OID 16670)
-- Dependencies: 225
-- Data for Name: discaltest_api_aluprofe; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.discaltest_api_aluprofe (id, id_alumno_id, id_profesor_id) FROM stdin;
1	1	2
3	2	2
4	4	2
5	5	2
6	7	2
7	8	2
8	9	2
9	10	2
10	11	2
11	12	2
12	13	2
13	14	2
14	15	2
16	17	2
17	18	2
18	19	2
19	20	2
20	21	2
21	22	2
22	23	2
23	24	2
24	25	2
25	26	2
\.


--
-- TOC entry 3060 (class 0 OID 25169)
-- Dependencies: 231
-- Data for Name: discaltest_api_area; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.discaltest_api_area (id, descripcion, "pEsperado") FROM stdin;
1	Contar	8
2	Numerar	5
3	Comprension del Sitema Númérico	25
5	Operaciones	10
6	Estimación del Tamaño	6
4	Operaciones Lógicas	13
\.


--
-- TOC entry 3050 (class 0 OID 16630)
-- Dependencies: 221
-- Data for Name: discaltest_api_entidad; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.discaltest_api_entidad (id, tipo_entidad, nombre, apellido, telefono, direccion, id_usuario_id, nro_documento) FROM stdin;
1	Ad	Genaro Moises	Montania Lopez	(0973) 109 293	Enrique Segoviano	1	6232541
4	Pr	Maria	Escobar	(0975) 159 789	Idraulica	4	159874651
6	Al	Luana Lucia	Montania Espinola	(0973) 123 456	Km 5 1/2 la blanca	\N	45678912
2	Al	Rocio Celeste	Martinez Franco	(0975) 986 246	Idraulica	\N	1598746
7	Al	Blanca Maria	Barro López	(0973) 145 116	Km 10 Acaray	\N	4567892
23	Al	Eder Miguel	Escobar Quintana	(0973) 456789	idraulica	\N	8975461
24	Al	Mauro Miguel	Céspedes Enciso	0975 487-596	km 11 Acaray	\N	7891256
25	Al	Ulises	Benitez	0973 123 567	idraulica	\N	457812135
26	Al	Joela	Escobar	0976854789	km 11	\N	5636778
27	Al	Ricardo David	Montania López	0973 102 246	Km 11 Acaray	\N	58978946
28	Al	Diego	Lusberg	0994365511	CDE	\N	4790703
39	Al	Camila Lujan	Leiva	00000000000	Av. San JOsé	\N	7374750
40	Al	Fiorela Jazmin	Medina Lugo	00000001	Av. San José	\N	6231549
42	Al	Luz Macarena	Barrios	000000003	km 6 1/2	\N	6234541
41	Al	Ivan Rodrigo	Aquino	000000002	km 7	\N	7569446
32	Al	Gisseli Belen	Arguello	097312346	Villa Fani	\N	7784253
37	Al	Jorge Gabriel	Ayala	0973058974	Km 7 Ciudad Nueva	\N	7434128
38	Al	Carlos Daniel	Barrios Molinas	0973156489	km 7 Ciudad Nueva	\N	7927300
34	Al	Victor Ramon	Bernal	0973012456	Av San Jose	\N	77486700
36	Al	Diana Belen	Cáceres Aquino	0973109145	Av. San José	\N	7926868
43	Al	Marta Noemi	Cardozo Rojas	0976825484	km 6 1/2 san isidro	\N	7773537
35	Al	Guillermo de Jesus	Ortigoza	0973103456	Km 7 Ciudad Nueva	\N	7313321
30	Al	Luana	Villalba  Cano	0973478159	Villa Fani	\N	7650211
31	Al	Jonas Javier	Gimenez	0973159456	Villa Fani	\N	7650212
29	Al	Luana Lucia	Montania Espinola	(0973) 123 456	Km 5 1/2 la blanca	\N	7914188
5	Al	Silvia Arami	Montania Escobar	(0973) 467 789	KM 7 Ciudad Nueva	\N	8597412
\.


--
-- TOC entry 3052 (class 0 OID 16638)
-- Dependencies: 223
-- Data for Name: discaltest_api_profesor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.discaltest_api_profesor (id, id_entidad_id, curso) FROM stdin;
2	4	3
\.


--
-- TOC entry 3064 (class 0 OID 25445)
-- Dependencies: 235
-- Data for Name: discaltest_api_resultadoitem; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.discaltest_api_resultadoitem (id, "pObtenido", indicador, observacion, id_area_id, "id_resultadoTest_id") FROM stdin;
568	6	N	El/la niño/a tiene un buen rendimiento	1	36
569	4	N	El/la niño/a tiene un buen rendimiento	2	36
570	19	N	El/la niño/a tiene un buen rendimiento	3	36
571	9	N	El/la niño/a tiene un buen rendimiento	4	36
572	10	N	El/la niño/a tiene un buen rendimiento	5	36
573	4	N	El/la niño/a tiene un buen rendimiento	6	36
\.


--
-- TOC entry 3062 (class 0 OID 25279)
-- Dependencies: 233
-- Data for Name: discaltest_api_resultadotest; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.discaltest_api_resultadotest (id, indicador, observacion, id_alumno_id, id_profesor_id) FROM stdin;
34	\N	\N	11	2
35	\N	\N	15	2
36	N	\N	20	2
\.


--
-- TOC entry 3042 (class 0 OID 16596)
-- Dependencies: 213
-- Data for Name: discaltest_api_userprofile; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.discaltest_api_userprofile (password, last_login, is_superuser, id, loggin, is_active) FROM stdin;
Ara03082019	\N	f	5	AramiMontania	t
123456	\N	f	6	SilvioMontania	t
123456	\N	f	7	Luana	f
123456	\N	f	8	Luana	f
pbkdf2_sha256$260000$Ho9Xstfn1Uhfu6IMSmQCZT$rfrhNTJrT7nolu6ukmFzdTMrV/IBQgpIOo7svH/8XVQ=	\N	f	10	Ricardo	f
pbkdf2_sha256$260000$808eGHM4AePWsXdhFRJEkl$M7VDdTSz50X24VGiQ6msw/WDNiXkjMdCZnwtuYmgZrU=	\N	f	11	Aldana	f
pbkdf2_sha256$260000$DB1mIceJezQCxhfyabEgLh$vYAWyY8oN7WC+rF37gnAb5LB9p+dBxJ79cGPGR4uz28=	\N	f	1	Moises 2021	t
pbkdf2_sha256$260000$zec7Oba1LqWWmFYiDkvSuH$nRk0OpGI/3biHiL1avWlItepEgF7hWX8PYA8VZWhPDY=	\N	f	4	Profe Josefina	t
\.


--
-- TOC entry 3044 (class 0 OID 16606)
-- Dependencies: 215
-- Data for Name: discaltest_api_userprofile_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.discaltest_api_userprofile_groups (id, userprofile_id, group_id) FROM stdin;
\.


--
-- TOC entry 3046 (class 0 OID 16614)
-- Dependencies: 217
-- Data for Name: discaltest_api_userprofile_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.discaltest_api_userprofile_user_permissions (id, userprofile_id, permission_id) FROM stdin;
\.


--
-- TOC entry 3056 (class 0 OID 16761)
-- Dependencies: 227
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- TOC entry 3034 (class 0 OID 16534)
-- Dependencies: 205
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	contenttypes	contenttype
5	sessions	session
6	authtoken	token
7	authtoken	tokenproxy
8	discaltest_api	userprofile
9	discaltest_api	alumnos
10	discaltest_api	entidad
11	discaltest_api	profesor
12	discaltest_api	question
13	discaltest_api	profesorquestion
14	discaltest_api	aluquestion
15	discaltest_api	aluprofe
16	discaltest_api	ejercitario
17	discaltest_api	itemquestion
18	discaltest_api	area
19	discaltest_api	resultadotest
20	discaltest_api	resultadoitem
21	discaltest_api	resultado
22	discaltest_api	listaitems
23	discaltest_api	vistaresultados
24	discaltest_api	resultados
\.


--
-- TOC entry 3032 (class 0 OID 16523)
-- Dependencies: 203
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2021-07-11 19:34:29.606304-04
2	contenttypes	0002_remove_content_type_name	2021-07-11 19:34:29.622289-04
3	auth	0001_initial	2021-07-11 19:34:29.6821-04
4	auth	0002_alter_permission_name_max_length	2021-07-11 19:34:29.688086-04
5	auth	0003_alter_user_email_max_length	2021-07-11 19:34:29.694068-04
6	auth	0004_alter_user_username_opts	2021-07-11 19:34:29.701052-04
7	auth	0005_alter_user_last_login_null	2021-07-11 19:34:29.710025-04
8	auth	0006_require_contenttypes_0002	2021-07-11 19:34:29.71202-04
9	auth	0007_alter_validators_add_error_messages	2021-07-11 19:34:29.721993-04
10	auth	0008_alter_user_username_max_length	2021-07-11 19:34:29.729972-04
11	auth	0009_alter_user_last_name_max_length	2021-07-11 19:34:29.738947-04
12	auth	0010_alter_group_name_max_length	2021-07-11 19:34:29.75593-04
13	auth	0011_update_proxy_permissions	2021-07-11 19:34:29.761885-04
14	auth	0012_alter_user_first_name_max_length	2021-07-11 19:34:29.769865-04
15	discaltest_api	0001_initial	2021-07-11 19:34:29.9145-04
16	admin	0001_initial	2021-07-11 19:34:29.960677-04
17	admin	0002_logentry_remove_auto_add	2021-07-11 19:34:29.969655-04
18	admin	0003_logentry_add_action_flag_choices	2021-07-11 19:34:29.985612-04
19	authtoken	0001_initial	2021-07-11 19:34:30.014554-04
20	authtoken	0002_auto_20160226_1747	2021-07-11 19:34:30.061413-04
21	authtoken	0003_tokenproxy	2021-07-11 19:34:30.065431-04
22	discaltest_api	0002_auto_20210711_1934	2021-07-11 19:34:30.108285-04
23	sessions	0001_initial	2021-07-11 19:34:30.125238-04
24	discaltest_api	0003_auto_20210711_2003	2021-07-11 20:03:29.070169-04
25	discaltest_api	0004_alter_ejercitario_area	2021-07-12 21:28:10.773519-04
26	discaltest_api	0005_auto_20210712_2212	2021-07-12 22:13:18.868637-04
27	discaltest_api	0006_profesor_curso	2021-07-12 22:36:51.256713-04
28	discaltest_api	0007_remove_ejercitario_descripcion	2021-07-24 20:31:36.313273-04
29	discaltest_api	0008_auto_20210913_2005	2021-09-13 20:06:00.840393-04
30	discaltest_api	0009_alter_resultadotest_diagnostico	2021-09-14 12:05:07.225009-04
31	discaltest_api	0010_alter_entidad_nro_documento	2021-09-14 19:46:06.625532-04
32	discaltest_api	0011_delete_resultadotest	2021-09-16 21:45:39.799799-04
33	discaltest_api	0012_resultadoitem_resultadotest	2021-09-16 21:47:28.676476-04
34	discaltest_api	0013_auto_20210916_2247	2021-09-16 22:47:15.059763-04
35	discaltest_api	0014_resultadoitem_resultadotest	2021-09-16 22:47:37.367841-04
36	discaltest_api	0015_auto_20210918_2138	2021-09-18 21:39:08.192426-04
37	discaltest_api	0016_resultadoitem_resultadotest	2021-09-18 21:43:48.743457-04
38	discaltest_api	0017_resultado	2021-09-19 22:38:37.83437-04
39	discaltest_api	0018_auto_20210919_2253	2021-09-19 22:53:56.928038-04
40	discaltest_api	0019_delete_resultadoitem	2021-09-19 22:55:49.418002-04
41	discaltest_api	0020_resultadoitem	2021-09-19 22:58:17.036821-04
42	discaltest_api	0021_listaitems	2021-09-19 23:02:27.185277-04
43	discaltest_api	0022_auto_20210919_2306	2021-09-19 23:06:39.690681-04
44	discaltest_api	0023_delete_listaitems	2021-09-21 21:01:38.341432-04
45	discaltest_api	0024_alter_area_descripcion	2021-09-27 22:57:35.862446-04
46	discaltest_api	0025_alter_area_descripcion	2021-09-27 22:59:46.052769-04
47	discaltest_api	0026_listaitems	2021-09-27 23:24:54.933017-04
48	discaltest_api	0027_delete_listaitems	2021-09-27 23:25:40.480818-04
49	discaltest_api	0028_alter_resultadoitem_id_area	2021-10-01 14:42:46.736172-04
50	discaltest_api	0029_alter_resultadoitem_id_area	2021-10-02 13:52:24.506255-04
51	discaltest_api	0030_delete_resultadoitem	2021-10-02 14:13:17.812749-04
52	discaltest_api	0031_resultadoitem	2021-10-02 14:14:46.994455-04
53	discaltest_api	0032_auto_20211002_1434	2021-10-02 14:35:07.611786-04
54	discaltest_api	0033_alter_resultadoitem_id_resultadotest	2021-10-02 22:25:43.071251-04
55	discaltest_api	0034_alter_resultadoitem_id_resultadotest	2021-10-02 22:25:43.125206-04
56	discaltest_api	0035_delete_resultadoitem	2021-10-10 16:40:42.226562-03
57	discaltest_api	0036_resultadoitem	2021-10-10 16:43:17.259295-03
58	discaltest_api	0037_alter_entidad_id_usuario	2021-10-16 15:44:43.402892-03
59	discaltest_api	0038_alter_resultadoitem_observacion	2021-10-18 11:00:03.903538-03
60	discaltest_api	0039_auto_20211030_2254	2021-10-30 22:55:02.445947-03
61	discaltest_api	0040_delete_vistaresultados	2021-10-31 14:27:16.85315-03
62	discaltest_api	0041_resultados	2021-10-31 15:38:41.954992-03
63	discaltest_api	0042_auto_20211031_1538	2021-10-31 15:38:41.970074-03
64	discaltest_api	0043_delete_vistaresultados	2021-10-31 15:47:25.074575-03
65	discaltest_api	0044_vistaresultados	2021-10-31 15:47:42.311376-03
66	discaltest_api	0045_delete_vistaresultados	2021-10-31 16:34:06.189414-03
67	discaltest_api	0046_vistaresultados	2021-10-31 16:34:46.852165-03
68	discaltest_api	0047_delete_vistaresultados	2021-10-31 17:47:32.835607-03
69	discaltest_api	0048_vistaresultados	2021-10-31 17:48:57.381149-03
70	discaltest_api	0049_resultados	2021-10-31 20:17:46.387813-03
71	discaltest_api	0050_delete_resultados	2021-10-31 20:30:59.113722-03
72	discaltest_api	0051_resultados	2021-10-31 20:31:26.318518-03
73	discaltest_api	0052_delete_resultados	2021-10-31 20:36:19.672447-03
74	discaltest_api	0053_resultados	2021-10-31 20:37:06.781898-03
75	discaltest_api	0054_delete_vistaresultados	2021-11-01 23:07:46.731305-03
76	discaltest_api	0055_alter_entidad_telefono	2021-11-06 10:01:58.937396-03
\.


--
-- TOC entry 3058 (class 0 OID 16824)
-- Dependencies: 229
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- TOC entry 3086 (class 0 OID 0)
-- Dependencies: 208
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- TOC entry 3087 (class 0 OID 0)
-- Dependencies: 210
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- TOC entry 3088 (class 0 OID 0)
-- Dependencies: 206
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 96, true);


--
-- TOC entry 3089 (class 0 OID 0)
-- Dependencies: 218
-- Name: discaltest_api_alumnos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.discaltest_api_alumnos_id_seq', 26, true);


--
-- TOC entry 3090 (class 0 OID 0)
-- Dependencies: 224
-- Name: discaltest_api_aluprofe_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.discaltest_api_aluprofe_id_seq', 25, true);


--
-- TOC entry 3091 (class 0 OID 0)
-- Dependencies: 230
-- Name: discaltest_api_area_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.discaltest_api_area_id_seq', 7, true);


--
-- TOC entry 3092 (class 0 OID 0)
-- Dependencies: 220
-- Name: discaltest_api_entidad_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.discaltest_api_entidad_id_seq', 43, true);


--
-- TOC entry 3093 (class 0 OID 0)
-- Dependencies: 222
-- Name: discaltest_api_profesor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.discaltest_api_profesor_id_seq', 2, true);


--
-- TOC entry 3094 (class 0 OID 0)
-- Dependencies: 234
-- Name: discaltest_api_resultadoitem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.discaltest_api_resultadoitem_id_seq', 573, true);


--
-- TOC entry 3095 (class 0 OID 0)
-- Dependencies: 232
-- Name: discaltest_api_resultadotest_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.discaltest_api_resultadotest_id_seq', 36, true);


--
-- TOC entry 3096 (class 0 OID 0)
-- Dependencies: 214
-- Name: discaltest_api_userprofile_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.discaltest_api_userprofile_groups_id_seq', 1, false);


--
-- TOC entry 3097 (class 0 OID 0)
-- Dependencies: 212
-- Name: discaltest_api_userprofile_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.discaltest_api_userprofile_id_seq', 11, true);


--
-- TOC entry 3098 (class 0 OID 0)
-- Dependencies: 216
-- Name: discaltest_api_userprofile_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.discaltest_api_userprofile_user_permissions_id_seq', 1, false);


--
-- TOC entry 3099 (class 0 OID 0)
-- Dependencies: 226
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- TOC entry 3100 (class 0 OID 0)
-- Dependencies: 204
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 24, true);


--
-- TOC entry 3101 (class 0 OID 0)
-- Dependencies: 202
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 76, true);


--
-- TOC entry 2823 (class 2606 OID 16592)
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- TOC entry 2828 (class 2606 OID 16578)
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- TOC entry 2831 (class 2606 OID 16567)
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 2825 (class 2606 OID 16557)
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- TOC entry 2818 (class 2606 OID 16569)
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- TOC entry 2820 (class 2606 OID 16549)
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- TOC entry 2868 (class 2606 OID 16787)
-- Name: authtoken_token authtoken_token_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_pkey PRIMARY KEY (key);


--
-- TOC entry 2870 (class 2606 OID 16789)
-- Name: authtoken_token authtoken_token_user_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_user_id_key UNIQUE (user_id);


--
-- TOC entry 2848 (class 2606 OID 16627)
-- Name: discaltest_api_alumnos discaltest_api_alumnos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.discaltest_api_alumnos
    ADD CONSTRAINT discaltest_api_alumnos_pkey PRIMARY KEY (id);


--
-- TOC entry 2861 (class 2606 OID 16675)
-- Name: discaltest_api_aluprofe discaltest_api_aluprofe_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.discaltest_api_aluprofe
    ADD CONSTRAINT discaltest_api_aluprofe_pkey PRIMARY KEY (id);


--
-- TOC entry 2876 (class 2606 OID 25174)
-- Name: discaltest_api_area discaltest_api_area_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.discaltest_api_area
    ADD CONSTRAINT discaltest_api_area_pkey PRIMARY KEY (id);


--
-- TOC entry 2852 (class 2606 OID 25194)
-- Name: discaltest_api_entidad discaltest_api_entidad_nro_documento_7df8b143_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.discaltest_api_entidad
    ADD CONSTRAINT discaltest_api_entidad_nro_documento_7df8b143_uniq UNIQUE (nro_documento);


--
-- TOC entry 2854 (class 2606 OID 16635)
-- Name: discaltest_api_entidad discaltest_api_entidad_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.discaltest_api_entidad
    ADD CONSTRAINT discaltest_api_entidad_pkey PRIMARY KEY (id);


--
-- TOC entry 2857 (class 2606 OID 16643)
-- Name: discaltest_api_profesor discaltest_api_profesor_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.discaltest_api_profesor
    ADD CONSTRAINT discaltest_api_profesor_pkey PRIMARY KEY (id);


--
-- TOC entry 2884 (class 2606 OID 25450)
-- Name: discaltest_api_resultadoitem discaltest_api_resultadoitem_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.discaltest_api_resultadoitem
    ADD CONSTRAINT discaltest_api_resultadoitem_pkey PRIMARY KEY (id);


--
-- TOC entry 2880 (class 2606 OID 25284)
-- Name: discaltest_api_resultadotest discaltest_api_resultadotest_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.discaltest_api_resultadotest
    ADD CONSTRAINT discaltest_api_resultadotest_pkey PRIMARY KEY (id);


--
-- TOC entry 2835 (class 2606 OID 16683)
-- Name: discaltest_api_userprofile_groups discaltest_api_userprofi_userprofile_id_group_id_8575c3f9_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.discaltest_api_userprofile_groups
    ADD CONSTRAINT discaltest_api_userprofi_userprofile_id_group_id_8575c3f9_uniq UNIQUE (userprofile_id, group_id);


--
-- TOC entry 2841 (class 2606 OID 16697)
-- Name: discaltest_api_userprofile_user_permissions discaltest_api_userprofi_userprofile_id_permissio_1b6ee980_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.discaltest_api_userprofile_user_permissions
    ADD CONSTRAINT discaltest_api_userprofi_userprofile_id_permissio_1b6ee980_uniq UNIQUE (userprofile_id, permission_id);


--
-- TOC entry 2838 (class 2606 OID 16611)
-- Name: discaltest_api_userprofile_groups discaltest_api_userprofile_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.discaltest_api_userprofile_groups
    ADD CONSTRAINT discaltest_api_userprofile_groups_pkey PRIMARY KEY (id);


--
-- TOC entry 2833 (class 2606 OID 16601)
-- Name: discaltest_api_userprofile discaltest_api_userprofile_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.discaltest_api_userprofile
    ADD CONSTRAINT discaltest_api_userprofile_pkey PRIMARY KEY (id);


--
-- TOC entry 2844 (class 2606 OID 16619)
-- Name: discaltest_api_userprofile_user_permissions discaltest_api_userprofile_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.discaltest_api_userprofile_user_permissions
    ADD CONSTRAINT discaltest_api_userprofile_user_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 2864 (class 2606 OID 16770)
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- TOC entry 2813 (class 2606 OID 16541)
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- TOC entry 2815 (class 2606 OID 16539)
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- TOC entry 2811 (class 2606 OID 16531)
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- TOC entry 2873 (class 2606 OID 16831)
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- TOC entry 2821 (class 1259 OID 16593)
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- TOC entry 2826 (class 1259 OID 16589)
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- TOC entry 2829 (class 1259 OID 16590)
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- TOC entry 2816 (class 1259 OID 16575)
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- TOC entry 2866 (class 1259 OID 16795)
-- Name: authtoken_token_key_10f0b77e_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX authtoken_token_key_10f0b77e_like ON public.authtoken_token USING btree (key varchar_pattern_ops);


--
-- TOC entry 2846 (class 1259 OID 16758)
-- Name: discaltest_api_alumnos_id_entidad_id_df577318; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX discaltest_api_alumnos_id_entidad_id_df577318 ON public.discaltest_api_alumnos USING btree (id_entidad_id);


--
-- TOC entry 2858 (class 1259 OID 16756)
-- Name: discaltest_api_aluprofe_id_alumno_id_fc852f59; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX discaltest_api_aluprofe_id_alumno_id_fc852f59 ON public.discaltest_api_aluprofe USING btree (id_alumno_id);


--
-- TOC entry 2859 (class 1259 OID 16757)
-- Name: discaltest_api_aluprofe_id_profedor_id_78a81bff; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX discaltest_api_aluprofe_id_profedor_id_78a81bff ON public.discaltest_api_aluprofe USING btree (id_profesor_id);


--
-- TOC entry 2849 (class 1259 OID 16715)
-- Name: discaltest_api_entidad_id_usuario_id_ff7aff57; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX discaltest_api_entidad_id_usuario_id_ff7aff57 ON public.discaltest_api_entidad USING btree (id_usuario_id);


--
-- TOC entry 2850 (class 1259 OID 25195)
-- Name: discaltest_api_entidad_nro_documento_7df8b143_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX discaltest_api_entidad_nro_documento_7df8b143_like ON public.discaltest_api_entidad USING btree (nro_documento varchar_pattern_ops);


--
-- TOC entry 2855 (class 1259 OID 16721)
-- Name: discaltest_api_profesor_id_entidad_id_dcee73db; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX discaltest_api_profesor_id_entidad_id_dcee73db ON public.discaltest_api_profesor USING btree (id_entidad_id);


--
-- TOC entry 2881 (class 1259 OID 25461)
-- Name: discaltest_api_resultadoitem_id_area_id_99a68086; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX discaltest_api_resultadoitem_id_area_id_99a68086 ON public.discaltest_api_resultadoitem USING btree (id_area_id);


--
-- TOC entry 2882 (class 1259 OID 25462)
-- Name: discaltest_api_resultadoitem_id_resultadoTest_id_10653a5d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "discaltest_api_resultadoitem_id_resultadoTest_id_10653a5d" ON public.discaltest_api_resultadoitem USING btree ("id_resultadoTest_id");


--
-- TOC entry 2877 (class 1259 OID 25303)
-- Name: discaltest_api_resultadotest_id_alumno_id_cdd24346; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX discaltest_api_resultadotest_id_alumno_id_cdd24346 ON public.discaltest_api_resultadotest USING btree (id_alumno_id);


--
-- TOC entry 2878 (class 1259 OID 25304)
-- Name: discaltest_api_resultadotest_id_profesor_id_be43f297; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX discaltest_api_resultadotest_id_profesor_id_be43f297 ON public.discaltest_api_resultadotest USING btree (id_profesor_id);


--
-- TOC entry 2836 (class 1259 OID 16695)
-- Name: discaltest_api_userprofile_groups_group_id_12655e6e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX discaltest_api_userprofile_groups_group_id_12655e6e ON public.discaltest_api_userprofile_groups USING btree (group_id);


--
-- TOC entry 2839 (class 1259 OID 16694)
-- Name: discaltest_api_userprofile_groups_userprofile_id_800cc94b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX discaltest_api_userprofile_groups_userprofile_id_800cc94b ON public.discaltest_api_userprofile_groups USING btree (userprofile_id);


--
-- TOC entry 2842 (class 1259 OID 16709)
-- Name: discaltest_api_userprofile_permission_id_a7f5992e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX discaltest_api_userprofile_permission_id_a7f5992e ON public.discaltest_api_userprofile_user_permissions USING btree (permission_id);


--
-- TOC entry 2845 (class 1259 OID 16708)
-- Name: discaltest_api_userprofile_userprofile_id_c0555c74; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX discaltest_api_userprofile_userprofile_id_c0555c74 ON public.discaltest_api_userprofile_user_permissions USING btree (userprofile_id);


--
-- TOC entry 2862 (class 1259 OID 16781)
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- TOC entry 2865 (class 1259 OID 16782)
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- TOC entry 2871 (class 1259 OID 16833)
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- TOC entry 2874 (class 1259 OID 16832)
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- TOC entry 2887 (class 2606 OID 16584)
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2886 (class 2606 OID 16579)
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2885 (class 2606 OID 16570)
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2899 (class 2606 OID 16790)
-- Name: authtoken_token authtoken_token_user_id_35299eff_fk_discaltes; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_user_id_35299eff_fk_discaltes FOREIGN KEY (user_id) REFERENCES public.discaltest_api_userprofile(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2892 (class 2606 OID 16676)
-- Name: discaltest_api_alumnos discaltest_api_alumn_id_entidad_id_df577318_fk_discaltes; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.discaltest_api_alumnos
    ADD CONSTRAINT discaltest_api_alumn_id_entidad_id_df577318_fk_discaltes FOREIGN KEY (id_entidad_id) REFERENCES public.discaltest_api_entidad(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2895 (class 2606 OID 16746)
-- Name: discaltest_api_aluprofe discaltest_api_alupr_id_alumno_id_fc852f59_fk_discaltes; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.discaltest_api_aluprofe
    ADD CONSTRAINT discaltest_api_alupr_id_alumno_id_fc852f59_fk_discaltes FOREIGN KEY (id_alumno_id) REFERENCES public.discaltest_api_alumnos(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2896 (class 2606 OID 16835)
-- Name: discaltest_api_aluprofe discaltest_api_alupr_id_profesor_id_df844cf1_fk_discaltes; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.discaltest_api_aluprofe
    ADD CONSTRAINT discaltest_api_alupr_id_profesor_id_df844cf1_fk_discaltes FOREIGN KEY (id_profesor_id) REFERENCES public.discaltest_api_profesor(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2893 (class 2606 OID 33843)
-- Name: discaltest_api_entidad discaltest_api_entid_id_usuario_id_ff7aff57_fk_discaltes; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.discaltest_api_entidad
    ADD CONSTRAINT discaltest_api_entid_id_usuario_id_ff7aff57_fk_discaltes FOREIGN KEY (id_usuario_id) REFERENCES public.discaltest_api_userprofile(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2894 (class 2606 OID 16716)
-- Name: discaltest_api_profesor discaltest_api_profe_id_entidad_id_dcee73db_fk_discaltes; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.discaltest_api_profesor
    ADD CONSTRAINT discaltest_api_profe_id_entidad_id_dcee73db_fk_discaltes FOREIGN KEY (id_entidad_id) REFERENCES public.discaltest_api_entidad(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2900 (class 2606 OID 25293)
-- Name: discaltest_api_resultadotest discaltest_api_resul_id_alumno_id_cdd24346_fk_discaltes; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.discaltest_api_resultadotest
    ADD CONSTRAINT discaltest_api_resul_id_alumno_id_cdd24346_fk_discaltes FOREIGN KEY (id_alumno_id) REFERENCES public.discaltest_api_alumnos(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2902 (class 2606 OID 25451)
-- Name: discaltest_api_resultadoitem discaltest_api_resul_id_area_id_99a68086_fk_discaltes; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.discaltest_api_resultadoitem
    ADD CONSTRAINT discaltest_api_resul_id_area_id_99a68086_fk_discaltes FOREIGN KEY (id_area_id) REFERENCES public.discaltest_api_area(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2901 (class 2606 OID 25298)
-- Name: discaltest_api_resultadotest discaltest_api_resul_id_profesor_id_be43f297_fk_discaltes; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.discaltest_api_resultadotest
    ADD CONSTRAINT discaltest_api_resul_id_profesor_id_be43f297_fk_discaltes FOREIGN KEY (id_profesor_id) REFERENCES public.discaltest_api_profesor(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2903 (class 2606 OID 25456)
-- Name: discaltest_api_resultadoitem discaltest_api_resul_id_resultadoTest_id_10653a5d_fk_discaltes; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.discaltest_api_resultadoitem
    ADD CONSTRAINT "discaltest_api_resul_id_resultadoTest_id_10653a5d_fk_discaltes" FOREIGN KEY ("id_resultadoTest_id") REFERENCES public.discaltest_api_resultadotest(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2889 (class 2606 OID 16689)
-- Name: discaltest_api_userprofile_groups discaltest_api_userp_group_id_12655e6e_fk_auth_grou; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.discaltest_api_userprofile_groups
    ADD CONSTRAINT discaltest_api_userp_group_id_12655e6e_fk_auth_grou FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2891 (class 2606 OID 16703)
-- Name: discaltest_api_userprofile_user_permissions discaltest_api_userp_permission_id_a7f5992e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.discaltest_api_userprofile_user_permissions
    ADD CONSTRAINT discaltest_api_userp_permission_id_a7f5992e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2888 (class 2606 OID 16684)
-- Name: discaltest_api_userprofile_groups discaltest_api_userp_userprofile_id_800cc94b_fk_discaltes; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.discaltest_api_userprofile_groups
    ADD CONSTRAINT discaltest_api_userp_userprofile_id_800cc94b_fk_discaltes FOREIGN KEY (userprofile_id) REFERENCES public.discaltest_api_userprofile(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2890 (class 2606 OID 16698)
-- Name: discaltest_api_userprofile_user_permissions discaltest_api_userp_userprofile_id_c0555c74_fk_discaltes; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.discaltest_api_userprofile_user_permissions
    ADD CONSTRAINT discaltest_api_userp_userprofile_id_c0555c74_fk_discaltes FOREIGN KEY (userprofile_id) REFERENCES public.discaltest_api_userprofile(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2897 (class 2606 OID 16771)
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2898 (class 2606 OID 16776)
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_discaltes; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_discaltes FOREIGN KEY (user_id) REFERENCES public.discaltest_api_userprofile(id) DEFERRABLE INITIALLY DEFERRED;


-- Completed on 2021-11-06 10:06:47

--
-- PostgreSQL database dump complete
--

