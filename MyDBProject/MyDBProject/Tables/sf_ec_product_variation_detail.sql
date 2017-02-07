CREATE TABLE [dbo].[sf_ec_product_variation_detail] (
    [product_variation_id]           UNIQUEIDENTIFIER NULL,
    [prdct_vration_detail_parent_id] UNIQUEIDENTIFIER NOT NULL,
    [product_attribute_value_id]     UNIQUEIDENTIFIER NULL,
    [product_attribute_id]           UNIQUEIDENTIFIER NULL,
    [product_id]                     UNIQUEIDENTIFIER NULL,
    [last_modified]                  DATETIME         NOT NULL,
    [id]                             UNIQUEIDENTIFIER NOT NULL,
    [application_name]               VARCHAR (255)    NULL,
    [voa_version]                    SMALLINT         NOT NULL,
    CONSTRAINT [pk_sf_c_prdct_variation_detail] PRIMARY KEY CLUSTERED ([id] ASC) WITH (FILLFACTOR = 90)
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_c_prdct_vrtn_dtl_prdct_]
    ON [dbo].[sf_ec_product_variation_detail]([product_variation_id] ASC) WITH (FILLFACTOR = 90);

