CREATE TABLE [dbo].[sf_news_items_sf_language_data] (
    [content_id] UNIQUEIDENTIFIER NOT NULL,
    [seq]        INT              NOT NULL,
    [id]         UNIQUEIDENTIFIER NULL,
    CONSTRAINT [pk_sf_nws_tms_sf_language_data] PRIMARY KEY CLUSTERED ([content_id] ASC, [seq] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [ref_sf_nws_tms_sf_lngg_dt_sf_l] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_language_data] ([id]),
    CONSTRAINT [ref_sf_nws_tms_sf_lngg_dt_sf_n] FOREIGN KEY ([content_id]) REFERENCES [dbo].[sf_news_items] ([content_id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_nws_tms_sf_lngg_data_id]
    ON [dbo].[sf_news_items_sf_language_data]([id] ASC) WITH (FILLFACTOR = 90);

