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

INSERT INTO public.games VALUES (1, 419, 0, 110);
INSERT INTO public.games VALUES (2, 882, 0, 111);
INSERT INTO public.games VALUES (3, 414, 0, 110);
INSERT INTO public.games VALUES (4, 311, 0, 110);
INSERT INTO public.games VALUES (5, 328, 0, 110);
INSERT INTO public.games VALUES (6, 221, 0, 112);
INSERT INTO public.games VALUES (7, 707, 0, 113);
INSERT INTO public.games VALUES (8, 384, 0, 112);
INSERT INTO public.games VALUES (9, 136, 0, 112);
INSERT INTO public.games VALUES (10, 913, 0, 112);
INSERT INTO public.games VALUES (11, 364, 0, 3);
INSERT INTO public.games VALUES (12, 234, 0, 3);
INSERT INTO public.games VALUES (13, 908, 0, 114);
INSERT INTO public.games VALUES (14, 598, 0, 115);
INSERT INTO public.games VALUES (15, 827, 0, 114);
INSERT INTO public.games VALUES (16, 259, 0, 114);
INSERT INTO public.games VALUES (17, 47, 0, 114);
INSERT INTO public.games VALUES (18, 899, 0, 117);
INSERT INTO public.games VALUES (19, 32, 0, 118);
INSERT INTO public.games VALUES (20, 763, 0, 117);
INSERT INTO public.games VALUES (21, 850, 0, 117);
INSERT INTO public.games VALUES (22, 93, 0, 116);
INSERT INTO public.games VALUES (23, 858, 0, 117);
INSERT INTO public.games VALUES (24, 811, 0, 119);
INSERT INTO public.games VALUES (25, 752, 0, 116);
INSERT INTO public.games VALUES (26, 408, 0, 116);
INSERT INTO public.games VALUES (27, 130, 0, 116);
INSERT INTO public.games VALUES (28, 178, 0, 120);
INSERT INTO public.games VALUES (29, 552, 0, 121);
INSERT INTO public.games VALUES (30, 869, 0, 120);
INSERT INTO public.games VALUES (31, 583, 0, 120);
INSERT INTO public.games VALUES (32, 807, 0, 120);
INSERT INTO public.games VALUES (33, 606, 0, 3);
INSERT INTO public.games VALUES (34, 890, 0, 122);
INSERT INTO public.games VALUES (35, 746, 0, 123);
INSERT INTO public.games VALUES (36, 188, 0, 122);
INSERT INTO public.games VALUES (37, 25, 0, 122);
INSERT INTO public.games VALUES (38, 375, 0, 122);
INSERT INTO public.games VALUES (39, 942, 0, 3);
INSERT INTO public.games VALUES (40, 127, 0, 124);
INSERT INTO public.games VALUES (41, 840, 0, 125);
INSERT INTO public.games VALUES (42, 2, 0, 124);
INSERT INTO public.games VALUES (43, 855, 0, 124);
INSERT INTO public.games VALUES (44, 610, 0, 124);
INSERT INTO public.games VALUES (45, 489, 0, 3);
INSERT INTO public.games VALUES (46, 866, 0, 3);
INSERT INTO public.games VALUES (47, 382, 0, 126);
INSERT INTO public.games VALUES (48, 607, 0, 127);
INSERT INTO public.games VALUES (49, 606, 0, 128);
INSERT INTO public.games VALUES (50, 684, 0, 126);
INSERT INTO public.games VALUES (51, 649, 0, 3);
INSERT INTO public.games VALUES (52, 945, 0, 129);
INSERT INTO public.games VALUES (53, 409, 0, 126);
INSERT INTO public.games VALUES (54, 639, 0, 127);
INSERT INTO public.games VALUES (102, 672, 291, 144);
INSERT INTO public.games VALUES (70, 475, 534, 135);
INSERT INTO public.games VALUES (67, 776, 394, 132);
INSERT INTO public.games VALUES (69, 363, 241, 132);
INSERT INTO public.games VALUES (68, 160, 704, 134);
INSERT INTO public.games VALUES (71, 552, 108, 132);
INSERT INTO public.games VALUES (72, 181, 408, 134);
INSERT INTO public.games VALUES (66, 249, 537, 133);
INSERT INTO public.games VALUES (58, 228, 725, 130);
INSERT INTO public.games VALUES (63, 803, 285, 130);
INSERT INTO public.games VALUES (62, 980, 425, 130);
INSERT INTO public.games VALUES (64, 767, 138, 130);
INSERT INTO public.games VALUES (73, 490, 290, 134);
INSERT INTO public.games VALUES (59, 794, 0, 3);
INSERT INTO public.games VALUES (74, 623, 145, 134);
INSERT INTO public.games VALUES (97, 458, 783, 144);
INSERT INTO public.games VALUES (78, 137, 139, 136);
INSERT INTO public.games VALUES (99, 325, 553, 145);
INSERT INTO public.games VALUES (96, 524, 927, 144);
INSERT INTO public.games VALUES (80, 82, 83, 139);
INSERT INTO public.games VALUES (101, 105, 108, 144);
INSERT INTO public.games VALUES (56, 111, 5, 3);
INSERT INTO public.games VALUES (55, 41, 42, 126);
INSERT INTO public.games VALUES (57, 365, 235, 127);
INSERT INTO public.games VALUES (60, 866, 111, 127);
INSERT INTO public.games VALUES (93, 888, 422, 141);
INSERT INTO public.games VALUES (65, 139, 140, 132);
INSERT INTO public.games VALUES (90, 233, 722, 142);
INSERT INTO public.games VALUES (87, 480, 997, 141);
INSERT INTO public.games VALUES (89, 556, 863, 141);
INSERT INTO public.games VALUES (95, 706, 133, 141);
INSERT INTO public.games VALUES (92, 276, 577, 142);
INSERT INTO public.games VALUES (94, 329, 279, 141);
INSERT INTO public.games VALUES (88, 506, 0, 3);
INSERT INTO public.games VALUES (61, 40, 41, 131);
INSERT INTO public.games VALUES (116, 122, 125, 149);
INSERT INTO public.games VALUES (91, 34, 20, 143);
INSERT INTO public.games VALUES (115, 940, 564, 150);
INSERT INTO public.games VALUES (112, 298, 999, 149);
INSERT INTO public.games VALUES (86, 49, 50, 139);
INSERT INTO public.games VALUES (114, 392, 710, 150);
INSERT INTO public.games VALUES (113, 412, 860, 149);
INSERT INTO public.games VALUES (104, 38, 39, 147);
INSERT INTO public.games VALUES (76, 460, 575, 137);
INSERT INTO public.games VALUES (79, 291, 142, 136);
INSERT INTO public.games VALUES (75, 919, 804, 136);
INSERT INTO public.games VALUES (77, 999, 429, 136);
INSERT INTO public.games VALUES (117, 940, 284, 149);
INSERT INTO public.games VALUES (118, 835, 135, 149);
INSERT INTO public.games VALUES (81, 165, 765, 139);
INSERT INTO public.games VALUES (119, 374, 0, 146);
INSERT INTO public.games VALUES (100, 767, 10, 146);
INSERT INTO public.games VALUES (82, 747, 640, 140);
INSERT INTO public.games VALUES (83, 326, 497, 140);
INSERT INTO public.games VALUES (84, 581, 346, 139);
INSERT INTO public.games VALUES (85, 338, 201, 139);
INSERT INTO public.games VALUES (111, 915, 138, 147);
INSERT INTO public.games VALUES (110, 494, 285, 147);
INSERT INTO public.games VALUES (109, 517, 432, 147);
INSERT INTO public.games VALUES (98, 91, 92, 145);
INSERT INTO public.games VALUES (108, 674, 578, 148);
INSERT INTO public.games VALUES (106, 298, 724, 148);
INSERT INTO public.games VALUES (105, 196, 859, 147);
INSERT INTO public.games VALUES (107, 652, 20, 146);
INSERT INTO public.games VALUES (103, 830, 143, 144);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1703635128512');
INSERT INTO public.users VALUES (2, 'user_1703635128511');
INSERT INTO public.users VALUES (3, 'me');
INSERT INTO public.users VALUES (4, 'user_1703635163033');
INSERT INTO public.users VALUES (5, 'user_1703635163032');
INSERT INTO public.users VALUES (6, 'user_1703635173498');
INSERT INTO public.users VALUES (7, 'user_1703635173497');
INSERT INTO public.users VALUES (8, 'user_1703635279573');
INSERT INTO public.users VALUES (9, 'user_1703635279572');
INSERT INTO public.users VALUES (10, 'user_1703635282149');
INSERT INTO public.users VALUES (11, 'user_1703635282148');
INSERT INTO public.users VALUES (12, 'user_1703635357579');
INSERT INTO public.users VALUES (92, 'user_1703635764457');
INSERT INTO public.users VALUES (14, 'user_1703635357578');
INSERT INTO public.users VALUES (93, 'user_1703635764456');
INSERT INTO public.users VALUES (94, 'user_1703635774797');
INSERT INTO public.users VALUES (95, 'user_1703635774796');
INSERT INTO public.users VALUES (96, 'user_1703635781729');
INSERT INTO public.users VALUES (19, 'user_1703635388406');
INSERT INTO public.users VALUES (97, 'user_1703635781728');
INSERT INTO public.users VALUES (21, 'user_1703635388405');
INSERT INTO public.users VALUES (98, 'user_1703635788715');
INSERT INTO public.users VALUES (99, 'user_1703635788714');
INSERT INTO public.users VALUES (100, 'user_1703635817630');
INSERT INTO public.users VALUES (101, 'user_1703635817629');
INSERT INTO public.users VALUES (26, 'user_1703635399525');
INSERT INTO public.users VALUES (102, 'user_1703635839804');
INSERT INTO public.users VALUES (28, 'user_1703635399524');
INSERT INTO public.users VALUES (103, 'user_1703635839803');
INSERT INTO public.users VALUES (104, 'user_1703635845282');
INSERT INTO public.users VALUES (105, 'user_1703635845281');
INSERT INTO public.users VALUES (106, 'user_1703635907828');
INSERT INTO public.users VALUES (33, 'zap');
INSERT INTO public.users VALUES (34, 'user_1703635588577');
INSERT INTO public.users VALUES (107, 'user_1703635907827');
INSERT INTO public.users VALUES (36, 'user_1703635588576');
INSERT INTO public.users VALUES (108, 'user_1703635916070');
INSERT INTO public.users VALUES (109, 'user_1703635916069');
INSERT INTO public.users VALUES (110, 'user_1703635952210');
INSERT INTO public.users VALUES (111, 'user_1703635952209');
INSERT INTO public.users VALUES (41, 'user_1703635593134');
INSERT INTO public.users VALUES (112, 'user_1703635972813');
INSERT INTO public.users VALUES (43, 'user_1703635593133');
INSERT INTO public.users VALUES (113, 'user_1703635972812');
INSERT INTO public.users VALUES (114, 'user_1703636077554');
INSERT INTO public.users VALUES (115, 'user_1703636077553');
INSERT INTO public.users VALUES (116, 'user_1703636232623');
INSERT INTO public.users VALUES (48, 'user_1703635604219');
INSERT INTO public.users VALUES (117, 'user_1703636238781');
INSERT INTO public.users VALUES (50, 'user_1703635604218');
INSERT INTO public.users VALUES (118, 'user_1703636238780');
INSERT INTO public.users VALUES (119, 'user_1703636232622');
INSERT INTO public.users VALUES (120, 'user_1703636245391');
INSERT INTO public.users VALUES (121, 'user_1703636245390');
INSERT INTO public.users VALUES (55, 'user_1703635616789');
INSERT INTO public.users VALUES (122, 'user_1703636326867');
INSERT INTO public.users VALUES (57, 'user_1703635616788');
INSERT INTO public.users VALUES (123, 'user_1703636326866');
INSERT INTO public.users VALUES (124, 'user_1703636405436');
INSERT INTO public.users VALUES (125, 'user_1703636405435');
INSERT INTO public.users VALUES (126, 'user_1703636615507');
INSERT INTO public.users VALUES (62, 'user_1703635667094');
INSERT INTO public.users VALUES (127, 'user_1703636626416');
INSERT INTO public.users VALUES (64, 'user_1703635667093');
INSERT INTO public.users VALUES (128, 'user_1703636615506');
INSERT INTO public.users VALUES (129, 'user_1703636626415');
INSERT INTO public.users VALUES (130, 'user_1703636658618');
INSERT INTO public.users VALUES (131, 'user_1703636658617');
INSERT INTO public.users VALUES (69, 'user_1703635680048');
INSERT INTO public.users VALUES (132, 'user_1703636711706');
INSERT INTO public.users VALUES (71, 'user_1703635680047');
INSERT INTO public.users VALUES (133, 'user_1703636711705');
INSERT INTO public.users VALUES (134, 'user_1703636736239');
INSERT INTO public.users VALUES (135, 'user_1703636736238');
INSERT INTO public.users VALUES (136, 'user_1703636856167');
INSERT INTO public.users VALUES (76, 'user_1703635683761');
INSERT INTO public.users VALUES (137, 'user_1703636856166');
INSERT INTO public.users VALUES (78, 'user_1703635683760');
INSERT INTO public.users VALUES (138, 'teste');
INSERT INTO public.users VALUES (139, 'user_1703636948620');
INSERT INTO public.users VALUES (140, 'user_1703636948619');
INSERT INTO public.users VALUES (141, 'user_1703636995352');
INSERT INTO public.users VALUES (142, 'user_1703636995351');
INSERT INTO public.users VALUES (84, 'user_1703635742915');
INSERT INTO public.users VALUES (143, '1234asd');
INSERT INTO public.users VALUES (86, 'user_1703635742914');
INSERT INTO public.users VALUES (144, 'user_1703637073046');
INSERT INTO public.users VALUES (145, 'user_1703637073045');
INSERT INTO public.users VALUES (146, 'za');
INSERT INTO public.users VALUES (147, 'user_1703637144854');
INSERT INTO public.users VALUES (148, 'user_1703637144853');
INSERT INTO public.users VALUES (149, 'user_1703637315668');
INSERT INTO public.users VALUES (150, 'user_1703637315667');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 119, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 150, true);


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

