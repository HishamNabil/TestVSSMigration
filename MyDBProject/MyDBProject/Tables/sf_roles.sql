CREATE TABLE [dbo].[sf_roles] (
    [nme]           NVARCHAR (255)   NULL,
    [last_modified] DATETIME         NULL,
    [id]            UNIQUEIDENTIFIER NOT NULL,
    [app_name]      VARCHAR (255)    NULL,
    CONSTRAINT [pk_sf_roles] PRIMARY KEY CLUSTERED ([id] ASC) WITH (FILLFACTOR = 90)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_sf_roles_name]
    ON [dbo].[sf_roles]([app_name] ASC, [nme] ASC) WITH (FILLFACTOR = 90);

