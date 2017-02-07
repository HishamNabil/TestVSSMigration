CREATE TABLE [dbo].[sf_media_content_tags] (
    [content_id] UNIQUEIDENTIFIER NOT NULL,
    [seq]        INT              NOT NULL,
    [val]        UNIQUEIDENTIFIER NULL,
    CONSTRAINT [pk_sf_media_content_tags] PRIMARY KEY CLUSTERED ([content_id] ASC, [seq] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [ref_sf_md_cntnt_tgs_sf_md_cntn] FOREIGN KEY ([content_id]) REFERENCES [dbo].[sf_media_content] ([content_id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_media_content_tags_val]
    ON [dbo].[sf_media_content_tags]([val] ASC) WITH (FILLFACTOR = 90);

