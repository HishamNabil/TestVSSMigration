CREATE TABLE [dbo].[sf_blog_posts_sf_language_data] (
    [content_id] UNIQUEIDENTIFIER NOT NULL,
    [seq]        INT              NOT NULL,
    [id]         UNIQUEIDENTIFIER NULL,
    CONSTRAINT [pk_sf_blg_psts_sf_lnguage_data] PRIMARY KEY CLUSTERED ([content_id] ASC, [seq] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [ref_sf_blg_psts_sf_lngg_dt_sf_] FOREIGN KEY ([content_id]) REFERENCES [dbo].[sf_blog_posts] ([content_id]),
    CONSTRAINT [ref_sf_blg_psts_sf_lngg_dt_sf2] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_language_data] ([id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_blg_psts_sf_lngg_dta_id]
    ON [dbo].[sf_blog_posts_sf_language_data]([id] ASC) WITH (FILLFACTOR = 90);

