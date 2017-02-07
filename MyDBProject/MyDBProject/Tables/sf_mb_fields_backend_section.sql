CREATE TABLE [dbo].[sf_mb_fields_backend_section] (
    [title]                  VARCHAR (255)    NULL,
    [parent_type_id]         UNIQUEIDENTIFIER NULL,
    [ordinal]                INT              NOT NULL,
    [nme]                    VARCHAR (255)    NULL,
    [last_modified]          DATETIME         NOT NULL,
    [is_expanded_by_default] TINYINT          NOT NULL,
    [is_expandable]          TINYINT          NOT NULL,
    [id]                     UNIQUEIDENTIFIER NOT NULL,
    [expand_text]            VARCHAR (255)    NULL,
    [application_name]       VARCHAR (255)    NULL,
    [voa_version]            SMALLINT         NOT NULL,
    CONSTRAINT [pk_sf_mb_felds_backend_section] PRIMARY KEY CLUSTERED ([id] ASC) WITH (FILLFACTOR = 90)
);

