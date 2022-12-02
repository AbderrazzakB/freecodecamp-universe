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
    name character varying(50) NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    constellation character varying(50),
    distance_from_earth numeric
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(50) NOT NULL,
    numeral integer NOT NULL,
    is_spherical boolean,
    planet_id integer
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
    name character varying(50) NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    distance_from_earth numeric NOT NULL,
    description text,
    has_life boolean,
    planet_types character varying(50),
    star_id integer
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
    name character varying(50) NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    distance_from_earth integer NOT NULL,
    galaxy_id integer
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
-- Name: starships; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.starships (
    starships_id integer NOT NULL,
    name character varying(99) NOT NULL,
    speed numeric
);


ALTER TABLE public.starships OWNER TO freecodecamp;

--
-- Name: starships_starships_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.starships_starships_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.starships_starships_id_seq OWNER TO freecodecamp;

--
-- Name: starships_starships_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.starships_starships_id_seq OWNED BY public.starships.starships_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


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
-- Name: starships starships_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.starships ALTER COLUMN starships_id SET DEFAULT nextval('public.starships_starships_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 4000000, 'Saguittarius', NULL);
INSERT INTO public.galaxy VALUES (2, 'Large Magellanic Cloud', 6000000, 'Daroda', NULL);
INSERT INTO public.galaxy VALUES (4, 'M31', 8000000, 'Andromeda', NULL);
INSERT INTO public.galaxy VALUES (5, 'M33', 6000000, 'Triangulum', NULL);
INSERT INTO public.galaxy VALUES (6, 'Centaurus A', 6000000, 'Centaurus', NULL);
INSERT INTO public.galaxy VALUES (3, 'NGC 292', 500000, 'Tucana', NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon', 1, NULL, 1);
INSERT INTO public.moon VALUES (2, 'phobos', 2, NULL, 2);
INSERT INTO public.moon VALUES (3, 'Deimos', 3, NULL, 2);
INSERT INTO public.moon VALUES (4, 'Lo', 1, NULL, 3);
INSERT INTO public.moon VALUES (5, 'Europa', 2, NULL, 3);
INSERT INTO public.moon VALUES (6, 'Ganumede', 3, NULL, 3);
INSERT INTO public.moon VALUES (7, 'Callisto', 4, NULL, 3);
INSERT INTO public.moon VALUES (8, 'Amalthea', 5, NULL, 3);
INSERT INTO public.moon VALUES (9, 'Himalaia', 6, NULL, 3);
INSERT INTO public.moon VALUES (10, 'Elara', 7, NULL, 3);
INSERT INTO public.moon VALUES (11, 'Pasiphae', 8, NULL, 3);
INSERT INTO public.moon VALUES (12, 'Sinope', 9, NULL, 3);
INSERT INTO public.moon VALUES (13, 'Lysithea', 10, NULL, 3);
INSERT INTO public.moon VALUES (14, 'Garme', 11, NULL, 3);
INSERT INTO public.moon VALUES (15, 'Ananke', 12, NULL, 3);
INSERT INTO public.moon VALUES (16, 'Leda', 13, NULL, 3);
INSERT INTO public.moon VALUES (17, 'Thebe', 14, NULL, 3);
INSERT INTO public.moon VALUES (18, 'Adrastea', 15, NULL, 3);
INSERT INTO public.moon VALUES (19, 'Metis', 16, NULL, 3);
INSERT INTO public.moon VALUES (20, 'Callirrhoe', 17, NULL, 3);
INSERT INTO public.moon VALUES (21, 'Themisto', 18, NULL, 3);
INSERT INTO public.moon VALUES (22, 'Megaclite', 19, NULL, 3);
INSERT INTO public.moon VALUES (23, 'Taygete', 20, NULL, 3);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'earth', 3, 0, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (2, 'march', 4, 500, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (4, 'volacan', 10, 10000000, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (5, 'otard', 1, 1, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (6, 'oranus', 9, 10000, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (7, 'folk', 3, 1000, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (8, 'dogs', 1, 1000, NULL, NULL, NULL, 5);
INSERT INTO public.planet VALUES (9, 'chiens', 10, 100000000, NULL, NULL, NULL, 4);
INSERT INTO public.planet VALUES (10, 'm6', 89, 100000000000000, NULL, NULL, NULL, 5);
INSERT INTO public.planet VALUES (11, 'a5', 4, 10.4, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (12, 'b88', 3, 9.4, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (3, 'Jupiter', 5, 1000, NULL, NULL, NULL, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'ABSOLUTNO', 5, 78, NULL);
INSERT INTO public.star VALUES (2, 'SUN', 4, 0, NULL);
INSERT INTO public.star VALUES (3, 'Alasia', 6, 90, NULL);
INSERT INTO public.star VALUES (4, 'Amadioha', 8, 45, NULL);
INSERT INTO public.star VALUES (5, 'Anadolu', 3, 78, NULL);
INSERT INTO public.star VALUES (6, 'Axoloti', 6, 44, NULL);


--
-- Data for Name: starships; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.starships VALUES (1, 'USS Rabin', NULL);
INSERT INTO public.starships VALUES (2, 'USS Spector', NULL);
INSERT INTO public.starships VALUES (3, 'USS Thunderchild', NULL);
INSERT INTO public.starships VALUES (4, 'USS Armstrong', NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 23, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: starships_starships_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.starships_starships_id_seq', 4, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: starships starships_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.starships
    ADD CONSTRAINT starships_name_key UNIQUE (name);


--
-- Name: starships starships_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.starships
    ADD CONSTRAINT starships_pkey PRIMARY KEY (starships_id);


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

