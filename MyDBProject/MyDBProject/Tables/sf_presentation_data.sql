CREATE TABLE [dbo].[sf_presentation_data] (
    [theme]                      VARCHAR (50)     NULL,
    [ownr]                       UNIQUEIDENTIFIER NULL,
    [nme]                        VARCHAR (255)    NULL,
    [last_modified]              DATETIME         NULL,
    [id]                         UNIQUEIDENTIFIER NOT NULL,
    [date_created]               DATETIME         NULL,
    [data_type]                  VARCHAR (50)     NULL,
    [dta]                        NVARCHAR (MAX)   NULL,
    [app_name]                   VARCHAR (50)     NULL,
    [voa_class]                  INT              NOT NULL,
    [voa_version]                SMALLINT         NOT NULL,
    [resource_class_id]          VARCHAR (255)    NULL,
    [resource_assembly_name]     VARCHAR (255)    NULL,
    [is_different_from_embedded] TINYINT          NULL,
    [friendly_control_name]      VARCHAR (255)    NULL,
    [embedded_template_name]     VARCHAR (255)    NULL,
    [control_type]               VARCHAR (255)    NULL,
    [item_id]                    UNIQUEIDENTIFIER NULL,
    [condition]                  VARCHAR (255)    NULL,
    [area_name]                  VARCHAR (255)    NULL,
    [id3]                        UNIQUEIDENTIFIER NULL,
    [id4]                        UNIQUEIDENTIFIER NULL,
    [id2]                        UNIQUEIDENTIFIER NULL,
    [name_for_developers]        VARCHAR (255)    NULL,
    CONSTRAINT [pk_sf_presentation_data] PRIMARY KEY CLUSTERED ([id] ASC) WITH (FILLFACTOR = 90)
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_presentation_data]
    ON [dbo].[sf_presentation_data]([app_name] ASC, [embedded_template_name] ASC, [resource_assembly_name] ASC) WITH (FILLFACTOR = 90);


GO
CREATE NONCLUSTERED INDEX [idx_sf_prsntation_data_item_id]
    ON [dbo].[sf_presentation_data]([item_id] ASC) WITH (FILLFACTOR = 90);


GO
CREATE NONCLUSTERED INDEX [idx_sf_presentation_data_id4]
    ON [dbo].[sf_presentation_data]([id4] ASC) WITH (FILLFACTOR = 90);


GO
CREATE NONCLUSTERED INDEX [idx_sf_presentation_data_id2]
    ON [dbo].[sf_presentation_data]([id2] ASC) WITH (FILLFACTOR = 90);

