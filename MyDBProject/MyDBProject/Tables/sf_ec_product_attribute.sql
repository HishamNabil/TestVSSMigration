CREATE TABLE [dbo].[sf_ec_product_attribute] (
    [title_]           NVARCHAR (255)   NULL,
    [title]            NVARCHAR (255)   NOT NULL,
    [sort_order]       VARCHAR (255)    NULL,
    [nme]              VARCHAR (255)    NOT NULL,
    [last_modified]    DATETIME         NOT NULL,
    [is_active]        TINYINT          NOT NULL,
    [id]               UNIQUEIDENTIFIER NOT NULL,
    [date_created]     DATETIME         NULL,
    [application_name] VARCHAR (255)    NULL,
    [voa_version]      SMALLINT         NOT NULL,
    CONSTRAINT [pk_sf_ec_product_attribute] PRIMARY KEY CLUSTERED ([id] ASC) WITH (FILLFACTOR = 90)
);

