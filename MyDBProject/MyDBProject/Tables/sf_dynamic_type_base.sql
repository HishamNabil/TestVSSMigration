CREATE TABLE [dbo].[sf_dynamic_type_base] (
    [original_parent_id] UNIQUEIDENTIFIER NULL,
    [original_item_id]   UNIQUEIDENTIFIER NULL,
    [last_modified]      DATETIME         NULL,
    [id]                 UNIQUEIDENTIFIER NOT NULL,
    [application_name]   VARCHAR (255)    NULL,
    [voa_version]        SMALLINT         NOT NULL,
    [voa_class]          INT              NOT NULL,
    CONSTRAINT [pk_sf_dynamic_type_base] PRIMARY KEY CLUSTERED ([id] ASC) WITH (FILLFACTOR = 90)
);


GO
CREATE NONCLUSTERED INDEX [missing_index_112059_112058_sf_dynamic_type_base]
    ON [dbo].[sf_dynamic_type_base]([original_item_id] ASC, [application_name] ASC)
    INCLUDE([original_parent_id], [last_modified], [id], [voa_version], [voa_class]) WITH (FILLFACTOR = 90);

