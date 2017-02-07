CREATE TABLE [dbo].[sf_mdia_content_sf_permissions] (
    [content_id] UNIQUEIDENTIFIER NOT NULL,
    [id]         UNIQUEIDENTIFIER NOT NULL,
    CONSTRAINT [pk_sf_md_cntent_sf_permissions] PRIMARY KEY CLUSTERED ([content_id] ASC, [id] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [ref_sf_md_cntnt_sf_prmssns_sf_] FOREIGN KEY ([content_id]) REFERENCES [dbo].[sf_media_content] ([content_id]),
    CONSTRAINT [ref_sf_md_cntnt_sf_prmssns_sf2] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_permissions] ([id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_md_cntnt_sf_prmssons_id]
    ON [dbo].[sf_mdia_content_sf_permissions]([id] ASC) WITH (FILLFACTOR = 90);

