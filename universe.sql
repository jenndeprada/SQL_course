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
    description text NOT NULL,
    distance_from_earth_in_millions_of_km numeric,
    planets_known integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    description text NOT NULL,
    stepped_at_year integer,
    has_been_stepped boolean,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30),
    description text NOT NULL,
    has_life boolean,
    has_human_life boolean,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: settings; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.settings (
    name character varying(30),
    settings_id integer NOT NULL,
    number integer NOT NULL
);


ALTER TABLE public.settings OWNER TO freecodecamp;

--
-- Name: settings_settings_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.settings_settings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.settings_settings_id_seq OWNER TO freecodecamp;

--
-- Name: settings_settings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.settings_settings_id_seq OWNED BY public.settings.settings_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30),
    description text NOT NULL,
    can_become_supernova boolean,
    expected_implotion_millions_years integer,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: settings settings_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.settings ALTER COLUMN settings_id SET DEFAULT nextval('public.settings_settings_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'g1', 'd1', 1, 1);
INSERT INTO public.galaxy VALUES (2, 'g2', 'd2', 1, 1);
INSERT INTO public.galaxy VALUES (3, 'g3', 'd3', 1, 1);
INSERT INTO public.galaxy VALUES (4, 'g4', 'd4', 1, 1);
INSERT INTO public.galaxy VALUES (5, 'g5', 'd5', 1, 1);
INSERT INTO public.galaxy VALUES (6, 'g6', 'd6', 1, 1);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'm1', 'd1', 1990, false, 1);
INSERT INTO public.moon VALUES (2, 'm2', 'd2', 1990, false, 2);
INSERT INTO public.moon VALUES (3, 'm3', 'd3', 1990, false, 3);
INSERT INTO public.moon VALUES (4, 'm4', 'd4', 1990, true, 4);
INSERT INTO public.moon VALUES (5, 'm5', 'd5', 1990, true, 5);
INSERT INTO public.moon VALUES (6, 'm1', 'd1', 1990, false, 1);
INSERT INTO public.moon VALUES (7, 'm2', 'd2', 1990, false, 2);
INSERT INTO public.moon VALUES (8, 'm3', 'd3', 1990, false, 3);
INSERT INTO public.moon VALUES (9, 'm4', 'd4', 1990, true, 4);
INSERT INTO public.moon VALUES (10, 'm5', 'd5', 1990, true, 5);
INSERT INTO public.moon VALUES (11, 'm1', 'd1', 1990, false, 1);
INSERT INTO public.moon VALUES (12, 'm2', 'd2', 1990, false, 2);
INSERT INTO public.moon VALUES (13, 'm3', 'd3', 1990, false, 3);
INSERT INTO public.moon VALUES (14, 'm4', 'd4', 1990, true, 4);
INSERT INTO public.moon VALUES (15, 'm5', 'd5', 1990, true, 5);
INSERT INTO public.moon VALUES (16, 'm1', 'd1', 1990, false, 1);
INSERT INTO public.moon VALUES (17, 'm2', 'd2', 1990, false, 2);
INSERT INTO public.moon VALUES (18, 'm3', 'd3', 1990, false, 3);
INSERT INTO public.moon VALUES (20, 'm4', 'd4', 1990, true, 4);
INSERT INTO public.moon VALUES (19, 'm5', 'd5', 1990, true, 5);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'p1', 'd1', true, true, 1);
INSERT INTO public.planet VALUES (2, 'p2', 'd2', true, true, 2);
INSERT INTO public.planet VALUES (3, 'p3', 'd3', true, true, 3);
INSERT INTO public.planet VALUES (4, 'p4', 'd4', true, true, 4);
INSERT INTO public.planet VALUES (5, 'p5', 'd5', true, true, 5);
INSERT INTO public.planet VALUES (6, 'p6', 'd6', true, true, 6);
INSERT INTO public.planet VALUES (7, 'p7', 'd7', true, true, 1);
INSERT INTO public.planet VALUES (8, 'p8', 'd8', true, true, 2);
INSERT INTO public.planet VALUES (9, 'p9', 'd9', true, true, 3);
INSERT INTO public.planet VALUES (10, 'p10', 'd10', true, true, 4);
INSERT INTO public.planet VALUES (11, 'p11', 'd11', true, true, 5);
INSERT INTO public.planet VALUES (12, 'p12', 'd12', true, true, 6);


--
-- Data for Name: settings; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.settings VALUES ('s1', 1, 1);
INSERT INTO public.settings VALUES ('s2', 2, 2);
INSERT INTO public.settings VALUES ('s3', 3, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 's1', 'd1', false, 0, 1);
INSERT INTO public.star VALUES (2, 's2', 'd2', false, 0, 2);
INSERT INTO public.star VALUES (3, 's3', 'd3', false, 0, 3);
INSERT INTO public.star VALUES (4, 's4', 'd4', false, 0, 4);
INSERT INTO public.star VALUES (5, 's5', 'd5', false, 0, 5);
INSERT INTO public.star VALUES (6, 's6', 'd6', false, 0, 6);


--
-- Name: settings_settings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.settings_settings_id_seq', 1, false);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: settings settings_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.settings
    ADD CONSTRAINT settings_pkey PRIMARY KEY (settings_id);


--
-- Name: settings settings_settings_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.settings
    ADD CONSTRAINT settings_settings_id_key UNIQUE (settings_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


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