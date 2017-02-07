CREATE TABLE [dbo].[sf_taxonomies_sf_permissions] (
    [id]  UNIQUEIDENTIFIER NOT NULL,
    [id2] UNIQUEIDENTIFIER NOT NULL,
    CONSTRAINT [pk_sf_txonomies_sf_permissions] PRIMARY KEY CLUSTERED ([id] ASC, [id2] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [ref_sf_txnms_sf_prmssns_sf_prm] FOREIGN KEY ([id2]) REFERENCES [dbo].[sf_permissions] ([id]),
    CONSTRAINT [ref_sf_txnms_sf_prmssns_sf_txn] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_taxonomies] ([id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_txnms_sf_prmissions_id2]
    ON [dbo].[sf_taxonomies_sf_permissions]([id2] ASC) WITH (FILLFACTOR = 90);

