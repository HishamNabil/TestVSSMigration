CREATE TABLE [dbo].[sf_ec_cart_detail] (
    [weight]               FLOAT (53)       NOT NULL,
    [vat_tax_id]           UNIQUEIDENTIFIER NOT NULL,
    [variant_as_names]     NVARCHAR (MAX)   NULL,
    [variant_as_ids]       NVARCHAR (MAX)   NULL,
    [ttal]                 NUMERIC (20, 10) NOT NULL,
    [title]                NVARCHAR (255)   NOT NULL,
    [tax_rate]             NUMERIC (20, 10) NOT NULL,
    [tax_in_price]         TINYINT          NOT NULL,
    [tax_class_id]         UNIQUEIDENTIFIER NULL,
    [sku]                  VARCHAR (255)    NULL,
    [quantity]             INT              NOT NULL,
    [product_id]           UNIQUEIDENTIFIER NOT NULL,
    [price]                NUMERIC (20, 10) NOT NULL,
    [cart_order_id]        UNIQUEIDENTIFIER NULL,
    [last_modified]        DATETIME         NOT NULL,
    [is_vat_taxable]       TINYINT          NOT NULL,
    [is_us_canada_taxable] TINYINT          NOT NULL,
    [is_shippable]         TINYINT          NOT NULL,
    [is_on_sale]           TINYINT          NOT NULL,
    [id]                   UNIQUEIDENTIFIER NOT NULL,
    [delta_price]          NUMERIC (20, 10) NOT NULL,
    [created_date]         DATETIME         NOT NULL,
    [base_price]           NUMERIC (20, 10) NOT NULL,
    [application_name]     VARCHAR (255)    NULL,
    [voa_version]          SMALLINT         NOT NULL,
    CONSTRAINT [pk_sf_ec_cart_detail] PRIMARY KEY CLUSTERED ([id] ASC) WITH (FILLFACTOR = 90)
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_c_crt_dtl_cart_order_id]
    ON [dbo].[sf_ec_cart_detail]([cart_order_id] ASC) WITH (FILLFACTOR = 90);

