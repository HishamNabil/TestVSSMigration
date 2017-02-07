CREATE TABLE [dbo].[sf_mt_fields_sf_meta_attribute] (
    [id]  UNIQUEIDENTIFIER NOT NULL,
    [seq] INT              NOT NULL,
    [id2] UNIQUEIDENTIFIER NULL,
    CONSTRAINT [pk_sf_mt_flds_sf_mta_attribute] PRIMARY KEY CLUSTERED ([id] ASC, [seq] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [ref_sf_mt_flds_sf_mt_ttrbt_sf_] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_meta_fields] ([id]),
    CONSTRAINT [ref_sf_mt_flds_sf_mt_ttrbt_sf2] FOREIGN KEY ([id2]) REFERENCES [dbo].[sf_meta_attribute] ([id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_mt_flds_sf_mt_ttrbt_id2]
    ON [dbo].[sf_mt_fields_sf_meta_attribute]([id2] ASC) WITH (FILLFACTOR = 90);

