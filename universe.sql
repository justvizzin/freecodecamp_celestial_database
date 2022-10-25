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
-- Name: asteroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroid (
    asteroid_id integer NOT NULL,
    name character varying,
    size integer,
    a integer DEFAULT 0 NOT NULL,
    b integer DEFAULT 0 NOT NULL,
    c integer
);


ALTER TABLE public.asteroid OWNER TO freecodecamp;

--
-- Name: asteroid_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.asteroid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asteroid_id_seq OWNER TO freecodecamp;

--
-- Name: asteroid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.asteroid_id_seq OWNED BY public.asteroid.asteroid_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(100),
    size integer,
    age integer,
    gravity numeric,
    cluster text,
    is_old boolean,
    is_new boolean,
    a integer DEFAULT 0 NOT NULL,
    b integer DEFAULT 0 NOT NULL,
    c integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(100),
    planet_id integer,
    size integer,
    age integer,
    gravity integer,
    a integer DEFAULT 0 NOT NULL,
    b integer DEFAULT 0 NOT NULL,
    c integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(100),
    star_id integer,
    size integer,
    age integer,
    gravity integer,
    a integer DEFAULT 0 NOT NULL,
    b integer DEFAULT 0 NOT NULL,
    c integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(100),
    galaxy_id integer,
    size integer,
    age integer,
    gravity integer,
    a integer DEFAULT 0 NOT NULL,
    b integer DEFAULT 0 NOT NULL,
    c integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: asteroid asteroid_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid ALTER COLUMN asteroid_id SET DEFAULT nextval('public.asteroid_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: asteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroid VALUES (1, NULL, NULL, 0, 0, NULL);
INSERT INTO public.asteroid VALUES (2, NULL, NULL, 0, 0, NULL);
INSERT INTO public.asteroid VALUES (3, NULL, NULL, 0, 0, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milk', 1235, 2345, 345, NULL, true, true, 0, 0, NULL);
INSERT INTO public.galaxy VALUES (2, 'Large', 1, 1, 1, NULL, true, true, 0, 0, NULL);
INSERT INTO public.galaxy VALUES (3, 'Triangle', 1, 2, 3, NULL, true, true, 0, 0, NULL);
INSERT INTO public.galaxy VALUES (4, 'Andromeda', 1, 1, 1, NULL, true, true, 0, 0, NULL);
INSERT INTO public.galaxy VALUES (5, 'Small', 1, 1, 1, NULL, true, true, 0, 0, NULL);
INSERT INTO public.galaxy VALUES (6, 'Messier', 1, 1, 1, NULL, true, true, 0, 0, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL);
INSERT INTO public.moon VALUES (2, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL);
INSERT INTO public.moon VALUES (3, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL);
INSERT INTO public.moon VALUES (4, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL);
INSERT INTO public.moon VALUES (5, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL);
INSERT INTO public.moon VALUES (6, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL);
INSERT INTO public.moon VALUES (7, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL);
INSERT INTO public.moon VALUES (8, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL);
INSERT INTO public.moon VALUES (9, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL);
INSERT INTO public.moon VALUES (10, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL);
INSERT INTO public.moon VALUES (11, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL);
INSERT INTO public.moon VALUES (12, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL);
INSERT INTO public.moon VALUES (13, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL);
INSERT INTO public.moon VALUES (14, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL);
INSERT INTO public.moon VALUES (15, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL);
INSERT INTO public.moon VALUES (16, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL);
INSERT INTO public.moon VALUES (17, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL);
INSERT INTO public.moon VALUES (18, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL);
INSERT INTO public.moon VALUES (19, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL);
INSERT INTO public.moon VALUES (20, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL);
INSERT INTO public.planet VALUES (2, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL);
INSERT INTO public.planet VALUES (3, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL);
INSERT INTO public.planet VALUES (4, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL);
INSERT INTO public.planet VALUES (5, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL);
INSERT INTO public.planet VALUES (6, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL);
INSERT INTO public.planet VALUES (7, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL);
INSERT INTO public.planet VALUES (8, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL);
INSERT INTO public.planet VALUES (9, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL);
INSERT INTO public.planet VALUES (10, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL);
INSERT INTO public.planet VALUES (11, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL);
INSERT INTO public.planet VALUES (12, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL);
INSERT INTO public.star VALUES (2, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL);
INSERT INTO public.star VALUES (3, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL);
INSERT INTO public.star VALUES (4, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL);
INSERT INTO public.star VALUES (5, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL);
INSERT INTO public.star VALUES (6, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL);


--
-- Name: asteroid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asteroid_id_seq', 1, false);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 1, false);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 1, false);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 1, false);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 1, false);


--
-- Name: asteroid asteroid_c_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_c_key UNIQUE (c);


--
-- Name: asteroid asteroid_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_pkey PRIMARY KEY (asteroid_id);


--
-- Name: galaxy galaxy_c_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_c_key UNIQUE (c);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_c_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_c_key UNIQUE (c);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_c_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_c_key UNIQUE (c);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_c_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_c_key UNIQUE (c);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon fk_moon_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_moon_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_planet_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star fk_star_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--
