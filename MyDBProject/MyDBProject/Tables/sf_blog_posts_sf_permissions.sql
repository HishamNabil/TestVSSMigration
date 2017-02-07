CREATE TABLE [dbo].[sf_blog_posts_sf_permissions] (
    [content_id] UNIQUEIDENTIFIER NOT NULL,
    [id]         UNIQUEIDENTIFIER NOT NULL,
    CONSTRAINT [pk_sf_blg_posts_sf_permissions] PRIMARY KEY CLUSTERED ([content_id] ASC, [id] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [ref_sf_blg_psts_sf_prmssns_sf_] FOREIGN KEY ([content_id]) REFERENCES [dbo].[sf_blog_posts] ([content_id]),
    CONSTRAINT [ref_sf_blg_psts_sf_prmssns_sf2] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_permissions] ([id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_blg_psts_sf_prmssons_id]
    ON [dbo].[sf_blog_posts_sf_permissions]([id] ASC) WITH (FILLFACTOR = 90);

