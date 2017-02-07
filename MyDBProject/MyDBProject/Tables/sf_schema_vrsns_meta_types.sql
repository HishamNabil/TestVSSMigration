CREATE TABLE [dbo].[sf_schema_vrsns_meta_types] (
    [id]  UNIQUEIDENTIFIER NOT NULL,
    [seq] INT              NOT NULL,
    [val] VARCHAR (255)    NULL,
    CONSTRAINT [pk_sf_schema_vrsns_meta_types] PRIMARY KEY CLUSTERED ([id] ASC, [seq] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [ref_sf_schm_vrsns_mt_typs_sf_s] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_schema_vrsns] ([id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_schm_vrsns_mt_types_val]
    ON [dbo].[sf_schema_vrsns_meta_types]([val] ASC) WITH (FILLFACTOR = 90);

