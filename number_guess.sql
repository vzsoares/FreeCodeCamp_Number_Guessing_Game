--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-0ubuntu0.20.04.1)

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
    secret_number integer NOT NULL,
    attempts integer DEFAULT 0 NOT NULL,
    user_id integer NOT NULL
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
    user_id integer NOT NULL,
    name character varying(40) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (127, 451, 12, 153);
INSERT INTO public.games VALUES (147, 656, 427, 158);
INSERT INTO public.games VALUES (148, 221, 280, 158);
INSERT INTO public.games VALUES (130, 957, 841, 154);
INSERT INTO public.games VALUES (135, 915, 141, 154);
INSERT INTO public.games VALUES (133, 619, 401, 154);
INSERT INTO public.games VALUES (131, 368, 692, 155);
INSERT INTO public.games VALUES (128, 740, 968, 154);
INSERT INTO public.games VALUES (132, 637, 548, 155);
INSERT INTO public.games VALUES (144, 622, 836, 158);
INSERT INTO public.games VALUES (129, 929, 21, 153);
INSERT INTO public.games VALUES (143, 798, 963, 158);
INSERT INTO public.games VALUES (149, 481, 140, 158);
INSERT INTO public.games VALUES (146, 854, 578, 159);
INSERT INTO public.games VALUES (124, 162, 429, 151);
INSERT INTO public.games VALUES (122, 310, 720, 152);
INSERT INTO public.games VALUES (120, 457, 1009, 151);
INSERT INTO public.games VALUES (125, 613, 278, 151);
INSERT INTO public.games VALUES (121, 436, 862, 151);
INSERT INTO public.games VALUES (126, 235, 131, 151);
INSERT INTO public.games VALUES (123, 131, 132, 152);
INSERT INTO public.games VALUES (138, 260, 721, 157);
INSERT INTO public.games VALUES (142, 885, 135, 156);
INSERT INTO public.games VALUES (139, 573, 576, 157);
INSERT INTO public.games VALUES (141, 452, 277, 156);
INSERT INTO public.games VALUES (140, 787, 425, 156);
INSERT INTO public.games VALUES (134, 100, 102, 154);
INSERT INTO public.games VALUES (137, 514, 865, 156);
INSERT INTO public.games VALUES (136, 837, 1005, 156);
INSERT INTO public.games VALUES (145, 116, 117, 159);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (153, 'zap');
INSERT INTO public.users VALUES (154, 'user_1703637692747');
INSERT INTO public.users VALUES (155, 'user_1703637692746');
INSERT INTO public.users VALUES (156, 'user_1703637792200');
INSERT INTO public.users VALUES (157, 'user_1703637792199');
INSERT INTO public.users VALUES (158, 'user_1703638048007');
INSERT INTO public.users VALUES (159, 'user_1703638048006');
INSERT INTO public.users VALUES (151, 'user_1703637463264');
INSERT INTO public.users VALUES (152, 'user_1703637463263');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 149, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 159, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_name_key UNIQUE (name);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: games user_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT user_id_fk FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

