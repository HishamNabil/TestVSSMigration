CREATE TABLE [dbo].[sf_ec_product_variation] (
    [variant]          NVARCHAR (MAX)   NULL,
    [sku]              VARCHAR (255)    NULL,
    [product_id]       UNIQUEIDENTIFIER NULL,
    [last_modified]    DATETIME         NOT NULL,
    [is_active]        TINYINT          NOT NULL,
    [id]               UNIQUEIDENTIFIER NOT NULL,
    [application_name] VARCHAR (255)    NULL,
    [additional_price] NUMERIC (20, 10) NOT NULL,
    [voa_version]      SMALLINT         NOT NULL,
    CONSTRAINT [pk_sf_ec_product_variation] PRIMARY KEY CLUSTERED ([id] ASC) WITH (FILLFACTOR = 90)
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_c_prdct_vrtn_product_id]
    ON [dbo].[sf_ec_product_variation]([product_id] ASC) WITH (FILLFACTOR = 90);

