CREATE TABLE [dbo].[sf_dynmc_cntnt_sf_lnguage_data] (
    [base_id] UNIQUEIDENTIFIER NOT NULL,
    [seq]     INT              NOT NULL,
    [id]      UNIQUEIDENTIFIER NULL,
    CONSTRAINT [pk_sf_dynmc_cntnt_sf_lngg_data] PRIMARY KEY CLUSTERED ([base_id] ASC, [seq] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [ref_sf_dynmc_cntnt_sf_lngg_dt_] FOREIGN KEY ([base_id]) REFERENCES [dbo].[sf_dynamic_content] ([base_id]),
    CONSTRAINT [ref_sf_dynmc_cntnt_sf_lngg_dt2] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_language_data] ([id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_dynmc_cntnt_sf_lngg_dt_]
    ON [dbo].[sf_dynmc_cntnt_sf_lnguage_data]([id] ASC) WITH (FILLFACTOR = 90);

