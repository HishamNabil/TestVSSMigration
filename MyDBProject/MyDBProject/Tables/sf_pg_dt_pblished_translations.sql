CREATE TABLE [dbo].[sf_pg_dt_pblished_translations] (
    [content_id] UNIQUEIDENTIFIER NOT NULL,
    [seq]        INT              NOT NULL,
    [val]        VARCHAR (255)    NULL,
    CONSTRAINT [pk_sf_pg_dt_pblshd_trnslations] PRIMARY KEY CLUSTERED ([content_id] ASC, [seq] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [ref_sf_pg_dt_pblshd_trnsltns_s] FOREIGN KEY ([content_id]) REFERENCES [dbo].[sf_page_data] ([content_id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_pg_dt_pblshd_trnsltns_v]
    ON [dbo].[sf_pg_dt_pblished_translations]([val] ASC) WITH (FILLFACTOR = 90);

