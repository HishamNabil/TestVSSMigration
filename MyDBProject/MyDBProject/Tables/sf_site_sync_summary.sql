CREATE TABLE [dbo].[sf_site_sync_summary] (
    [user_name]                NVARCHAR (255)   NULL,
    [total_items]              INT              NOT NULL,
    [start_time]               DATETIME         NOT NULL,
    [server_url]               VARCHAR (255)    NULL,
    [last_modified]            DATETIME         NOT NULL,
    [id]                       UNIQUEIDENTIFIER NOT NULL,
    [failed_items]             INT              NOT NULL,
    [end_time]                 DATETIME         NOT NULL,
    [details]                  NVARCHAR (MAX)   NULL,
    [app_name]                 VARCHAR (255)    NULL,
    [server_id]                VARCHAR (255)    NULL,
    [note]                     VARCHAR (255)    NULL,
    [general_errors]           VARCHAR (255)    NULL,
    [failed_items_retry_count] INT              NOT NULL,
    CONSTRAINT [pk_sf_site_sync_summary] PRIMARY KEY CLUSTERED ([id] ASC) WITH (FILLFACTOR = 90)
);


GO
CREATE NONCLUSTERED INDEX [sf_site_sync_summary_server_id]
    ON [dbo].[sf_site_sync_summary]([server_id] ASC) WITH (FILLFACTOR = 90);

