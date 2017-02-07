CREATE TABLE [dbo].[sf_page_node] (
    [url_name_]                    NVARCHAR (255)   NULL,
    [show_in_navigation]           TINYINT          NOT NULL,
    [root_id]                      UNIQUEIDENTIFIER NULL,
    [render_as_link]               TINYINT          NOT NULL,
    [redirect_url_]                NVARCHAR (255)   NULL,
    [parent_id]                    UNIQUEIDENTIFIER NULL,
    [content_id]                   UNIQUEIDENTIFIER NULL,
    [ownr]                         UNIQUEIDENTIFIER NULL,
    [ordinal]                      REAL             NOT NULL,
    [open_new_window]              TINYINT          NOT NULL,
    [node_type]                    INT              NOT NULL,
    [nme]                          VARCHAR (255)    NULL,
    [linked_node_provider]         VARCHAR (255)    NULL,
    [linked_node_id]               UNIQUEIDENTIFIER NULL,
    [last_modified]                DATETIME         NULL,
    [inherits_permissions]         TINYINT          NOT NULL,
    [id]                           UNIQUEIDENTIFIER NOT NULL,
    [description_]                 NVARCHAR (500)   NULL,
    [date_created]                 DATETIME         NULL,
    [can_inherit_permissions]      TINYINT          NOT NULL,
    [approval_workflow_state_]     NVARCHAR (255)   NULL,
    [app_name]                     VARCHAR (255)    NULL,
    [allow_multiple_urls]          TINYINT          NOT NULL,
    [extension]                    NVARCHAR (255)   NULL,
    [allow_parameters_validation]  TINYINT          NOT NULL,
    [title_]                       NVARCHAR (500)   NULL,
    [translation_culture]          VARCHAR (10)     NULL,
    [module_name]                  VARCHAR (255)    NULL,
    [require_ssl]                  TINYINT          NOT NULL,
    [priority]                     REAL             NOT NULL,
    [previous_parent_id]           UNIQUEIDENTIFIER NULL,
    [loc_strtgy]                   SMALLINT         NOT NULL,
    [is_deleted]                   TINYINT          NOT NULL,
    [inc_in_srch_idx]              TINYINT          NOT NULL,
    [enable_default_canonical_url] TINYINT          NULL,
    [crawlable]                    TINYINT          NOT NULL,
    [sort_order_date]              DATETIME         NULL,
    CONSTRAINT [pk_sf_page_node] PRIMARY KEY CLUSTERED ([id] ASC) WITH (FILLFACTOR = 90)
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_page_node_content_id]
    ON [dbo].[sf_page_node]([content_id] ASC) WITH (FILLFACTOR = 90);


GO
CREATE NONCLUSTERED INDEX [idx_sf_page_node_parent_id]
    ON [dbo].[sf_page_node]([parent_id] ASC) WITH (FILLFACTOR = 90);


GO
CREATE NONCLUSTERED INDEX [idx_sf_pages_root_id]
    ON [dbo].[sf_page_node]([root_id] ASC) WITH (FILLFACTOR = 90);

