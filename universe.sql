--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30),
    cat_id character varying(15) NOT NULL,
    mass numeric NOT NULL,
    habitat boolean,
    likes boolean,
    satelites integer,
    story text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_g_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_g_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_g_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_g_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_g_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    cat_id character varying(15) NOT NULL,
    mass numeric NOT NULL,
    habitat boolean,
    likes boolean,
    satelites integer,
    story text
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_m_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_m_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_m_id_seq OWNER TO freecodecamp;

--
-- Name: moon_m_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_m_id_seq OWNED BY public.moon.moon_id;


--
-- Name: mystery_table; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.mystery_table (
    mystery_table_id integer NOT NULL,
    description text,
    cat_id character varying(15),
    wassup character varying(25),
    theme character varying(25) NOT NULL,
    name character varying(25)
);


ALTER TABLE public.mystery_table OWNER TO freecodecamp;

--
-- Name: mystery_table_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.mystery_table_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mystery_table_id_seq OWNER TO freecodecamp;

--
-- Name: mystery_table_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.mystery_table_id_seq OWNED BY public.mystery_table.mystery_table_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30),
    cat_id character varying(15) NOT NULL,
    mass numeric NOT NULL,
    habitat boolean,
    likes boolean,
    satelites integer,
    story text,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_p_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_p_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_p_id_seq OWNER TO freecodecamp;

--
-- Name: planet_p_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_p_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30),
    cat_id character varying(15) NOT NULL,
    mass numeric NOT NULL,
    habitat boolean,
    likes boolean,
    satelites integer,
    story text,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_s_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_s_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_s_id_seq OWNER TO freecodecamp;

--
-- Name: star_s_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_s_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_g_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_m_id_seq'::regclass);


--
-- Name: mystery_table mystery_table_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.mystery_table ALTER COLUMN mystery_table_id SET DEFAULT nextval('public.mystery_table_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_p_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_s_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'I', 999999, true, true, 2, NULL);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'M31', 1999999, false, true, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Centaurus A', 'M38', 199999, false, true, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Magellan Cloud Big', 'M2', 9999, false, true, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Magellan Cloud Little', 'M3', 5999, false, true, NULL, NULL);
INSERT INTO public.galaxy VALUES (7, 'Sosiska', 'M12152', 1202020, false, true, 0, 'fake sat');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', '_001', 0.007, false, true, 0, 'The Moon of Earth');
INSERT INTO public.moon VALUES (2, 'Phoeboe', '_002', 0.00017, false, true, 0, 'The Moon of Mars');
INSERT INTO public.moon VALUES (3, 'Deimos', '_003', 0.0001, false, true, 0, 'The Moon of Mars');
INSERT INTO public.moon VALUES (4, 'Ganimed', '_004', 0.9, false, true, 0, 'in 4th of Jupiter');
INSERT INTO public.moon VALUES (5, 'Io', '_005', 0.3, false, true, 0, 'in 4th of Jupiter');
INSERT INTO public.moon VALUES (7, 'Kallisto', '_006', 0.6, false, true, 0, 'in 4th of Jupiter');
INSERT INTO public.moon VALUES (8, 'Europa', '_007', 0.4, false, true, 0, 'in 4th of Jupiter');
INSERT INTO public.moon VALUES (9, 'Titanus', '_0031', 1.2, true, true, 1, 'Saturn biggest sat');
INSERT INTO public.moon VALUES (11, 'Enceladus', '_0032', 1.2, true, true, 1, 'Saturn icy ocean sat');
INSERT INTO public.moon VALUES (12, 'Reya', '_0033', 1.2, false, true, 1, 'Saturn  sat');
INSERT INTO public.moon VALUES (13, 'Mimas', '_0034', 1.2, false, true, 1, 'Saturn  death Star');
INSERT INTO public.moon VALUES (14, 'Pupa', '_0039', 0.2, false, true, 1, 'Saturn fake sat');
INSERT INTO public.moon VALUES (15, 'Dupa', '_0049', 0.02, false, true, 1, 'Saturn fake sat');
INSERT INTO public.moon VALUES (16, 'Tupa', '_0059', 0.012, false, true, 1, 'Saturn fake sat');
INSERT INTO public.moon VALUES (17, 'Triton', '_0041', 0.012, false, true, 1, 'Neptun sat');
INSERT INTO public.moon VALUES (18, 'Hariton', '_00341', 0.01, false, true, 1, 'Neptun fake sat');
INSERT INTO public.moon VALUES (19, 'Bariton', '_00351', 0.011, false, true, 1, 'Neptun fake sat');
INSERT INTO public.moon VALUES (20, 'Hiron', '_0052', 0.001, false, true, 1, 'Pluto sat');
INSERT INTO public.moon VALUES (21, 'Huronus', '_0352', 0.002, false, true, 1, 'Pluto fake sat');
INSERT INTO public.moon VALUES (22, 'Unnmd 001', '_2152', 0.001, false, true, 1, 'Saturn fake sat');


