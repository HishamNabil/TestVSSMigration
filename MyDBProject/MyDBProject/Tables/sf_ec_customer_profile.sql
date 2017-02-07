﻿CREATE TABLE [dbo].[sf_ec_customer_profile] (
    [id]                    UNIQUEIDENTIFIER NOT NULL,
    [shipping_state_region] VARCHAR (255)    NULL,
    [shipping_postal_code]  VARCHAR (255)    NULL,
    [shipping_phone_number] VARCHAR (255)    NULL,
    [shipping_last_name]    VARCHAR (255)    NULL,
    [shipping_first_name]   VARCHAR (255)    NULL,
    [shipping_email]        VARCHAR (255)    NULL,
    [shipping_country]      VARCHAR (255)    NULL,
    [shipping_company]      VARCHAR (255)    NULL,
    [shipping_city]         VARCHAR (255)    NULL,
    [shipping_address2]     VARCHAR (255)    NULL,
    [shipping_address1]     VARCHAR (255)    NULL,
    [last_name]             VARCHAR (255)    NULL,
    [first_name]            VARCHAR (255)    NULL,
    [billing_state_region]  VARCHAR (255)    NULL,
    [billing_postal_code]   VARCHAR (255)    NULL,
    [billing_phone_number]  VARCHAR (255)    NULL,
    [billing_email]         VARCHAR (255)    NULL,
    [billing_country]       VARCHAR (255)    NULL,
    [billing_company]       VARCHAR (255)    NULL,
    [billing_city]          VARCHAR (255)    NULL,
    [billing_address2]      VARCHAR (255)    NULL,
    [billing_address1]      VARCHAR (255)    NULL,
    CONSTRAINT [pk_sf_ec_customer_profile] PRIMARY KEY CLUSTERED ([id] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [ref_sf_c_cstmr_prfl_s_6EB624B1] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_user_profile] ([id]) ON DELETE CASCADE
);

