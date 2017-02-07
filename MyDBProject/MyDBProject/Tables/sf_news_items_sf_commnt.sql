﻿CREATE TABLE [dbo].[sf_news_items_sf_commnt] (
    [content_id]  UNIQUEIDENTIFIER NOT NULL,
    [seq]         INT              NOT NULL,
    [content_id2] UNIQUEIDENTIFIER NULL,
    CONSTRAINT [pk_sf_news_items_sf_commnt] PRIMARY KEY CLUSTERED ([content_id] ASC, [seq] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [ref_sf_nws_tms_sf_cmmnt_sf_cmm] FOREIGN KEY ([content_id2]) REFERENCES [dbo].[sf_commnt] ([content_id]),
    CONSTRAINT [ref_sf_nws_tms_sf_cmmnt_sf_nws] FOREIGN KEY ([content_id]) REFERENCES [dbo].[sf_news_items] ([content_id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_nws_tms_sf_cmmnt_cntnt_]
    ON [dbo].[sf_news_items_sf_commnt]([content_id2] ASC) WITH (FILLFACTOR = 90);

