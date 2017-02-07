CREATE TABLE [dbo].[sf_ec_product_type] (
    [title_plural]     VARCHAR (255)    NULL,
    [title]            VARCHAR (255)    NULL,
    [last_modified]    DATETIME         NOT NULL,
    [is_shippable]     TINYINT          NOT NULL,
    [id]               UNIQUEIDENTIFIER NOT NULL,
    [clr_type]         VARCHAR (255)    NULL,
    [application_name] VARCHAR (255)    NULL,
    [voa_version]      SMALLINT         NOT NULL,
    CONSTRAINT [pk_sf_ec_product_type] PRIMARY KEY CLUSTERED ([id] ASC) WITH (FILLFACTOR = 90)
);

