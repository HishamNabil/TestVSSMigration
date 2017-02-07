CREATE TABLE [dbo].[sf_pg_tmpltes_sf_language_data] (
    [id]  UNIQUEIDENTIFIER NOT NULL,
    [seq] INT              NOT NULL,
    [id2] UNIQUEIDENTIFIER NULL,
    CONSTRAINT [pk_sf_pg_tmplts_sf_lngage_data] PRIMARY KEY CLUSTERED ([id] ASC, [seq] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [ref_sf_pg_tmplts_sf_lngg_dt_s2] FOREIGN KEY ([id2]) REFERENCES [dbo].[sf_language_data] ([id]),
    CONSTRAINT [ref_sf_pg_tmplts_sf_lngg_dt_sf] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_page_templates] ([id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_pg_tmplts_sf_lngg_dt_d2]
    ON [dbo].[sf_pg_tmpltes_sf_language_data]([id2] ASC) WITH (FILLFACTOR = 90);

