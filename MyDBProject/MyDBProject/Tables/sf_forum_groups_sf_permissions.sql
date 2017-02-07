CREATE TABLE [dbo].[sf_forum_groups_sf_permissions] (
    [id]  UNIQUEIDENTIFIER NOT NULL,
    [id2] UNIQUEIDENTIFIER NOT NULL,
    CONSTRAINT [pk_sf_frm_grups_sf_permissions] PRIMARY KEY CLUSTERED ([id] ASC, [id2] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [ref_sf_frm_grps_sf_prmssns_sf_] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_forum_groups] ([id]),
    CONSTRAINT [ref_sf_frm_grps_sf_prmssns_sf2] FOREIGN KEY ([id2]) REFERENCES [dbo].[sf_permissions] ([id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_frm_grps_sf_prmssns_id2]
    ON [dbo].[sf_forum_groups_sf_permissions]([id2] ASC) WITH (FILLFACTOR = 90);

