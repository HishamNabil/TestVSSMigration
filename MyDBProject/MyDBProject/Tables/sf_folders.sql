CREATE TABLE [dbo].[sf_folders] (
    [url_name_]    NVARCHAR (255)   NULL,
    [title_]       NVARCHAR (255)   NULL,
    [root_id]      UNIQUEIDENTIFIER NULL,
    [path]         VARCHAR (900)    NULL,
    [parent_id]    UNIQUEIDENTIFIER NULL,
    [id]           UNIQUEIDENTIFIER NOT NULL,
    [description_] NVARCHAR (255)   NULL,
    [app_name]     VARCHAR (255)    NULL,
    [voa_version]  SMALLINT         NOT NULL,
    [is_deleted]   TINYINT          NOT NULL,
    [cover_id]     UNIQUEIDENTIFIER NULL,
    CONSTRAINT [pk_sf_folders] PRIMARY KEY CLUSTERED ([id] ASC) WITH (FILLFACTOR = 90)
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_fldrs_rtId_pth]
    ON [dbo].[sf_folders]([root_id] ASC, [path] ASC) WITH (FILLFACTOR = 90);


GO
CREATE NONCLUSTERED INDEX [idx_sf_fldrs_prntId]
    ON [dbo].[sf_folders]([parent_id] ASC) WITH (FILLFACTOR = 90);

