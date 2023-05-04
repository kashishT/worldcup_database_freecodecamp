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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    year integer NOT NULL,
    round character varying NOT NULL,
    opponent_id integer NOT NULL,
    winner_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (55, 2018, 'Final', 26, 25, 4, 2);
INSERT INTO public.games VALUES (56, 2018, 'Third Place', 28, 27, 2, 0);
INSERT INTO public.games VALUES (57, 2018, 'Semi-Final', 28, 26, 2, 1);
INSERT INTO public.games VALUES (58, 2018, 'Semi-Final', 27, 25, 1, 0);
INSERT INTO public.games VALUES (59, 2018, 'Quarter-Final', 29, 26, 3, 2);
INSERT INTO public.games VALUES (60, 2018, 'Quarter-Final', 30, 28, 2, 0);
INSERT INTO public.games VALUES (61, 2018, 'Quarter-Final', 31, 27, 2, 1);
INSERT INTO public.games VALUES (62, 2018, 'Quarter-Final', 32, 25, 2, 0);
INSERT INTO public.games VALUES (63, 2018, 'Eighth-Final', 33, 28, 2, 1);
INSERT INTO public.games VALUES (64, 2018, 'Eighth-Final', 34, 30, 1, 0);
INSERT INTO public.games VALUES (65, 2018, 'Eighth-Final', 35, 27, 3, 2);
INSERT INTO public.games VALUES (66, 2018, 'Eighth-Final', 36, 31, 2, 0);
INSERT INTO public.games VALUES (67, 2018, 'Eighth-Final', 37, 26, 2, 1);
INSERT INTO public.games VALUES (68, 2018, 'Eighth-Final', 38, 29, 2, 1);
INSERT INTO public.games VALUES (69, 2018, 'Eighth-Final', 39, 32, 2, 1);
INSERT INTO public.games VALUES (70, 2018, 'Eighth-Final', 40, 25, 4, 3);
INSERT INTO public.games VALUES (71, 2014, 'Final', 40, 41, 1, 0);
INSERT INTO public.games VALUES (72, 2014, 'Third Place', 31, 42, 3, 0);
INSERT INTO public.games VALUES (73, 2014, 'Semi-Final', 42, 40, 1, 0);
INSERT INTO public.games VALUES (74, 2014, 'Semi-Final', 31, 41, 7, 1);
INSERT INTO public.games VALUES (75, 2014, 'Quarter-Final', 43, 42, 1, 0);
INSERT INTO public.games VALUES (76, 2014, 'Quarter-Final', 27, 40, 1, 0);
INSERT INTO public.games VALUES (77, 2014, 'Quarter-Final', 33, 31, 2, 1);
INSERT INTO public.games VALUES (78, 2014, 'Quarter-Final', 25, 41, 1, 0);
INSERT INTO public.games VALUES (79, 2014, 'Eighth-Final', 44, 31, 2, 1);
INSERT INTO public.games VALUES (80, 2014, 'Eighth-Final', 32, 33, 2, 0);
INSERT INTO public.games VALUES (81, 2014, 'Eighth-Final', 45, 25, 2, 0);
INSERT INTO public.games VALUES (82, 2014, 'Eighth-Final', 46, 41, 2, 1);
INSERT INTO public.games VALUES (83, 2014, 'Eighth-Final', 36, 42, 2, 1);
INSERT INTO public.games VALUES (84, 2014, 'Eighth-Final', 47, 43, 2, 1);
INSERT INTO public.games VALUES (85, 2014, 'Eighth-Final', 34, 40, 1, 0);
INSERT INTO public.games VALUES (86, 2014, 'Eighth-Final', 48, 27, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (25, 'France');
INSERT INTO public.teams VALUES (26, 'Croatia');
INSERT INTO public.teams VALUES (27, 'Belgium');
INSERT INTO public.teams VALUES (28, 'England');
INSERT INTO public.teams VALUES (29, 'Russia');
INSERT INTO public.teams VALUES (30, 'Sweden');
INSERT INTO public.teams VALUES (31, 'Brazil');
INSERT INTO public.teams VALUES (32, 'Uruguay');
INSERT INTO public.teams VALUES (33, 'Colombia');
INSERT INTO public.teams VALUES (34, 'Switzerland');
INSERT INTO public.teams VALUES (35, 'Japan');
INSERT INTO public.teams VALUES (36, 'Mexico');
INSERT INTO public.teams VALUES (37, 'Denmark');
INSERT INTO public.teams VALUES (38, 'Spain');
INSERT INTO public.teams VALUES (39, 'Portugal');
INSERT INTO public.teams VALUES (40, 'Argentina');
INSERT INTO public.teams VALUES (41, 'Germany');
INSERT INTO public.teams VALUES (42, 'Netherlands');
INSERT INTO public.teams VALUES (43, 'Costa Rica');
INSERT INTO public.teams VALUES (44, 'Chile');
INSERT INTO public.teams VALUES (45, 'Nigeria');
INSERT INTO public.teams VALUES (46, 'Algeria');
INSERT INTO public.teams VALUES (47, 'Greece');
INSERT INTO public.teams VALUES (48, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 86, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 48, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games fk_opponent_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_opponent_id FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games fk_winner_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_winner_id FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

