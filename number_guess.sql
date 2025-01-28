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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    guesses integer NOT NULL,
    u_id integer
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    u_id integer NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_u_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_u_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_u_id_seq OWNER TO freecodecamp;

--
-- Name: users_u_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_u_id_seq OWNED BY public.users.u_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users u_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN u_id SET DEFAULT nextval('public.users_u_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 339, 2);
INSERT INTO public.games VALUES (2, 726, 2);
INSERT INTO public.games VALUES (3, 392, 3);
INSERT INTO public.games VALUES (4, 823, 3);
INSERT INTO public.games VALUES (5, 275, 2);
INSERT INTO public.games VALUES (6, 854, 2);
INSERT INTO public.games VALUES (7, 611, 2);
INSERT INTO public.games VALUES (8, 239, 4);
INSERT INTO public.games VALUES (9, 518, 4);
INSERT INTO public.games VALUES (10, 776, 5);
INSERT INTO public.games VALUES (11, 611, 5);
INSERT INTO public.games VALUES (12, 323, 4);
INSERT INTO public.games VALUES (13, 393, 4);
INSERT INTO public.games VALUES (14, 108, 4);
INSERT INTO public.games VALUES (15, 168, 6);
INSERT INTO public.games VALUES (16, 758, 6);
INSERT INTO public.games VALUES (17, 783, 7);
INSERT INTO public.games VALUES (18, 641, 7);
INSERT INTO public.games VALUES (19, 792, 6);
INSERT INTO public.games VALUES (20, 115, 6);
INSERT INTO public.games VALUES (21, 526, 6);
INSERT INTO public.games VALUES (22, 529, 8);
INSERT INTO public.games VALUES (23, 119, 8);
INSERT INTO public.games VALUES (24, 950, 9);
INSERT INTO public.games VALUES (25, 982, 9);
INSERT INTO public.games VALUES (26, 564, 8);
INSERT INTO public.games VALUES (27, 389, 8);
INSERT INTO public.games VALUES (28, 623, 8);
INSERT INTO public.games VALUES (29, 258, 10);
INSERT INTO public.games VALUES (30, 508, 10);
INSERT INTO public.games VALUES (31, 756, 11);
INSERT INTO public.games VALUES (32, 822, 11);
INSERT INTO public.games VALUES (33, 822, 10);
INSERT INTO public.games VALUES (34, 592, 10);
INSERT INTO public.games VALUES (35, 775, 10);
INSERT INTO public.games VALUES (36, 936, 12);
INSERT INTO public.games VALUES (37, 679, 12);
INSERT INTO public.games VALUES (38, 885, 13);
INSERT INTO public.games VALUES (39, 431, 13);
INSERT INTO public.games VALUES (40, 981, 12);
INSERT INTO public.games VALUES (41, 367, 12);
INSERT INTO public.games VALUES (42, 224, 12);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'sahil');
INSERT INTO public.users VALUES (2, 'user_1738049743918');
INSERT INTO public.users VALUES (3, 'user_1738049743917');
INSERT INTO public.users VALUES (4, 'user_1738049759774');
INSERT INTO public.users VALUES (5, 'user_1738049759773');
INSERT INTO public.users VALUES (6, 'user_1738049769822');
INSERT INTO public.users VALUES (7, 'user_1738049769821');
INSERT INTO public.users VALUES (8, 'user_1738049786581');
INSERT INTO public.users VALUES (9, 'user_1738049786580');
INSERT INTO public.users VALUES (10, 'user_1738049797766');
INSERT INTO public.users VALUES (11, 'user_1738049797765');
INSERT INTO public.users VALUES (12, 'user_1738049829070');
INSERT INTO public.users VALUES (13, 'user_1738049829069');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 42, true);


--
-- Name: users_u_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_u_id_seq', 13, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (u_id);


--
-- Name: games games_u_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_u_id_fkey FOREIGN KEY (u_id) REFERENCES public.users(u_id);


--
-- PostgreSQL database dump complete
--

