CREATE TABLE [dbo].[sf_txnms_spprtd_prmission_sets] (
    [id]  UNIQUEIDENTIFIER NOT NULL,
    [seq] INT              NOT NULL,
    [val] VARCHAR (255)    NULL,
    CONSTRAINT [pk_sf_txnms_spprtd_prmssn_sets] PRIMARY KEY CLUSTERED ([id] ASC, [seq] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [ref_sf_txnms_spprtd_prmssn_sts] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_taxonomies] ([id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_txnms_spprtd_prmssn_sts]
    ON [dbo].[sf_txnms_spprtd_prmission_sets]([val] ASC) WITH (FILLFACTOR = 90);

