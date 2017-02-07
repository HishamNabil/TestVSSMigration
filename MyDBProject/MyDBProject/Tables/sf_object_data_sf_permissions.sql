CREATE TABLE [dbo].[sf_object_data_sf_permissions] (
    [id]  UNIQUEIDENTIFIER NOT NULL,
    [id2] UNIQUEIDENTIFIER NOT NULL,
    CONSTRAINT [pk_sf_bjct_data_sf_permissions] PRIMARY KEY CLUSTERED ([id] ASC, [id2] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [ref_sf_bjct_dt_sf_prmssns_sf_b] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_object_data] ([id]),
    CONSTRAINT [ref_sf_bjct_dt_sf_prmssns_sf_p] FOREIGN KEY ([id2]) REFERENCES [dbo].[sf_permissions] ([id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_bjct_dt_sf_prmssons_id2]
    ON [dbo].[sf_object_data_sf_permissions]([id2] ASC) WITH (FILLFACTOR = 90);

