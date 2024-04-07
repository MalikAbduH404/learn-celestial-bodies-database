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
-- Name: another; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.another (
    another_id integer NOT NULL,
    name character varying(100) NOT NULL,
    galaxy_id integer,
    another_mass numeric NOT NULL,
    is_visible boolean NOT NULL,
    another_description text NOT NULL
);


ALTER TABLE public.another OWNER TO freecodecamp;

--
-- Name: another_another_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.another_another_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.another_another_id_seq OWNER TO freecodecamp;

--
-- Name: another_another_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.another_another_id_seq OWNED BY public.another.another_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(100) NOT NULL,
    galaxy_size integer NOT NULL,
    galaxy_diameter integer NOT NULL,
    has_black_hole boolean NOT NULL,
    galaxy_description text NOT NULL
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
    name character varying(100) NOT NULL,
    planet_id integer,
    moon_radius numeric NOT NULL,
    is_in_habitable_zone boolean NOT NULL,
    moon_color text NOT NULL
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
    name character varying(100) NOT NULL,
    star_id integer,
    planet_radius numeric NOT NULL,
    distance_from_star numeric NOT NULL,
    is_habitable boolean NOT NULL
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
    name character varying(100) NOT NULL,
    galaxy_id integer,
    star_mass numeric NOT NULL,
    is_main_sequence boolean NOT NULL,
    star_color text NOT NULL
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
-- Name: another another_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.another ALTER COLUMN another_id SET DEFAULT nextval('public.another_another_id_seq'::regclass);


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
-- Data for Name: another; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.another VALUES (1, 'NGC 1300', 2, 1.5, true, 'Barred spiral galaxy');
INSERT INTO public.another VALUES (2, 'IC 342', 2, 2, true, 'Face-on spiral galaxy');
INSERT INTO public.another VALUES (3, 'NGC 4594', 1, 2.3, true, 'Sombrero galaxy');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 100000, 100000, true, 'Our home galaxy');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 120000, 110000, false, 'Nearest spiral galaxy to Milky Way');
INSERT INTO public.galaxy VALUES (3, 'Messier 87', 150000, 130000, true, 'Hosts the first ever black hole image');
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', 90000, 80000, false, 'Famous for its interacting galaxy system');
INSERT INTO public.galaxy VALUES (5, 'Triangulum', 80000, 70000, false, 'Third-largest galaxy in the Local Group');
INSERT INTO public.galaxy VALUES (6, 'Sombrero', 95000, 85000, true, 'Sombrero galaxy - Spiral galaxy with prominent bulge and dust lane');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 3, 1737, false, 'Grey');
INSERT INTO public.moon VALUES (2, 'Phobos', 4, 11.1, false, 'Brown');
INSERT INTO public.moon VALUES (3, 'Deimos', 4, 6.2, false, 'Brownish grey');
INSERT INTO public.moon VALUES (4, 'Europa', 3, 1561, true, 'White');
INSERT INTO public.moon VALUES (5, 'Ganymede', 3, 2631, false, 'Grey');
INSERT INTO public.moon VALUES (6, 'Callisto', 3, 2410, false, 'Brownish grey');
INSERT INTO public.moon VALUES (7, 'Titan', 6, 2576, false, 'Orange');
INSERT INTO public.moon VALUES (8, 'Enceladus', 6, 252, true, 'White');
INSERT INTO public.moon VALUES (9, 'Triton', 8, 1353, false, 'Pink');
INSERT INTO public.moon VALUES (10, 'Io', 3, 1821, false, 'Yellow');
INSERT INTO public.moon VALUES (11, 'Mimas', 6, 198.8, false, 'Grey');
INSERT INTO public.moon VALUES (12, 'Rhea', 6, 763.8, false, 'White');
INSERT INTO public.moon VALUES (13, 'Dione', 6, 561.4, false, 'White');
INSERT INTO public.moon VALUES (14, 'Charon', 9, 606, false, 'Grey');
INSERT INTO public.moon VALUES (15, 'Miranda', 8, 235.8, false, 'Grey');
INSERT INTO public.moon VALUES (16, 'Tethys', 6, 533, false, 'White');
INSERT INTO public.moon VALUES (17, 'Ariel', 8, 578.9, false, 'White');
INSERT INTO public.moon VALUES (18, 'Umbriel', 8, 584.7, false, 'Dark grey');
INSERT INTO public.moon VALUES (19, 'Iapetus', 6, 734.5, false, 'Two-tone');
INSERT INTO public.moon VALUES (20, 'Titania', 8, 788.9, false, 'Grey');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 1, 2439, 0.39, false);
INSERT INTO public.planet VALUES (2, 'Venus', 1, 6052, 0.72, false);
INSERT INTO public.planet VALUES (3, 'Earth', 1, 6371, 1, true);
INSERT INTO public.planet VALUES (4, 'Mars', 1, 3390, 1.52, false);
INSERT INTO public.planet VALUES (5, 'Jupiter', 1, 69911, 5.2, false);
INSERT INTO public.planet VALUES (6, 'Saturn', 1, 58232, 9.58, false);
INSERT INTO public.planet VALUES (7, 'Uranus', 1, 25362, 19.22, false);
INSERT INTO public.planet VALUES (8, 'Neptune', 1, 24622, 30.05, false);
INSERT INTO public.planet VALUES (9, 'Kepler-186f', 2, 12175, 0.05, true);
INSERT INTO public.planet VALUES (10, 'Proxima Centauri b', 2, 11449, 0.0485, true);
INSERT INTO public.planet VALUES (11, 'TRAPPIST-1e', 2, 6790, 0.028, true);
INSERT INTO public.planet VALUES (12, 'Gliese 581g', 2, 13000, 0.146, true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, 1989000000000000000000000000000, true, 'Yellow');
INSERT INTO public.star VALUES (2, 'Sirius', 1, 2.02, true, 'White');
INSERT INTO public.star VALUES (3, 'Alpha Centauri A', 1, 1.1, true, 'Yellow');
INSERT INTO public.star VALUES (4, 'Betelgeuse', 1, 11.6, true, 'Red');
INSERT INTO public.star VALUES (5, 'Vega', 2, 2.1, true, 'Blue');
INSERT INTO public.star VALUES (6, 'Polaris', 2, 5.4, true, 'Yellow');


--
-- Name: another_another_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.another_another_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


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
-- Name: another another_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.another
    ADD CONSTRAINT another_name_key UNIQUE (name);


--
-- Name: another another_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.another
    ADD CONSTRAINT another_pkey PRIMARY KEY (another_id);


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
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: another another_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.another
    ADD CONSTRAINT another_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


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

