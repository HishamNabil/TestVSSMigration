CREATE TABLE [dbo].[sf_site_sync_smr_ttltms] (
    [id]          UNIQUEIDENTIFIER NOT NULL,
    [site_id]     UNIQUEIDENTIFIER NOT NULL,
    [total_items] INT              NULL,
    CONSTRAINT [pk_sf_site_sync_smr_ttltms] PRIMARY KEY CLUSTERED ([id] ASC, [site_id] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [ref_sf_st_sync_smr_tt_83B4C133] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_site_sync_summary] ([id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_st_sync_smr_ttltms_ttl_]
    ON [dbo].[sf_site_sync_smr_ttltms]([total_items] ASC) WITH (FILLFACTOR = 90);

