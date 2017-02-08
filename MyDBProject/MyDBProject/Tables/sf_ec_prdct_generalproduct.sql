﻿CREATE TABLE [dbo].[sf_ec_prdct_generalproduct] (
    [id] UNIQUEIDENTIFIER NOT NULL,
    CONSTRAINT [pk_sf_ec_prdct_generalproduct] PRIMARY KEY CLUSTERED ([id] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [ref_sf_c_prdct_gnrlprdct_sf_c_] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_ec_product] ([id])
);

