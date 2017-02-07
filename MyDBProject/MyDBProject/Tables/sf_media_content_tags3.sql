CREATE TABLE [dbo].[sf_media_content_tags3] (
    [content_id] UNIQUEIDENTIFIER NOT NULL,
    [seq]        INT              NOT NULL,
    [val]        UNIQUEIDENTIFIER NULL,
    CONSTRAINT [pk_sf_media_content_tags3] PRIMARY KEY CLUSTERED ([content_id] ASC, [seq] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [ref_sf_md_cntnt_tgs3_sf_md_cnt] FOREIGN KEY ([content_id]) REFERENCES [dbo].[sf_media_content] ([content_id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_media_content_tags3_val]
    ON [dbo].[sf_media_content_tags3]([val] ASC) WITH (FILLFACTOR = 90);

