CREATE TABLE [dbo].[sf_ec_prdct_software] (
    [id]       UNIQUEIDENTIFIER NOT NULL,
    [release]  NVARCHAR (255)   NULL,
    [platform] NVARCHAR (255)   NULL,
    CONSTRAINT [pk_sf_ec_prdct_software] PRIMARY KEY CLUSTERED ([id] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [ref_sf_c_prdct_sftwr_sf_c_prdc] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_ec_product] ([id])
);

