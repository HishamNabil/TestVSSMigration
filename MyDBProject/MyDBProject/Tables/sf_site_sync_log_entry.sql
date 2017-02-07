CREATE TABLE [dbo].[sf_site_sync_log_entry] (
    [version]                  INT              NOT NULL,
    [type_name]                VARCHAR (255)    NULL,
    [title]                    NVARCHAR (255)   NULL,
    [status_details]           NVARCHAR (MAX)   NULL,
    [status]                   VARCHAR (255)    NULL,
    [serverId]                 VARCHAR (255)    NULL,
    [provider]                 VARCHAR (255)    NULL,
    [modified_since_last_sync] TINYINT          NOT NULL,
    [language]                 VARCHAR (255)    NULL,
    [item_id]                  VARCHAR (255)    NULL,
    [item_action]              VARCHAR (255)    NULL,
    [id]                       UNIQUEIDENTIFIER NOT NULL,
    [additional_info]          NVARCHAR (255)   NULL,
    [user_name]                NVARCHAR (255)   NULL,
    [user_id]                  UNIQUEIDENTIFIER NULL,
    [timestamp]                DATETIME         NULL,
    [parent_title]             NVARCHAR (255)   NULL,
    CONSTRAINT [pk_sf_site_sync_log_entry] PRIMARY KEY CLUSTERED ([id] ASC) WITH (FILLFACTOR = 90)
);


GO
CREATE NONCLUSTERED INDEX [sf_site_sync_log_entry_type]
    ON [dbo].[sf_site_sync_log_entry]([item_id] ASC, [type_name] ASC, [provider] ASC) WITH (FILLFACTOR = 90);


GO
CREATE NONCLUSTERED INDEX [sf_site_sync_entry_server_id]
    ON [dbo].[sf_site_sync_log_entry]([serverId] ASC) WITH (FILLFACTOR = 90);

