CREATE TABLE [dbo].[sf_pg_tmplts_pblshd_trnsltions] (
    [id]  UNIQUEIDENTIFIER NOT NULL,
    [seq] INT              NOT NULL,
    [val] VARCHAR (255)    NULL,
    CONSTRAINT [pk_sf_pg_tmplts_pblshd_trnsltn] PRIMARY KEY CLUSTERED ([id] ASC, [seq] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [ref_sf_pg_tmplts_pblshd_trnslt] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_page_templates] ([id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_pg_tmplts_pblshd_trnslt]
    ON [dbo].[sf_pg_tmplts_pblshd_trnsltions]([val] ASC) WITH (FILLFACTOR = 90);

