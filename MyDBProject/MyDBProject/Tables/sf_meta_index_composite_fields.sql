CREATE TABLE [dbo].[sf_meta_index_composite_fields] (
    [id]  UNIQUEIDENTIFIER NOT NULL,
    [seq] INT              NOT NULL,
    [val] VARCHAR (255)    NULL,
    CONSTRAINT [pk_sf_mt_ndex_composite_fields] PRIMARY KEY CLUSTERED ([id] ASC, [seq] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [ref_sf_mt_ndx_cmpst_flds_sf_mt] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_meta_index] ([id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_mt_ndx_cmpst_fields_val]
    ON [dbo].[sf_meta_index_composite_fields]([val] ASC) WITH (FILLFACTOR = 90);

