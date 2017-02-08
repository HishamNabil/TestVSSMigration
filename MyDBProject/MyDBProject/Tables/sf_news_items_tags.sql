﻿CREATE TABLE [dbo].[sf_news_items_tags] (
    [content_id] UNIQUEIDENTIFIER NOT NULL,
    [seq]        INT              NOT NULL,
    [val]        UNIQUEIDENTIFIER NULL,
    CONSTRAINT [pk_sf_news_items_tags] PRIMARY KEY CLUSTERED ([content_id] ASC, [seq] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [ref_sf_nws_tms_tgs_sf_nws_tems] FOREIGN KEY ([content_id]) REFERENCES [dbo].[sf_news_items] ([content_id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_news_items_tags_val]
    ON [dbo].[sf_news_items_tags]([val] ASC) WITH (FILLFACTOR = 90);

