CREATE TABLE [dbo].[sf_site_sync_server] (
    [target_id] VARCHAR (255)    NULL,
    [mappings]  NVARCHAR (MAX)   NULL,
    [id]        UNIQUEIDENTIFIER NOT NULL,
    CONSTRAINT [pk_sf_site_sync_server] PRIMARY KEY CLUSTERED ([id] ASC) WITH (FILLFACTOR = 90)
);

