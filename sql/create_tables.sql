-- Table: public.Reactions

CREATE TABLE IF NOT EXISTS public."Reactions"
(
    "Id" uuid,
    "AuthorId" uuid,
    "Positive" boolean,
    "PostId" uuid,
)

TABLESPACE pg_default;

ALTER TABLE public."Reactions"
    OWNER to postgres;