CREATE TABLE [dbo].[sf_ec_product_sf_language_data] (
    [id]  UNIQUEIDENTIFIER NOT NULL,
    [seq] INT              NOT NULL,
    [id2] UNIQUEIDENTIFIER NULL,
    CONSTRAINT [pk_sf_c_prdct_sf_language_data] PRIMARY KEY CLUSTERED ([id] ASC, [seq] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [ref_sf_c_prdct_sf_lngg_dt_sf_c] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_ec_product] ([id]),
    CONSTRAINT [ref_sf_c_prdct_sf_lngg_dt_sf_l] FOREIGN KEY ([id2]) REFERENCES [dbo].[sf_language_data] ([id])
);

