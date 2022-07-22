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
-- Name: celestial; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.celestial (
    celestial_id integer NOT NULL,
    name character varying(30),
    galaxy_id integer NOT NULL
);


ALTER TABLE public.celestial OWNER TO freecodecamp;

--
-- Name: celestial_celestial_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.celestial_celestial_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.celestial_celestial_id_seq OWNER TO freecodecamp;

--
-- Name: celestial_celestial_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.celestial_celestial_id_seq OWNED BY public.celestial.celestial_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30),
    description text,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years numeric(6,2),
    galaxy_types character varying(10) NOT NULL,
    distance_from_earth integer,
    size_in_light_years integer,
    uid integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_uid_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_uid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_uid_seq OWNER TO freecodecamp;

--
-- Name: galaxy_uid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_uid_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    description text,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years numeric(6,2),
    moon_type character varying(10) NOT NULL,
    distance_from_earth integer,
    size_in_light_years integer,
    planet_id integer,
    uid integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30),
    description text,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years numeric(6,2),
    planet_type character varying(10) NOT NULL,
    distance_from_earth integer,
    size_in_light_years integer,
    star_id integer,
    uid integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30),
    description text,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years numeric(6,2),
    star_type character varying(10) NOT NULL,
    distance_from_earth integer,
    size_in_light_years integer,
    galaxy_id integer,
    uid integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: celestial celestial_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.celestial ALTER COLUMN celestial_id SET DEFAULT nextval('public.celestial_celestial_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_uid_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: celestial; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.celestial VALUES (1, 'luna', 1);
INSERT INTO public.celestial VALUES (2, 'aurora', 3);
INSERT INTO public.celestial VALUES (3, 'atlas', 4);
INSERT INTO public.celestial VALUES (4, 'leo', 5);
INSERT INTO public.celestial VALUES (5, 'nova', 6);
INSERT INTO public.celestial VALUES (6, 'orion', 7);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'milky way', 'milky way a galaxy', true, true, 1360.00, 'spiral', 0, 52850, NULL);
INSERT INTO public.galaxy VALUES (3, 'Largeloud', NULL, NULL, NULL, NULL, 'barred', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'NGC4486', NULL, NULL, NULL, NULL, 'elliptical', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Magellan', NULL, NULL, NULL, NULL, 'irregular', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'NGC4608', NULL, NULL, NULL, NULL, 'lenticular', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (7, 'NGC7320', NULL, NULL, NULL, NULL, 'peculiar', NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 'Moon is a moon', false, true, 2100.00, 'spherical', 80, 200, 1, NULL);
INSERT INTO public.moon VALUES (2, 'boon', 'boon is a moon', false, true, 2112.00, 'egg like', 1100, 197, 2, NULL);
INSERT INTO public.moon VALUES (3, 'toon', 'toon is a moon', false, true, 2124.00, 'upside', 1130, 194, 3, NULL);
INSERT INTO public.moon VALUES (4, 'loon', 'loon is a moon', false, true, 2136.00, 'downspiral', 1160, 191, 4, NULL);
INSERT INTO public.moon VALUES (5, 'hoon', 'hoon is a moon', false, true, 2148.00, 'spherical', 1190, 188, 5, NULL);
INSERT INTO public.moon VALUES (6, 'soon', 'soon is a moon', false, true, 2160.00, 'egg like', 1220, 185, 6, NULL);
INSERT INTO public.moon VALUES (7, 'coon', 'coon is a moon', false, true, 2172.00, 'upside', 1250, 182, 7, NULL);
INSERT INTO public.moon VALUES (8, 'noon', 'noon is a moon', false, true, 2184.00, 'downspiral', 1280, 179, 8, NULL);
INSERT INTO public.moon VALUES (9, 'roon', 'roon is a moon', false, true, 2196.00, 'spherical', 1310, 176, 9, NULL);
INSERT INTO public.moon VALUES (10, 'eoon', 'eoon is a moon', false, true, 2208.00, 'egg like', 1340, 173, 10, NULL);
INSERT INTO public.moon VALUES (11, 'woon', 'woon is a moon', false, true, 2220.00, 'upside', 1370, 170, 1, NULL);
INSERT INTO public.moon VALUES (12, 'cloon', 'cloon is a moon', false, true, 2232.00, 'downspiral', 1400, 167, 2, NULL);
INSERT INTO public.moon VALUES (13, 'stoon', 'stoon is a moon', false, true, 2244.00, 'spherical', 1430, 164, 3, NULL);
INSERT INTO public.moon VALUES (14, 'quoon', 'quoon is a moon', false, true, 2256.00, 'egg like', 1460, 161, 4, NULL);
INSERT INTO public.moon VALUES (15, 'ioon', 'ioon is a moon', false, true, 2268.00, 'upside', 1490, 158, 5, NULL);
INSERT INTO public.moon VALUES (16, 'yoon', 'yoon is a moon', false, true, 2280.00, 'downspiral', 1520, 155, 6, NULL);
INSERT INTO public.moon VALUES (17, 'zoon', 'zoon is a moon', false, true, 2292.00, 'spherical', 1550, 152, 7, NULL);
INSERT INTO public.moon VALUES (18, 'hboon', 'hboon is a moon', false, true, 2304.00, 'egg like', 1580, 149, 8, NULL);
INSERT INTO public.moon VALUES (19, 'dhoon', 'dhoon is a moon', false, true, 2316.00, 'upside', 1610, 146, 9, NULL);
INSERT INTO public.moon VALUES (20, 'ruboon', 'ruboon is a moon', false, true, 2328.00, 'downspiral', 1640, 143, 10, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, '15Var12', '15Var12 is planet', false, true, 4728.00, 'superearth', 1300, 1, 3, NULL);
INSERT INTO public.planet VALUES (2, 'Jupiter', 'Jupiter is planet', false, true, 4603.00, 'gas giant', 677, 1, 1, NULL);
INSERT INTO public.planet VALUES (3, 'Gliese15ab', 'Gliese15ab is planet', false, true, 4628.00, 'superearth', 11, 1, 1, NULL);
INSERT INTO public.planet VALUES (4, 'GJ436 b', 'GJ436 b is planet', false, true, 4653.00, 'neptune', 1000, 1, 2, NULL);
INSERT INTO public.planet VALUES (5, 'Mercury', 'Mercury is planet', false, true, 4678.00, 'terestial', 1100, 1, 2, NULL);
INSERT INTO public.planet VALUES (6, 'AB14V', 'AB14V is planet', false, true, 4703.00, 'gas giant', 1200, 1, 3, NULL);
INSERT INTO public.planet VALUES (7, 'Bol14C', 'Bol14C is planet', false, true, 4753.00, 'neptune', 1400, 1, 4, NULL);
INSERT INTO public.planet VALUES (8, 'Cred100r', 'Cred100r is planet', false, true, 4778.00, 'terestial', 1500, 1, 4, NULL);
INSERT INTO public.planet VALUES (9, 'sol15h', 'sol15h is planet', false, true, 4803.00, 'gas giant', 1600, 1, 5, NULL);
INSERT INTO public.planet VALUES (10, 'nut80r', 'nut80r is planet', false, true, 4828.00, 'superearth', 1700, 1, 5, NULL);
INSERT INTO public.planet VALUES (11, 'glo80l', 'glo80l is planet', false, true, 4853.00, 'neptune', 1800, 1, 6, NULL);
INSERT INTO public.planet VALUES (12, 'bel34DD', 'bel34DD is planet', false, true, 4878.00, 'terestial', 1900, 1, 6, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'sun', 'sun is our star', false, true, 4600.12, 'solar type', 19, 1392, 1, NULL);
INSERT INTO public.star VALUES (2, 'Rigel', 'Rigel is not our star', false, true, 4700.24, 'hot blue', 700, 1400, 3, NULL);
INSERT INTO public.star VALUES (3, 'Proxima Centauri', 'Proxima Centauri is not our star', false, true, 4800.36, 'red dwarf', 1000, 1500, 4, NULL);
INSERT INTO public.star VALUES (4, 'Aldebaran', 'Aldebaran is not our star', false, true, 4900.48, 'red giants', 1200, 1600, 5, NULL);
INSERT INTO public.star VALUES (5, 'Sirius B', 'Sirius B is not our star', false, true, 5000.61, 'wite warf', 1300, 1700, 6, NULL);
INSERT INTO public.star VALUES (6, 'Black Widow Pulsar', 'Black Widow is not our star', false, true, 5100.72, 'nuron tar', 1400, 1800, 7, NULL);


--
-- Name: celestial_celestial_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.celestial_celestial_id_seq', 6, true);


--
-- Name: galaxy_uid_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_uid_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: celestial celestial_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.celestial
    ADD CONSTRAINT celestial_name_key UNIQUE (name);


--
-- Name: celestial celestial_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.celestial
    ADD CONSTRAINT celestial_pkey PRIMARY KEY (celestial_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_uid_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_uid_key UNIQUE (uid);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_uid_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_uid_key UNIQUE (uid);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_uid_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_uid_key UNIQUE (uid);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_uid_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_uid_key UNIQUE (uid);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

