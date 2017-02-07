CREATE TABLE [dbo].[sf_ec_order] (
    [weight]                FLOAT (53)       NOT NULL,
    [ttal]                  NUMERIC (20, 10) NOT NULL,
    [tax]                   NUMERIC (20, 10) NOT NULL,
    [sub_total_display]     NUMERIC (20, 10) NOT NULL,
    [shipping_total]        NUMERIC (20, 10) NOT NULL,
    [shipping_tax]          NUMERIC (20, 10) NOT NULL,
    [shipping_service_name] VARCHAR (255)    NOT NULL,
    [shipping_carrier_name] VARCHAR (255)    NOT NULL,
    [shipped_on]            DATETIME         NULL,
    [pre_tax_total]         NUMERIC (20, 10) NULL,
    [pre_tax_price]         NUMERIC (20, 10) NOT NULL,
    [pre_discount_tax]      NUMERIC (20, 10) NOT NULL,
    [order_status]          INT              NOT NULL,
    [order_number]          INT              NOT NULL,
    [order_date]            DATETIME         NOT NULL,
    [order_attempts]        INT              NOT NULL,
    [last_modified]         DATETIME         NOT NULL,
    [id]                    UNIQUEIDENTIFIER NOT NULL,
    [effective_tax_rate]    NUMERIC (20, 10) NOT NULL,
    [discount_total]        NUMERIC (20, 10) NOT NULL,
    [id2]                   UNIQUEIDENTIFIER NULL,
    [currency_info]         VARCHAR (255)    NOT NULL,
    [currency]              VARCHAR (255)    NOT NULL,
    [application_name]      VARCHAR (255)    NULL,
    [voa_version]           SMALLINT         NOT NULL,
    CONSTRAINT [pk_sf_ec_order] PRIMARY KEY CLUSTERED ([id] ASC) WITH (FILLFACTOR = 90)
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_ec_order_id2]
    ON [dbo].[sf_ec_order]([id2] ASC) WITH (FILLFACTOR = 90);