--
-- Data for Name: mystery_table; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.mystery_table VALUES (1, NULL, 'MY00153', NULL, 'star fog', 'Star Fog disappears');
INSERT INTO public.mystery_table VALUES (2, NULL, 'MY0013', NULL, 'Odd nums', 'Star oddination');
INSERT INTO public.mystery_table VALUES (3, NULL, 'MY1013', NULL, 'nobody knows', 'no clues');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', '000', 1, true, true, 1, 'our planet', NULL);
INSERT INTO public.planet VALUES (2, 'Venus', '002', 1.2, false, true, 0, '2nd planet', NULL);
INSERT INTO public.planet VALUES (3, 'Mercury', '001', 0.3, false, true, 0, '1st planet', NULL);
INSERT INTO public.planet VALUES (4, 'Mars', '004', 0.4, false, true, 0, '4th planet', NULL);
INSERT INTO public.planet VALUES (5, 'Jupiter', '005', 100000, false, true, 24, '5th planet', NULL);
INSERT INTO public.planet VALUES (6, 'Saturn', '006', 65000, false, true, 18, '6th planet', NULL);
INSERT INTO public.planet VALUES (7, 'Uranus', '007', 45000, false, true, 18, 'th planet', NULL);
INSERT INTO public.planet VALUES (8, 'Neptun', '008', 35000, false, true, 4, '8th planet', NULL);
INSERT INTO public.planet VALUES (9, 'Pluto', '009', 0.1, false, true, 2, '9th planet', NULL);
INSERT INTO public.planet VALUES (10, 'Cereus', 'mm002', 0.021, false, true, 0, ' biggest small planet', NULL);
INSERT INTO public.planet VALUES (12, 'X planet', '0010', 44500, false, true, 0, ' biggest small planet', NULL);
INSERT INTO public.planet VALUES (13, 'Vesta', 'mm001', 0.001, false, true, 0, 'first discovered small planet', NULL);
INSERT INTO public.planet VALUES (14, 'Eros', 'mm0023', 0.0002, false, true, 0, 'one of small planets', NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'M0', 1, NULL, true, NULL, 'our star', 1);
INSERT INTO public.star VALUES (2, 'Proxima B Centaurus', 'M201', 0.5, NULL, true, NULL, 'nearest star', 1);
INSERT INTO public.star VALUES (4, 'Sirius A', 'M121', 5, NULL, true, NULL, 'near and hot star', 1);
INSERT INTO public.star VALUES (5, 'Kepler 138B', 'MK1381', 0.3, true, true, NULL, 'nearest star with life forms', 1);
INSERT INTO public.star VALUES (6, 'Sagitarius A', 'MH001', 10000, NULL, true, NULL, 'black hole object', 1);
INSERT INTO public.star VALUES (7, 'ALPHA Beaver', 'ML00152', 1202020, false, true, 0, 'fake star', 2);
INSERT INTO public.star VALUES (3, 'ALPHA Centaurus', 'M231', 2, NULL, true, NULL, 'one of near stars', 3);


--
-- Name: galaxy_g_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_g_id_seq', 7, true);


--
-- Name: moon_m_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_m_id_seq', 22, true);


--
-- Name: mystery_table_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.mystery_table_id_seq', 3, true);


--
-- Name: planet_p_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_p_id_seq', 17, true);


--
-- Name: star_s_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_s_id_seq', 9, true);


--
-- Name: galaxy galaxy_cat_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_cat_id_key UNIQUE (cat_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_cat_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_cat_id_key UNIQUE (cat_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: mystery_table mystery_table_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.mystery_table
    ADD CONSTRAINT mystery_table_pkey PRIMARY KEY (mystery_table_id);


--
-- Name: mystery_table mystery_table_wassup_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.mystery_table
    ADD CONSTRAINT mystery_table_wassup_key UNIQUE (wassup);


--
-- Name: planet planet_cat_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_cat_id_key UNIQUE (cat_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_cat_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_cat_id_key UNIQUE (cat_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

