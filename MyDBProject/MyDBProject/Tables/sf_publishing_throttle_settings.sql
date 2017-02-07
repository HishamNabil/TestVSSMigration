CREATE TABLE [dbo].[sf_publishing_throttle_settings] (
    [time_interval]    INT              NOT NULL,
    [limit]            INT              NOT NULL,
    [last_modified]    DATETIME         NULL,
    [id]               UNIQUEIDENTIFIER NOT NULL,
    [application_name] VARCHAR (255)    NULL,
    [voa_version]      SMALLINT         NOT NULL,
    CONSTRAINT [pk_sf_pblshng_thrttle_settings] PRIMARY KEY CLUSTERED ([id] ASC) WITH (FILLFACTOR = 90)
);

