CREATE TABLE [dbo].[sf_unsubscription_info] (
    [sf_unsubscription_info_id] INT              NOT NULL,
    [unsubscription_list_id]    UNIQUEIDENTIFIER NULL,
    [unsubscription_date]       DATETIME         NOT NULL,
    [id2]                       UNIQUEIDENTIFIER NULL,
    [reason]                    NVARCHAR (255)   NULL,
    [last_modified]             DATETIME         NULL,
    [id]                        UNIQUEIDENTIFIER NULL,
    [application_name]          VARCHAR (255)    NULL,
    [voa_version]               SMALLINT         NOT NULL,
    CONSTRAINT [pk_sf_unsubscription_info] PRIMARY KEY CLUSTERED ([sf_unsubscription_info_id] ASC) WITH (FILLFACTOR = 90)
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_unsubscription_info_id2]
    ON [dbo].[sf_unsubscription_info]([id2] ASC) WITH (FILLFACTOR = 90);

