CREATE TABLE [dbo].[sf_mb_dynmc_mdl_sf_permissions] (
    [id]  UNIQUEIDENTIFIER NOT NULL,
    [id2] UNIQUEIDENTIFIER NOT NULL,
    CONSTRAINT [pk_sf_mb_dynmc_mdl_sf_prmssons] PRIMARY KEY CLUSTERED ([id] ASC, [id2] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [ref_sf_mb_dynmc_mdl_sf_prmssn2] FOREIGN KEY ([id2]) REFERENCES [dbo].[sf_permissions] ([id]),
    CONSTRAINT [ref_sf_mb_dynmc_mdl_sf_prmssns] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_mb_dynamic_module] ([id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_mb_dynmc_mdl_sf_prmssns]
    ON [dbo].[sf_mb_dynmc_mdl_sf_permissions]([id2] ASC) WITH (FILLFACTOR = 90);

