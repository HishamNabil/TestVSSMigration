CREATE TABLE [dbo].[sf_site_sync_summary_sites] (
    [id]      UNIQUEIDENTIFIER NOT NULL,
    [site_id] UNIQUEIDENTIFIER NOT NULL,
    CONSTRAINT [pk_sf_site_sync_summary_sites] PRIMARY KEY CLUSTERED ([id] ASC, [site_id] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [ref_sf_st_sync_smmry__D88A64B7] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_site_sync_summary] ([id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_st_sync_smmry_sts_st_id]
    ON [dbo].[sf_site_sync_summary_sites]([site_id] ASC) WITH (FILLFACTOR = 90);

