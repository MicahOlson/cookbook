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
54	Vegetable Soup	Three egg whites with spinach, mushrooms, caramelized onions, tomatoes and low-fat feta cheese. With herbed quinoa, and your choice of rye or whole-grain toast.	Wheatgrass Juice	2021-03-18 22:44:56.485854	2021-03-18 22:44:56.485854
55	Poutine	Three egg omelet with Roquefort cheese, chives, and ham. With a side of roasted potatoes, and your choice of toast or croissant.	White Bread	2021-03-18 22:44:56.509627	2021-03-18 22:44:56.509627
56	Massaman Curry	Fresh Norwegian salmon, lightly brushed with our herbed Dijon mustard sauce, with choice of two sides.	Dill	2021-03-18 22:44:56.528998	2021-03-18 22:44:56.528998
57	Sushi	Granny Smith apples mixed with brown sugar and butter filling, in a flaky all-butter crust, with ice cream.	Chia Seeds	2021-03-18 22:44:56.546988	2021-03-18 22:44:56.546988
58	Souvlaki	Two butter croissants of your choice (plain, almond or cheese). With a side of herb butter or house-made hazelnut spread.	Camellia Tea Oil	2021-03-18 22:44:56.565181	2021-03-18 22:44:56.565181
59	Hummus	Smoked salmon, poached eggs, diced red onions and Hollandaise sauce on an English muffin. With a side of roasted potatoes.	Eggplant	2021-03-18 22:44:56.58288	2021-03-18 22:44:56.58288
60	Tacos	Creamy mascarpone cheese and custard layered between espresso and rum soaked house-made ladyfingers, topped with Valrhona cocoa powder.	Coconut Water	2021-03-18 22:44:56.601968	2021-03-18 22:44:56.601968
\.


--
-- Data for Name: recipes_tags; Type: TABLE DATA; Schema: public; Owner: Micah
--

COPY public.recipes_tags (recipe_id, tag_id) FROM stdin;
56	144
56	146
56	138
56	155
56	159
58	150
58	134
58	148
58	149
58	147
58	137
58	135
57	144
57	146
57	145
57	157
57	143
57	137
57	135
60	149
60	139
56	147
56	139
59	133
59	145
59	152
59	155
59	159
59	154
59	153
54	131
54	132
54	133
54	134
55	135
55	136
55	137
55	138
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
159	Quality	2021-03-18 22:45:29.840077	2021-03-18 22:45:29.840077
131	German	2021-03-18 22:44:56.488779	2021-03-18 22:44:56.488779
132	African	2021-03-18 22:44:56.498319	2021-03-18 22:44:56.498319
133	American (Traditional)	2021-03-18 22:44:56.502193	2021-03-18 22:44:56.502193
134	Caribbean	2021-03-18 22:44:56.505697	2021-03-18 22:44:56.505697
135	Vegetarian	2021-03-18 22:44:56.511888	2021-03-18 22:44:56.511888
136	Argentinian	2021-03-18 22:44:56.516014	2021-03-18 22:44:56.516014
137	Vegan	2021-03-18 22:44:56.520104	2021-03-18 22:44:56.520104
138	Burgers	2021-03-18 22:44:56.524661	2021-03-18 22:44:56.524661
139	Tex Mex	2021-03-18 22:44:56.531283	2021-03-18 22:44:56.531283
140	Healthy	2021-03-18 22:44:56.535494	2021-03-18 22:44:56.535494
141	Juice & Smoothies	2021-03-18 22:44:56.53925	2021-03-18 22:44:56.53925
142	Korean	2021-03-18 22:44:56.543002	2021-03-18 22:44:56.543002
143	Sushi	2021-03-18 22:44:56.54911	2021-03-18 22:44:56.54911
144	American (New)	2021-03-18 22:44:56.553421	2021-03-18 22:44:56.553421
145	Chinese	2021-03-18 22:44:56.55717	2021-03-18 22:44:56.55717
146	Bar	2021-03-18 22:44:56.560811	2021-03-18 22:44:56.560811
147	Senegalese	2021-03-18 22:44:56.567648	2021-03-18 22:44:56.567648
148	Comfort Food	2021-03-18 22:44:56.571719	2021-03-18 22:44:56.571719
149	Mexican	2021-03-18 22:44:56.575159	2021-03-18 22:44:56.575159
150	Asian	2021-03-18 22:44:56.578926	2021-03-18 22:44:56.578926
151	Pizza	2021-03-18 22:44:56.585069	2021-03-18 22:44:56.585069
152	Ethiopean	2021-03-18 22:44:56.589364	2021-03-18 22:44:56.589364
153	Vietnamese	2021-03-18 22:44:56.592959	2021-03-18 22:44:56.592959
154	Thai	2021-03-18 22:44:56.596588	2021-03-18 22:44:56.596588
155	Indian	2021-03-18 22:44:56.604342	2021-03-18 22:44:56.604342
156	Bakery	2021-03-18 22:44:56.608705	2021-03-18 22:44:56.608705
157	Greek	2021-03-18 22:44:56.612735	2021-03-18 22:44:56.612735
158	Desserts	2021-03-18 22:44:56.617164	2021-03-18 22:44:56.617164
\.


--
-- Name: recipes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Micah
--

SELECT pg_catalog.setval('public.recipes_id_seq', 61, true);


--
-- Name: tags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Micah
--

SELECT pg_catalog.setval('public.tags_id_seq', 159, true);


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

