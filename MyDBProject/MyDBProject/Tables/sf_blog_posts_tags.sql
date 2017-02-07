CREATE TABLE [dbo].[sf_blog_posts_tags] (
    [content_id] UNIQUEIDENTIFIER NOT NULL,
    [seq]        INT              NOT NULL,
    [val]        UNIQUEIDENTIFIER NULL,
    CONSTRAINT [pk_sf_blog_posts_tags] PRIMARY KEY CLUSTERED ([content_id] ASC, [seq] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [ref_sf_blg_psts_tgs_sf_blg_pst] FOREIGN KEY ([content_id]) REFERENCES [dbo].[sf_blog_posts] ([content_id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_blog_posts_tags_val]
    ON [dbo].[sf_blog_posts_tags]([val] ASC) WITH (FILLFACTOR = 90);

