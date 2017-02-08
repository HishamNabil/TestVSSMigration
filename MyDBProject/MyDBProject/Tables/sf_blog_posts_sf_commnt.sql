﻿CREATE TABLE [dbo].[sf_blog_posts_sf_commnt] (
    [content_id]  UNIQUEIDENTIFIER NOT NULL,
    [seq]         INT              NOT NULL,
    [content_id2] UNIQUEIDENTIFIER NULL,
    CONSTRAINT [pk_sf_blog_posts_sf_commnt] PRIMARY KEY CLUSTERED ([content_id] ASC, [seq] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [ref_sf_blg_psts_sf_cmmnt_sf_bl] FOREIGN KEY ([content_id]) REFERENCES [dbo].[sf_blog_posts] ([content_id]),
    CONSTRAINT [ref_sf_blg_psts_sf_cmmnt_sf_cm] FOREIGN KEY ([content_id2]) REFERENCES [dbo].[sf_commnt] ([content_id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_blg_psts_sf_cmmnt_cntnt]
    ON [dbo].[sf_blog_posts_sf_commnt]([content_id2] ASC) WITH (FILLFACTOR = 90);

