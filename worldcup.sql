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
    round character varying(40) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
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
    name character varying(40) NOT NULL
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

INSERT INTO public.games VALUES (253, 2018, 'Final', 412, 413, 4, 2);
INSERT INTO public.games VALUES (254, 2018, 'Third Place', 414, 415, 2, 0);
INSERT INTO public.games VALUES (255, 2018, 'Semi-Final', 413, 415, 2, 1);
INSERT INTO public.games VALUES (256, 2018, 'Semi-Final', 412, 414, 1, 0);
INSERT INTO public.games VALUES (257, 2018, 'Quarter-Final', 413, 416, 3, 2);
INSERT INTO public.games VALUES (258, 2018, 'Quarter-Final', 415, 417, 2, 0);
INSERT INTO public.games VALUES (259, 2018, 'Quarter-Final', 414, 418, 2, 1);
INSERT INTO public.games VALUES (260, 2018, 'Quarter-Final', 412, 419, 2, 0);
INSERT INTO public.games VALUES (261, 2018, 'Eighth-Final', 415, 420, 2, 1);
INSERT INTO public.games VALUES (262, 2018, 'Eighth-Final', 417, 421, 1, 0);
INSERT INTO public.games VALUES (263, 2018, 'Eighth-Final', 414, 422, 3, 2);
INSERT INTO public.games VALUES (264, 2018, 'Eighth-Final', 418, 423, 2, 0);
INSERT INTO public.games VALUES (265, 2018, 'Eighth-Final', 413, 424, 2, 1);
INSERT INTO public.games VALUES (266, 2018, 'Eighth-Final', 416, 425, 2, 1);
INSERT INTO public.games VALUES (267, 2018, 'Eighth-Final', 419, 426, 2, 1);
INSERT INTO public.games VALUES (268, 2018, 'Eighth-Final', 412, 427, 4, 3);
INSERT INTO public.games VALUES (269, 2014, 'Final', 428, 427, 1, 0);
INSERT INTO public.games VALUES (270, 2014, 'Third Place', 429, 418, 3, 0);
INSERT INTO public.games VALUES (271, 2014, 'Semi-Final', 427, 429, 1, 0);
INSERT INTO public.games VALUES (272, 2014, 'Semi-Final', 428, 418, 7, 1);
INSERT INTO public.games VALUES (273, 2014, 'Quarter-Final', 429, 430, 1, 0);
INSERT INTO public.games VALUES (274, 2014, 'Quarter-Final', 427, 414, 1, 0);
INSERT INTO public.games VALUES (275, 2014, 'Quarter-Final', 418, 420, 2, 1);
INSERT INTO public.games VALUES (276, 2014, 'Quarter-Final', 428, 412, 1, 0);
INSERT INTO public.games VALUES (277, 2014, 'Eighth-Final', 418, 431, 2, 1);
INSERT INTO public.games VALUES (278, 2014, 'Eighth-Final', 420, 419, 2, 0);
INSERT INTO public.games VALUES (279, 2014, 'Eighth-Final', 412, 432, 2, 0);
INSERT INTO public.games VALUES (280, 2014, 'Eighth-Final', 428, 433, 2, 1);
INSERT INTO public.games VALUES (281, 2014, 'Eighth-Final', 429, 423, 2, 1);
INSERT INTO public.games VALUES (282, 2014, 'Eighth-Final', 430, 434, 2, 1);
INSERT INTO public.games VALUES (283, 2014, 'Eighth-Final', 427, 421, 1, 0);
INSERT INTO public.games VALUES (284, 2014, 'Eighth-Final', 414, 435, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (412, 'France');
INSERT INTO public.teams VALUES (413, 'Croatia');
INSERT INTO public.teams VALUES (414, 'Belgium');
INSERT INTO public.teams VALUES (415, 'England');
INSERT INTO public.teams VALUES (416, 'Russia');
INSERT INTO public.teams VALUES (417, 'Sweden');
INSERT INTO public.teams VALUES (418, 'Brazil');
INSERT INTO public.teams VALUES (419, 'Uruguay');
INSERT INTO public.teams VALUES (420, 'Colombia');
INSERT INTO public.teams VALUES (421, 'Switzerland');
INSERT INTO public.teams VALUES (422, 'Japan');
INSERT INTO public.teams VALUES (423, 'Mexico');
INSERT INTO public.teams VALUES (424, 'Denmark');
INSERT INTO public.teams VALUES (425, 'Spain');
INSERT INTO public.teams VALUES (426, 'Portugal');
INSERT INTO public.teams VALUES (427, 'Argentina');
INSERT INTO public.teams VALUES (428, 'Germany');
INSERT INTO public.teams VALUES (429, 'Netherlands');
INSERT INTO public.teams VALUES (430, 'Costa Rica');
INSERT INTO public.teams VALUES (431, 'Chile');
INSERT INTO public.teams VALUES (432, 'Nigeria');
INSERT INTO public.teams VALUES (433, 'Algeria');
INSERT INTO public.teams VALUES (434, 'Greece');
INSERT INTO public.teams VALUES (435, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 284, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 435, true);


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
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

