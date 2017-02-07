CREATE TABLE [dbo].[sf_media_content_category] (
    [content_id] UNIQUEIDENTIFIER NOT NULL,
    [seq]        INT              NOT NULL,
    [val]        UNIQUEIDENTIFIER NULL,
    CONSTRAINT [pk_sf_media_content_category] PRIMARY KEY CLUSTERED ([content_id] ASC, [seq] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [ref_sf_md_cntnt_ctgry_sf_md_cn] FOREIGN KEY ([content_id]) REFERENCES [dbo].[sf_media_content] ([content_id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_md_content_category_val]
    ON [dbo].[sf_media_content_category]([val] ASC) WITH (FILLFACTOR = 90);

