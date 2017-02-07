CREATE TABLE [dbo].[sf_page_data_sf_language_data] (
    [content_id] UNIQUEIDENTIFIER NOT NULL,
    [seq]        INT              NOT NULL,
    [id]         UNIQUEIDENTIFIER NULL,
    CONSTRAINT [pk_sf_pg_data_sf_language_data] PRIMARY KEY CLUSTERED ([content_id] ASC, [seq] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [ref_sf_pg_dt_sf_lngg_dt_sf_lng] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_language_data] ([id]),
    CONSTRAINT [ref_sf_pg_dt_sf_lngg_dt_sf_pg_] FOREIGN KEY ([content_id]) REFERENCES [dbo].[sf_page_data] ([content_id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_pg_dt_sf_lngage_data_id]
    ON [dbo].[sf_page_data_sf_language_data]([id] ASC) WITH (FILLFACTOR = 90);

