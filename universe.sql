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
    name character varying(30) NOT NULL,
    distance_from_earth numeric NOT NULL,
    number integer NOT NULL,
    habitants integer,
    description text,
    has_life boolean NOT NULL,
    galaxy_type text
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
    name character varying(30) NOT NULL,
    distance_from_earth numeric NOT NULL,
    number integer NOT NULL,
    habitants integer,
    description text,
    has_life boolean NOT NULL,
    moon_type text,
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
    name character varying(30) NOT NULL,
    distance_from_earth numeric NOT NULL,
    number integer NOT NULL,
    habitants integer,
    description text,
    has_life boolean NOT NULL,
    planet_type text,
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
-- Name: satelites; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.satelites (
    satelites_id integer NOT NULL,
    number integer NOT NULL,
    name character varying(30),
    satelite_type text
);


ALTER TABLE public.satelites OWNER TO freecodecamp;

--
-- Name: satelites_satelite_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.satelites_satelite_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.satelites_satelite_id_seq OWNER TO freecodecamp;

--
-- Name: satelites_satelite_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.satelites_satelite_id_seq OWNED BY public.satelites.satelites_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance_from_earth numeric NOT NULL,
    number integer NOT NULL,
    habitants integer,
    description text,
    has_life boolean NOT NULL,
    star_type text,
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
-- Name: satelites satelites_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satelites ALTER COLUMN satelites_id SET DEFAULT nextval('public.satelites_satelite_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (2, 'via lactea', 140555.55, 10, 70000000, 'Donde vivimos todos', true, NULL);
INSERT INTO public.galaxy VALUES (3, 'andromedaI', 170777.77, 1, 0, 'zero habitantes', false, NULL);
INSERT INTO public.galaxy VALUES (4, 'andromedaII', 180888.88, 1, 0, 'zero habitantes', false, NULL);
INSERT INTO public.galaxy VALUES (5, 'centaurus', 190999.99, 1, 0, 'zero habitantes', false, NULL);
INSERT INTO public.galaxy VALUES (6, 'leoI', 150555.55, 1, 0, 'zero habitantes', false, NULL);
INSERT INTO public.galaxy VALUES (7, 'leoII', 140444.44, 1, 0, 'zero habitantes', false, NULL);
INSERT INTO public.galaxy VALUES (8, 'alfa', 900.3, 1, 0, 'zero habitantes', false, NULL);
INSERT INTO public.galaxy VALUES (9, 'sentaury', 900.3, 1, 0, 'zero habitantes', false, NULL);
INSERT INTO public.galaxy VALUES (10, 'arp', 900.3, 1, 0, 'zero habitantes', false, NULL);
INSERT INTO public.galaxy VALUES (11, 'bl lacertae', 900.3, 1, 0, 'zero habitantes', false, NULL);
INSERT INTO public.galaxy VALUES (12, 'abel', 900.3, 1, 0, 'zero habitantes', false, NULL);
INSERT INTO public.galaxy VALUES (13, 'am', 900.3, 1, 0, 'zero habitantes', false, NULL);
INSERT INTO public.galaxy VALUES (14, 'bode', 900.3, 1, 0, 'zero habitantes', false, NULL);
INSERT INTO public.galaxy VALUES (15, 'ojos', 900.3, 1, 0, 'zero habitantes', false, NULL);
INSERT INTO public.galaxy VALUES (16, 'cigarros', 900.3, 1, 0, 'zero habitantes', false, NULL);
INSERT INTO public.galaxy VALUES (17, 'oyo negro', 900.3, 1, 0, 'zero habitantes', false, NULL);
INSERT INTO public.galaxy VALUES (18, 'molinillo', 900.3, 1, 0, 'zero habitantes', false, NULL);
INSERT INTO public.galaxy VALUES (19, 'sombrero', 900.3, 1, 0, 'zero habitantes', false, NULL);
INSERT INTO public.galaxy VALUES (20, 'triangulo', 900.3, 1, 0, 'zero habitantes', false, NULL);
INSERT INTO public.galaxy VALUES (21, 'remolino', 900.3, 1, 0, 'zero habitantes', false, NULL);
INSERT INTO public.galaxy VALUES (22, 'magallanes', 900.3, 1, 0, 'zero habitantes', false, NULL);
INSERT INTO public.galaxy VALUES (23, 'lente de huchra', 900.3, 1, 0, 'zero habitantes', false, NULL);
INSERT INTO public.galaxy VALUES (24, 'maffei', 900.3, 1, 0, 'zero habitantes', false, NULL);
INSERT INTO public.galaxy VALUES (25, 'ngc', 900.3, 1, 0, 'zero habitantes', false, NULL);
INSERT INTO public.galaxy VALUES (26, 'objeto de hoag', 900.3, 1, 0, 'zero habitantes', false, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (4, 'deimos', 23460.66, 1, 0, 'NO DESCRIPTION', false, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'phobos', 9270.77, 1, 0, 'NO DESCRIPTION', false, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'adrastea', 128980.88, 1, 0, 'NO DESCRIPTION', false, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'ganymede', 107000.88, 1, 0, 'NO DESCRIPTION', false, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'ananke', 107000.88, 1, 0, 'NO DESCRIPTION', false, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'calisto', 107000.88, 1, 0, 'NO DESCRIPTION', false, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'carme', 107000.88, 1, 0, 'NO DESCRIPTION', false, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'carpo', 107000.88, 1, 0, 'NO DESCRIPTION', false, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'cyllene', 107000.88, 1, 0, 'NO DESCRIPTION', false, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'ellara', 107000.88, 1, 0, 'NO DESCRIPTION', false, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'erinome', 107000.88, 1, 0, 'NO DESCRIPTION', false, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'europa', 107000.88, 1, 0, 'NO DESCRIPTION', false, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'euporie', 107000.88, 1, 0, 'NO DESCRIPTION', false, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'hirike', 107000.88, 1, 0, 'NO DESCRIPTION', false, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'io', 107000.88, 1, 0, 'NO DESCRIPTION', false, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'iocaste', 107000.88, 1, 0, 'NO DESCRIPTION', false, NULL, NULL);
INSERT INTO public.moon VALUES (21, 'kore', 107000.88, 1, 0, 'NO DESCRIPTION', false, NULL, NULL);
INSERT INTO public.moon VALUES (22, 'leda', 107000.88, 1, 0, 'NO DESCRIPTION', false, NULL, NULL);
INSERT INTO public.moon VALUES (23, 'metis', 107000.88, 1, 0, 'NO DESCRIPTION', false, NULL, NULL);
INSERT INTO public.moon VALUES (24, 'synope', 107000.88, 1, 0, 'NO DESCRIPTION', false, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (4, 'venus', 555.3, 1, 0, 'zero habitantes', false, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'mercurio', 666.6, 1, 0, 'zero habitantes', false, NULL, NULL);
INSERT INTO public.planet VALUES (6, 'tierra', 0.0, 1, 7000000, 'donde vivimos', true, NULL, NULL);
INSERT INTO public.planet VALUES (7, 'marte', 333.33, 1, 0, 'planeta rojo', false, NULL, NULL);
INSERT INTO public.planet VALUES (9, 'jupiter', 900.3, 1, 0, 'zero habitantes', false, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'saturno', 900.3, 1, 0, 'zero habitantes', false, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'urano', 900.3, 1, 0, 'zero habitantes', false, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'neptuno', 900.3, 1, 0, 'zero habitantes', false, NULL, NULL);
INSERT INTO public.planet VALUES (13, 'pluton', 900.3, 1, 0, 'zero habitantes', false, NULL, NULL);
INSERT INTO public.planet VALUES (14, 'x', 900.3, 1, 0, 'zero habitantes', false, NULL, NULL);
INSERT INTO public.planet VALUES (15, 'a', 900.3, 1, 0, 'zero habitantes', false, NULL, NULL);
INSERT INTO public.planet VALUES (16, 'kepler', 900.3, 1, 0, 'zero habitantes', false, NULL, NULL);
INSERT INTO public.planet VALUES (17, 'ogle', 900.3, 1, 0, 'zero habitantes', false, NULL, NULL);
INSERT INTO public.planet VALUES (18, 'vegito', 900.3, 1, 0, 'zero habitantes', false, NULL, NULL);
INSERT INTO public.planet VALUES (19, 'alderan', 900.3, 1, 0, 'zero habitantes', false, NULL, NULL);
INSERT INTO public.planet VALUES (20, 'corot', 900.3, 1, 0, 'zero habitantes', false, NULL, NULL);
INSERT INTO public.planet VALUES (21, 'super saturno', 900.3, 1, 0, 'zero habitantes', false, NULL, NULL);
INSERT INTO public.planet VALUES (22, 'gliese', 900.3, 1, 0, 'zero habitantes', false, NULL, NULL);
INSERT INTO public.planet VALUES (23, 'cancri', 900.3, 1, 0, 'zero habitantes', false, NULL, NULL);
INSERT INTO public.planet VALUES (24, 'hatp', 900.3, 1, 0, 'zero habitantes', false, NULL, NULL);


--
-- Data for Name: satelites; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.satelites VALUES (1, 5, 'pluton', NULL);
INSERT INTO public.satelites VALUES (2, 1, 'makemake', NULL);
INSERT INTO public.satelites VALUES (3, 2, 'haumea', NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (4, 'sirio', 8.6, 1, 0, 'zero habitantes', false, NULL, NULL);
INSERT INTO public.star VALUES (5, 'canopus', 309.8, 1, 0, 'zero habitantes', false, NULL, NULL);
INSERT INTO public.star VALUES (6, 'arturo', 36.7, 1, 0, 'zero habitantes', false, NULL, NULL);
INSERT INTO public.star VALUES (7, 'vega', 25.3, 1, 0, 'zero habitantes', false, NULL, NULL);
INSERT INTO public.star VALUES (9, 'rigel', 900.3, 1, 0, 'zero habitantes', false, NULL, NULL);
INSERT INTO public.star VALUES (10, 'hadar', 900.3, 1, 0, 'zero habitantes', false, NULL, NULL);
INSERT INTO public.star VALUES (11, 'prochyor', 900.3, 1, 0, 'zero habitantes', false, NULL, NULL);
INSERT INTO public.star VALUES (12, 'altair', 900.3, 1, 0, 'zero habitantes', false, NULL, NULL);
INSERT INTO public.star VALUES (13, 'aldebaran', 900.3, 1, 0, 'zero habitantes', false, NULL, NULL);
INSERT INTO public.star VALUES (14, 'spica', 900.3, 1, 0, 'zero habitantes', false, NULL, NULL);
INSERT INTO public.star VALUES (15, 'altarex', 900.3, 1, 0, 'zero habitantes', false, NULL, NULL);
INSERT INTO public.star VALUES (16, 'poyux', 900.3, 1, 0, 'zero habitantes', false, NULL, NULL);
INSERT INTO public.star VALUES (17, 'deneb', 900.3, 1, 0, 'zero habitantes', false, NULL, NULL);
INSERT INTO public.star VALUES (18, 'brecux', 900.3, 1, 0, 'zero habitantes', false, NULL, NULL);
INSERT INTO public.star VALUES (19, 'shaula', 900.3, 1, 0, 'zero habitantes', false, NULL, NULL);
INSERT INTO public.star VALUES (20, 'gracux', 900.3, 1, 0, 'zero habitantes', false, NULL, NULL);
INSERT INTO public.star VALUES (21, 'beta', 900.3, 1, 0, 'zero habitantes', false, NULL, NULL);
INSERT INTO public.star VALUES (22, 'alnilam', 900.3, 1, 0, 'zero habitantes', false, NULL, NULL);
INSERT INTO public.star VALUES (23, 'mirona', 900.3, 1, 0, 'zero habitantes', false, NULL, NULL);
INSERT INTO public.star VALUES (24, 'fugaz', 900.3, 1, 0, 'zero habitantes', false, NULL, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 26, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 24, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 25, true);


--
-- Name: satelites_satelite_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.satelites_satelite_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 24, true);


--
-- Name: galaxy galaxy_galaxy_type_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_type_key UNIQUE (galaxy_type);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_type_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_type_key UNIQUE (moon_type);


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
-- Name: planet planet_planet_type_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_type_key UNIQUE (planet_type);


--
-- Name: satelites satelites_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satelites
    ADD CONSTRAINT satelites_pkey PRIMARY KEY (satelites_id);


--
-- Name: satelites satelites_satelite_type_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satelites
    ADD CONSTRAINT satelites_satelite_type_key UNIQUE (satelite_type);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_type_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_type_key UNIQUE (star_type);


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

