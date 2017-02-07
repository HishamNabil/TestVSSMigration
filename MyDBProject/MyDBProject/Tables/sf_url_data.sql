CREATE TABLE [dbo].[sf_url_data] (
    [url]           NVARCHAR (510)   NULL,
    [redirect]      TINYINT          NOT NULL,
    [qery]          VARCHAR (255)    NULL,
    [last_modified] DATETIME         NULL,
    [is_default]    TINYINT          NOT NULL,
    [id]            UNIQUEIDENTIFIER NOT NULL,
    [disabled]      TINYINT          NOT NULL,
    [culture]       INT              NOT NULL,
    [app_name]      VARCHAR (255)    NULL,
    [voa_version]   SMALLINT         NOT NULL,
    [voa_class]     INT              NOT NULL,
    [content_id]    UNIQUEIDENTIFIER NULL,
    [id2]           UNIQUEIDENTIFIER NULL,
    [item_type]     VARCHAR (256)    NULL,
    CONSTRAINT [pk_sf_url_data] PRIMARY KEY CLUSTERED ([id] ASC) WITH (FILLFACTOR = 90)
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_url_data]
    ON [dbo].[sf_url_data]([url] ASC) WITH (FILLFACTOR = 90);


GO
CREATE NONCLUSTERED INDEX [idx_sf_url_data_content_id]
    ON [dbo].[sf_url_data]([content_id] ASC) WITH (FILLFACTOR = 90);


GO
CREATE NONCLUSTERED INDEX [IX_sf_url_data_1]
    ON [dbo].[sf_url_data]([app_name] ASC)
    INCLUDE([url], [voa_class]) WITH (FILLFACTOR = 90);


GO
CREATE NONCLUSTERED INDEX [IX_sf_url_data_2]
    ON [dbo].[sf_url_data]([app_name] ASC)
    INCLUDE([disabled], [url], [voa_class]) WITH (FILLFACTOR = 90);


GO
CREATE NONCLUSTERED INDEX [IX_sf_url_data_3]
    ON [dbo].[sf_url_data]([app_name] ASC)
    INCLUDE([disabled], [voa_class]) WITH (FILLFACTOR = 90);


GO
CREATE NONCLUSTERED INDEX [IX_sf_url_data_4]
    ON [dbo].[sf_url_data]([app_name] ASC)
    INCLUDE([id], [url]) WITH (FILLFACTOR = 90);


GO
CREATE NONCLUSTERED INDEX [idx_sf_url_type]
    ON [dbo].[sf_url_data]([item_type] ASC, [url] ASC) WITH (FILLFACTOR = 90);


GO
CREATE NONCLUSTERED INDEX [idx_sf_url_data_id2]
    ON [dbo].[sf_url_data]([id2] ASC) WITH (FILLFACTOR = 90);

