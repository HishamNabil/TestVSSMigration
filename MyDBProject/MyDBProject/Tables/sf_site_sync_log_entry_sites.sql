CREATE TABLE [dbo].[sf_site_sync_log_entry_sites] (
    [id]  UNIQUEIDENTIFIER NOT NULL,
    [seq] INT              NOT NULL,
    [val] UNIQUEIDENTIFIER NULL,
    CONSTRAINT [pk_sf_st_sync_lg_ntry_7F6ED717] PRIMARY KEY CLUSTERED ([id] ASC, [seq] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [ref_sf_st_sync_lg_ntr_9F981E18] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_site_sync_log_entry] ([id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_st_sync_lg_ntry_sts_val]
    ON [dbo].[sf_site_sync_log_entry_sites]([val] ASC) WITH (FILLFACTOR = 90);

