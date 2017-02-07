CREATE TABLE [dbo].[sf_cntent_items_sf_permissions] (
    [content_id] UNIQUEIDENTIFIER NOT NULL,
    [id]         UNIQUEIDENTIFIER NOT NULL,
    CONSTRAINT [pk_sf_cntnt_tms_sf_permissions] PRIMARY KEY CLUSTERED ([content_id] ASC, [id] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [ref_sf_cntnt_tms_sf_prmssns_s2] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_permissions] ([id]),
    CONSTRAINT [ref_sf_cntnt_tms_sf_prmssns_sf] FOREIGN KEY ([content_id]) REFERENCES [dbo].[sf_content_items] ([content_id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_cntnt_tms_sf_prmssns_id]
    ON [dbo].[sf_cntent_items_sf_permissions]([id] ASC) WITH (FILLFACTOR = 90);

