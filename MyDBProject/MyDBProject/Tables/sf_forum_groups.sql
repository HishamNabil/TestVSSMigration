CREATE TABLE [dbo].[sf_forum_groups] (
    [title]                   NVARCHAR (255)   NULL,
    [ordinal]                 REAL             NOT NULL,
    [last_modified]           DATETIME         NOT NULL,
    [is_default]              TINYINT          NOT NULL,
    [inherits_permissions]    TINYINT          NOT NULL,
    [id]                      UNIQUEIDENTIFIER NOT NULL,
    [description]             NVARCHAR (255)   NULL,
    [can_inherit_permissions] TINYINT          NOT NULL,
    [app_name]                VARCHAR (255)    NULL,
    CONSTRAINT [pk_sf_forum_groups] PRIMARY KEY CLUSTERED ([id] ASC) WITH (FILLFACTOR = 90)
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_forum_groups]
    ON [dbo].[sf_forum_groups]([app_name] ASC) WITH (FILLFACTOR = 90);

