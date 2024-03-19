--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
    galaxy_id numeric NOT NULL,
    name character varying NOT NULL,
    description text,
    shape text,
    g_age integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id numeric NOT NULL,
    name character varying NOT NULL,
    description text,
    features text,
    planet_id numeric
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: outerspace; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.outerspace (
    outerspace_id numeric NOT NULL,
    name character varying NOT NULL,
    area integer
);


ALTER TABLE public.outerspace OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id numeric NOT NULL,
    name character varying NOT NULL,
    description text,
    has_life boolean,
    star_id numeric
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id numeric NOT NULL,
    name character varying NOT NULL,
    is_small boolean,
    galaxy_id numeric,
    description text
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'g', 'far', 'oval', 22);
INSERT INTO public.galaxy VALUES (2, 'r', 'close', 'crcle', 41);
INSERT INTO public.galaxy VALUES (3, 'q', 'down', 'square', 7);
INSERT INTO public.galaxy VALUES (4, 't', 'young', 'triangle', 33);
INSERT INTO public.galaxy VALUES (5, 'p', 'old', 'rectangle', 13);
INSERT INTO public.galaxy VALUES (6, 'm', 'fit', 'hexagon', 80);
INSERT INTO public.galaxy VALUES (7, 'a', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (8, 'b', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (9, 'c', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (10, 'd', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (11, 'e', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (12, 'f', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (13, 'h', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (14, 'i', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (15, 'j', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (16, 'k', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (17, 'l', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (18, 'n', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (19, 'o', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (20, 's', NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'aa', 'wide', 'grey', 1);
INSERT INTO public.moon VALUES (2, 'dd', 'narrow', 'velvet', 2);
INSERT INTO public.moon VALUES (3, 'zz', 'foward', 'purple', 3);
INSERT INTO public.moon VALUES (4, 'eo', NULL, NULL, 4);
INSERT INTO public.moon VALUES (5, 'sa', NULL, NULL, 5);
INSERT INTO public.moon VALUES (6, 'vd', NULL, NULL, 6);
INSERT INTO public.moon VALUES (7, 'df', NULL, NULL, 7);
INSERT INTO public.moon VALUES (8, 'uy', NULL, NULL, 8);
INSERT INTO public.moon VALUES (9, 'lk', NULL, NULL, 9);
INSERT INTO public.moon VALUES (10, 'ew', NULL, NULL, 10);
INSERT INTO public.moon VALUES (11, 'dw', NULL, NULL, 11);
INSERT INTO public.moon VALUES (12, 'we', NULL, NULL, 12);
INSERT INTO public.moon VALUES (13, 'as', NULL, NULL, 13);
INSERT INTO public.moon VALUES (14, 'xs', NULL, NULL, 14);
INSERT INTO public.moon VALUES (15, 'gf', NULL, NULL, 15);
INSERT INTO public.moon VALUES (16, 'xc', NULL, NULL, 16);
INSERT INTO public.moon VALUES (17, 'az', NULL, NULL, 17);
INSERT INTO public.moon VALUES (18, 'wq', NULL, NULL, 18);
INSERT INTO public.moon VALUES (19, 'nb', NULL, NULL, 19);
INSERT INTO public.moon VALUES (20, 'xn', NULL, NULL, 20);


--
-- Data for Name: outerspace; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.outerspace VALUES (1, 'pop', 66);
INSERT INTO public.outerspace VALUES (2, 'fruit', 77);
INSERT INTO public.outerspace VALUES (3, 'van', 69);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'yyy', 'big', true, 1);
INSERT INTO public.planet VALUES (2, 'fff', 'small', false, 2);
INSERT INTO public.planet VALUES (3, 'vvv', 'well', true, 3);
INSERT INTO public.planet VALUES (4, 'lkj', 'dry', false, 4);
INSERT INTO public.planet VALUES (5, 'asd', 'wet', false, 5);
INSERT INTO public.planet VALUES (6, 'poi', 'see', true, 6);
INSERT INTO public.planet VALUES (7, 'aaa', NULL, NULL, 7);
INSERT INTO public.planet VALUES (8, 'bbb', NULL, NULL, 8);
INSERT INTO public.planet VALUES (9, 'ccc', NULL, NULL, 9);
INSERT INTO public.planet VALUES (10, 'ddd', NULL, NULL, 10);
INSERT INTO public.planet VALUES (11, 'eee', NULL, NULL, 11);
INSERT INTO public.planet VALUES (12, 'fff', NULL, NULL, 12);
INSERT INTO public.planet VALUES (13, 'ggg', NULL, NULL, 13);
INSERT INTO public.planet VALUES (14, 'hhh', NULL, NULL, 14);
INSERT INTO public.planet VALUES (15, 'iii', NULL, NULL, 15);
INSERT INTO public.planet VALUES (16, 'jjj', NULL, NULL, 16);
INSERT INTO public.planet VALUES (17, 'kkk', NULL, NULL, 17);
INSERT INTO public.planet VALUES (18, 'lll', NULL, NULL, 18);
INSERT INTO public.planet VALUES (19, 'mmm', NULL, NULL, 19);
INSERT INTO public.planet VALUES (20, 'nnn', NULL, NULL, 20);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'rr', true, 1, 'cool');
INSERT INTO public.star VALUES (2, 'tt', true, 2, 'full');
INSERT INTO public.star VALUES (3, 'qq', false, 3, 'empty');
INSERT INTO public.star VALUES (4, 'pp', false, 4, 'busy');
INSERT INTO public.star VALUES (5, 'ss', true, 5, 'calm');
INSERT INTO public.star VALUES (6, 'cc', true, 6, 'wild');
INSERT INTO public.star VALUES (7, 'aa', NULL, 7, NULL);
INSERT INTO public.star VALUES (8, 'bb', NULL, 8, NULL);
INSERT INTO public.star VALUES (9, 'cc', NULL, 9, NULL);
INSERT INTO public.star VALUES (10, 'dd', NULL, 10, NULL);
INSERT INTO public.star VALUES (11, 'ee', NULL, 11, NULL);
INSERT INTO public.star VALUES (12, 'ff', NULL, 12, NULL);
INSERT INTO public.star VALUES (13, 'gg', NULL, 13, NULL);
INSERT INTO public.star VALUES (14, 'hh', NULL, 14, NULL);
INSERT INTO public.star VALUES (15, 'ii', NULL, 15, NULL);
INSERT INTO public.star VALUES (16, 'jj', NULL, 16, NULL);
INSERT INTO public.star VALUES (17, 'kk', NULL, 17, NULL);
INSERT INTO public.star VALUES (18, 'll', NULL, 18, NULL);
INSERT INTO public.star VALUES (19, 'mm', NULL, 19, NULL);
INSERT INTO public.star VALUES (20, 'nn', NULL, 20, NULL);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_shape_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_shape_key UNIQUE (shape);


--
-- Name: moon moon_features_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_features_key UNIQUE (features);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: outerspace outerspace_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.outerspace
    ADD CONSTRAINT outerspace_name_key UNIQUE (name);


--
-- Name: outerspace outerspace_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.outerspace
    ADD CONSTRAINT outerspace_pkey PRIMARY KEY (outerspace_id);


--
-- Name: planet planet_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_description_key UNIQUE (description);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_description_key UNIQUE (description);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


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

