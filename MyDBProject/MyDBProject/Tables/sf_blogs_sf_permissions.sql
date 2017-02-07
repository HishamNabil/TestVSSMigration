CREATE TABLE [dbo].[sf_blogs_sf_permissions] (
    [content_id] UNIQUEIDENTIFIER NOT NULL,
    [id]         UNIQUEIDENTIFIER NOT NULL,
    CONSTRAINT [pk_sf_blogs_sf_permissions] PRIMARY KEY CLUSTERED ([content_id] ASC, [id] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [ref_sf_blgs_sf_prmssns_sf_blgs] FOREIGN KEY ([content_id]) REFERENCES [dbo].[sf_blogs] ([content_id]),
    CONSTRAINT [ref_sf_blgs_sf_prmssns_sf_prms] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_permissions] ([id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_blogs_sf_permissions_id]
    ON [dbo].[sf_blogs_sf_permissions]([id] ASC) WITH (FILLFACTOR = 90);

