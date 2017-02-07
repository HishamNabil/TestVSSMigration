CREATE TABLE [dbo].[sf_events_sf_permissions] (
    [content_id] UNIQUEIDENTIFIER NOT NULL,
    [id]         UNIQUEIDENTIFIER NOT NULL,
    CONSTRAINT [pk_sf_events_sf_permissions] PRIMARY KEY CLUSTERED ([content_id] ASC, [id] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [ref_sf_vnts_sf_prmssns_sf_prms] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_permissions] ([id]),
    CONSTRAINT [ref_sf_vnts_sf_prmssns_sf_vnts] FOREIGN KEY ([content_id]) REFERENCES [dbo].[sf_events] ([content_id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_vents_sf_permissions_id]
    ON [dbo].[sf_events_sf_permissions]([id] ASC) WITH (FILLFACTOR = 90);

