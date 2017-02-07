CREATE TABLE [dbo].[sf_publishing_point_settings] (
    [id2]              UNIQUEIDENTIFIER NULL,
    [last_modified]    DATETIME         NULL,
    [id]               UNIQUEIDENTIFIER NOT NULL,
    [application_name] VARCHAR (255)    NULL,
    [voa_version]      SMALLINT         NOT NULL,
    CONSTRAINT [pk_sf_pblishing_point_settings] PRIMARY KEY CLUSTERED ([id] ASC) WITH (FILLFACTOR = 90)
);

