CREATE TABLE [dbo].[sf_ec_product_tags] (
    [id]  UNIQUEIDENTIFIER NOT NULL,
    [seq] INT              NOT NULL,
    [val] UNIQUEIDENTIFIER NULL,
    CONSTRAINT [pk_sf_ec_product_tags] PRIMARY KEY CLUSTERED ([id] ASC, [seq] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [ref_sf_c_prdct_tgs_sf_c_prduct] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_ec_product] ([id])
);

