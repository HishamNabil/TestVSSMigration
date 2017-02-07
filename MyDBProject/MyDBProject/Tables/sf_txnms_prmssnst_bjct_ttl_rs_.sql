CREATE TABLE [dbo].[sf_txnms_prmssnst_bjct_ttl_rs_] (
    [id]     UNIQUEIDENTIFIER NOT NULL,
    [mapkey] VARCHAR (255)    NOT NULL,
    [val]    VARCHAR (255)    NULL,
    CONSTRAINT [pk_sf_txnms_prmssnst_bjct_ttl_] PRIMARY KEY CLUSTERED ([id] ASC, [mapkey] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [ref_sf_txnms_prmssnst_bjct_ttl] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_taxonomies] ([id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_txnms_prmssnst_bjct_ttl]
    ON [dbo].[sf_txnms_prmssnst_bjct_ttl_rs_]([val] ASC) WITH (FILLFACTOR = 90);

