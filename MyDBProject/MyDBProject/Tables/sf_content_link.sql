CREATE TABLE [dbo].[sf_content_link] (
    [parent_item_type]            VARCHAR (255)    NULL,
    [parent_item_provider_name]   VARCHAR (255)    NULL,
    [parent_item_id]              UNIQUEIDENTIFIER NULL,
    [ordinal]                     REAL             NOT NULL,
    [last_modified]               DATETIME         NOT NULL,
    [id]                          UNIQUEIDENTIFIER NOT NULL,
    [component_property_name]     VARCHAR (255)    NULL,
    [child_item_type]             VARCHAR (255)    NULL,
    [child_item_provider_name]    VARCHAR (255)    NULL,
    [child_item_id]               UNIQUEIDENTIFIER NULL,
    [app_name]                    VARCHAR (255)    NULL,
    [parent_item_additional_info] VARCHAR (512)    NULL,
    [child_item_additional_info]  VARCHAR (512)    NULL,
    [is_parent_deleted]           TINYINT          NOT NULL,
    [is_child_deleted]            TINYINT          NOT NULL,
    [available_for_temp]          TINYINT          NOT NULL,
    [available_for_master]        TINYINT          NOT NULL,
    [available_for_live]          TINYINT          NOT NULL,
    CONSTRAINT [pk_sf_content_link] PRIMARY KEY CLUSTERED ([id] ASC) WITH (FILLFACTOR = 90)
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_cnt_lnk_prnt_itm_id]
    ON [dbo].[sf_content_link]([parent_item_id] ASC) WITH (FILLFACTOR = 90);


GO
CREATE NONCLUSTERED INDEX [idx_sf_cnt_lnk_chld_type_id]
    ON [dbo].[sf_content_link]([child_item_type] ASC, [child_item_id] ASC) WITH (FILLFACTOR = 90);


GO
CREATE NONCLUSTERED INDEX [idx_sf_cnt_lnk_chld_itm_id]
    ON [dbo].[sf_content_link]([child_item_id] ASC) WITH (FILLFACTOR = 90);

