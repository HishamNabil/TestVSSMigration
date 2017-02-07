CREATE TABLE [dbo].[sf_ec_order_address] (
    [state_region]     VARCHAR (255)    NULL,
    [postal_code]      VARCHAR (255)    NOT NULL,
    [phone_extension]  VARCHAR (255)    NULL,
    [phone]            VARCHAR (255)    NULL,
    [order_id]         UNIQUEIDENTIFIER NULL,
    [last_name]        VARCHAR (255)    NOT NULL,
    [last_modified]    DATETIME         NOT NULL,
    [id]               UNIQUEIDENTIFIER NOT NULL,
    [first_name]       VARCHAR (255)    NOT NULL,
    [email]            VARCHAR (255)    NULL,
    [country]          VARCHAR (255)    NOT NULL,
    [company]          VARCHAR (255)    NULL,
    [city]             VARCHAR (255)    NOT NULL,
    [application_name] VARCHAR (255)    NULL,
    [address_type]     INT              NOT NULL,
    [address2]         VARCHAR (255)    NULL,
    [address]          VARCHAR (255)    NOT NULL,
    [voa_version]      SMALLINT         NOT NULL,
    CONSTRAINT [pk_sf_ec_order_address] PRIMARY KEY CLUSTERED ([id] ASC) WITH (FILLFACTOR = 90)
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_c_rder_address_order_id]
    ON [dbo].[sf_ec_order_address]([order_id] ASC) WITH (FILLFACTOR = 90);

