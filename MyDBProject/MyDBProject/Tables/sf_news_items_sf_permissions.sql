CREATE TABLE [dbo].[sf_news_items_sf_permissions] (
    [content_id] UNIQUEIDENTIFIER NOT NULL,
    [id]         UNIQUEIDENTIFIER NOT NULL,
    CONSTRAINT [pk_sf_nws_items_sf_permissions] PRIMARY KEY CLUSTERED ([content_id] ASC, [id] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [ref_sf_nws_tms_sf_prmssns_sf_n] FOREIGN KEY ([content_id]) REFERENCES [dbo].[sf_news_items] ([content_id]),
    CONSTRAINT [ref_sf_nws_tms_sf_prmssns_sf_p] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_permissions] ([id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_nws_tms_sf_prmssions_id]
    ON [dbo].[sf_news_items_sf_permissions]([id] ASC) WITH (FILLFACTOR = 90);

