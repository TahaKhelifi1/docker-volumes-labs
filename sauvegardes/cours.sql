--
-- PostgreSQL database dump
--

\restrict vohY9ZuZ6q4bK6N4dd2kZx4vOefIHdtERwcm7jcvPLCsOD7nqvdWVQxGGaF9Ghn

-- Dumped from database version 16.16
-- Dumped by pg_dump version 16.16

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
-- Name: notes; Type: TABLE; Schema: public; Owner: etudiant
--

CREATE TABLE public.notes (
    id integer NOT NULL,
    texte text
);


ALTER TABLE public.notes OWNER TO etudiant;

--
-- Name: notes_id_seq; Type: SEQUENCE; Schema: public; Owner: etudiant
--

CREATE SEQUENCE public.notes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.notes_id_seq OWNER TO etudiant;

--
-- Name: notes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: etudiant
--

ALTER SEQUENCE public.notes_id_seq OWNED BY public.notes.id;


--
-- Name: notes id; Type: DEFAULT; Schema: public; Owner: etudiant
--

ALTER TABLE ONLY public.notes ALTER COLUMN id SET DEFAULT nextval('public.notes_id_seq'::regclass);


--
-- Data for Name: notes; Type: TABLE DATA; Schema: public; Owner: etudiant
--

COPY public.notes (id, texte) FROM stdin;
1	Premiere note
2	Deuxieme note
3	Troisieme note
4	Premiere note
5	Deuxieme note
6	Troisieme note
\.


--
-- Name: notes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: etudiant
--

SELECT pg_catalog.setval('public.notes_id_seq', 6, true);


--
-- Name: notes notes_pkey; Type: CONSTRAINT; Schema: public; Owner: etudiant
--

ALTER TABLE ONLY public.notes
    ADD CONSTRAINT notes_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

\unrestrict vohY9ZuZ6q4bK6N4dd2kZx4vOefIHdtERwcm7jcvPLCsOD7nqvdWVQxGGaF9Ghn

