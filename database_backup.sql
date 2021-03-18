--
-- PostgreSQL database dump
--

-- Dumped from database version 12.6
-- Dumped by pg_dump version 12.6

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
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: Micah
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO "Micah";

--
-- Name: recipes; Type: TABLE; Schema: public; Owner: Micah
--

CREATE TABLE public.recipes (
    id bigint NOT NULL,
    title character varying,
    instruction_set character varying,
    ingredient_set character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.recipes OWNER TO "Micah";

--
-- Name: recipes_id_seq; Type: SEQUENCE; Schema: public; Owner: Micah
--

CREATE SEQUENCE public.recipes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.recipes_id_seq OWNER TO "Micah";

--
-- Name: recipes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Micah
--

ALTER SEQUENCE public.recipes_id_seq OWNED BY public.recipes.id;


--
-- Name: recipes_tags; Type: TABLE; Schema: public; Owner: Micah
--

CREATE TABLE public.recipes_tags (
    recipe_id bigint,
    tag_id bigint
);


ALTER TABLE public.recipes_tags OWNER TO "Micah";

--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: Micah
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO "Micah";

--
-- Name: tags; Type: TABLE; Schema: public; Owner: Micah
--

CREATE TABLE public.tags (
    id bigint NOT NULL,
    tag character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.tags OWNER TO "Micah";

--
-- Name: tags_id_seq; Type: SEQUENCE; Schema: public; Owner: Micah
--

CREATE SEQUENCE public.tags_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tags_id_seq OWNER TO "Micah";

--
-- Name: tags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Micah
--

ALTER SEQUENCE public.tags_id_seq OWNED BY public.tags.id;


--
-- Name: recipes id; Type: DEFAULT; Schema: public; Owner: Micah
--

ALTER TABLE ONLY public.recipes ALTER COLUMN id SET DEFAULT nextval('public.recipes_id_seq'::regclass);


--
-- Name: tags id; Type: DEFAULT; Schema: public; Owner: Micah
--

ALTER TABLE ONLY public.tags ALTER COLUMN id SET DEFAULT nextval('public.tags_id_seq'::regclass);


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: Micah
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2021-03-17 16:55:59.298412	2021-03-17 16:55:59.298412
\.


--
-- Data for Name: recipes; Type: TABLE DATA; Schema: public; Owner: Micah
--

COPY public.recipes (id, title, instruction_set, ingredient_set, created_at, updated_at) FROM stdin;
1	Chili	Take listed ingredients and put them in a pot and cook them for a very long time.	meat, veg, spice, water	2021-03-17 18:21:25.461488	2021-03-17 18:32:40.080079
14	Taco Tuesday	asdfasdf	asdfasdfads	2021-03-17 21:38:36.783892	2021-03-17 21:38:36.783892
16	Avocado Toast	Put avocado on toast	Avocado\r\nToast	2021-03-17 23:08:21.33437	2021-03-17 23:08:21.33437
17	Avocado Toast 2	asdfasdf	asdfasdf	2021-03-17 23:09:28.843489	2021-03-17 23:09:28.843489
18	Avocado Toast 3	asdfasdf	asdfasdf	2021-03-17 23:12:38.181613	2021-03-17 23:12:38.181613
19	Avocado Toast 4	asdfasdf	asdfasdf	2021-03-17 23:14:32.46157	2021-03-17 23:14:32.46157
\.


--
-- Data for Name: recipes_tags; Type: TABLE DATA; Schema: public; Owner: Micah
--

COPY public.recipes_tags (recipe_id, tag_id) FROM stdin;
1	1
1	1
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: Micah
--

COPY public.schema_migrations (version) FROM stdin;
20210317164912
20210317165125
20210317165337
\.


--
-- Data for Name: tags; Type: TABLE DATA; Schema: public; Owner: Micah
--

COPY public.tags (id, tag, created_at, updated_at) FROM stdin;
4	Italian	2021-03-17 21:26:36.441211	2021-03-17 21:54:31.451706
1	Hot & Spicy	2021-03-17 18:43:41.835009	2021-03-17 22:57:31.695967
6	New Mexican	2021-03-17 23:14:42.031785	2021-03-17 23:14:42.031785
\.


--
-- Name: recipes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Micah
--

SELECT pg_catalog.setval('public.recipes_id_seq', 19, true);


--
-- Name: tags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Micah
--

SELECT pg_catalog.setval('public.tags_id_seq', 6, true);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: Micah
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: recipes recipes_pkey; Type: CONSTRAINT; Schema: public; Owner: Micah
--

ALTER TABLE ONLY public.recipes
    ADD CONSTRAINT recipes_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: Micah
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: tags tags_pkey; Type: CONSTRAINT; Schema: public; Owner: Micah
--

ALTER TABLE ONLY public.tags
    ADD CONSTRAINT tags_pkey PRIMARY KEY (id);


--
-- Name: index_recipes_tags_on_recipe_id; Type: INDEX; Schema: public; Owner: Micah
--

CREATE INDEX index_recipes_tags_on_recipe_id ON public.recipes_tags USING btree (recipe_id);


--
-- Name: index_recipes_tags_on_tag_id; Type: INDEX; Schema: public; Owner: Micah
--

CREATE INDEX index_recipes_tags_on_tag_id ON public.recipes_tags USING btree (tag_id);


--
-- PostgreSQL database dump complete
--

