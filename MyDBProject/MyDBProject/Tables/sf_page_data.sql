CREATE TABLE [dbo].[sf_page_data] (
    [votes_sum]                  NUMERIC (20, 10) NOT NULL,
    [votes_count]                BIGINT           NOT NULL,
    [visible]                    TINYINT          NOT NULL,
    [views_count]                INT              NOT NULL,
    [vrsion]                     INT              NOT NULL,
    [status]                     INT              NOT NULL,
    [source_key]                 VARCHAR (255)    NULL,
    [publication_date]           DATETIME         NOT NULL,
    [ownr]                       UNIQUEIDENTIFIER NULL,
    [original_content_id]        UNIQUEIDENTIFIER NULL,
    [last_modified_by]           UNIQUEIDENTIFIER NULL,
    [last_modified]              DATETIME         NOT NULL,
    [content_id]                 UNIQUEIDENTIFIER NOT NULL,
    [expiration_date]            DATETIME         NULL,
    [description_]               NVARCHAR (MAX)   NULL,
    [default_page_id]            UNIQUEIDENTIFIER NULL,
    [date_created]               DATETIME         NULL,
    [content_state]              VARCHAR (255)    NULL,
    [app_name]                   VARCHAR (255)    NULL,
    [view_state_encryption]      INT              NOT NULL,
    [validate_request]           TINYINT          NOT NULL,
    [url_evaluation_mode]        INT              NOT NULL,
    [trace_mode]                 INT              NOT NULL,
    [trace]                      TINYINT          NOT NULL,
    [template_id]                UNIQUEIDENTIFIER NULL,
    [sliding_expiration]         TINYINT          NOT NULL,
    [response_encoding]          VARCHAR (255)    NULL,
    [cache_profile]              VARCHAR (255)    NULL,
    [master_page]                VARCHAR (255)    NULL,
    [maintain_scroll]            TINYINT          NOT NULL,
    [locked_by]                  UNIQUEIDENTIFIER NULL,
    [last_control_id]            INT              NOT NULL,
    [is_auto_created]            TINYINT          NOT NULL,
    [include_script_manger]      TINYINT          NOT NULL,
    [head_tag_content]           NVARCHAR (MAX)   NULL,
    [external_page]              VARCHAR (255)    NULL,
    [error_page]                 VARCHAR (255)    NULL,
    [enable_view_state_mac]      TINYINT          NOT NULL,
    [enable_view_state]          TINYINT          NOT NULL,
    [enable_theming]             TINYINT          NOT NULL,
    [enable_session_state]       TINYINT          NOT NULL,
    [enable_event_validation]    TINYINT          NOT NULL,
    [culture]                    VARCHAR (10)     NULL,
    [comments_count]             INT              NOT NULL,
    [code_behind_type]           NVARCHAR (510)   NULL,
    [cache_output]               TINYINT          NOT NULL,
    [cache_duration]             INT              NOT NULL,
    [buffer_output]              TINYINT          NOT NULL,
    [theme]                      NVARCHAR (255)   NULL,
    [keywords_]                  NVARCHAR (500)   NULL,
    [html_title_]                NVARCHAR (500)   NULL,
    [personalization_segment_id] UNIQUEIDENTIFIER NULL,
    [personalization_master_id]  UNIQUEIDENTIFIER NULL,
    [is_personalized]            TINYINT          NOT NULL,
    [build_stamp]                INT              NOT NULL,
    [page_node_id]               UNIQUEIDENTIFIER NULL,
    [flags]                      INT              NOT NULL,
    CONSTRAINT [pk_sf_page_data] PRIMARY KEY CLUSTERED ([content_id] ASC) WITH (FILLFACTOR = 90)
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_page_data_template_id]
    ON [dbo].[sf_page_data]([template_id] ASC) WITH (FILLFACTOR = 90);


GO
CREATE NONCLUSTERED INDEX [idx_sf_pd_pers_master_id]
    ON [dbo].[sf_page_data]([personalization_master_id] ASC) WITH (FILLFACTOR = 90);


GO
CREATE NONCLUSTERED INDEX [idx_sf_page_data_page_node_id]
    ON [dbo].[sf_page_data]([page_node_id] ASC) WITH (FILLFACTOR = 90);

