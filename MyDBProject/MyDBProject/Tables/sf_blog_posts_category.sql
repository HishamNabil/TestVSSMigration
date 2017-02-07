CREATE TABLE [dbo].[sf_blog_posts_category] (
    [content_id] UNIQUEIDENTIFIER NOT NULL,
    [seq]        INT              NOT NULL,
    [val]        UNIQUEIDENTIFIER NULL,
    CONSTRAINT [pk_sf_blog_posts_category] PRIMARY KEY CLUSTERED ([content_id] ASC, [seq] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [ref_sf_blg_psts_ctgry_sf_blg_p] FOREIGN KEY ([content_id]) REFERENCES [dbo].[sf_blog_posts] ([content_id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_blog_posts_category_val]
    ON [dbo].[sf_blog_posts_category]([val] ASC) WITH (FILLFACTOR = 90);

