CREATE TABLE [dbo].[sf_ec_product_department] (
    [id]  UNIQUEIDENTIFIER NOT NULL,
    [seq] INT              NOT NULL,
    [val] UNIQUEIDENTIFIER NULL,
    CONSTRAINT [pk_sf_ec_product_department] PRIMARY KEY CLUSTERED ([id] ASC, [seq] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [ref_sf_c_prdct_dprtmnt_sf_c_pr] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_ec_product] ([id])
);

