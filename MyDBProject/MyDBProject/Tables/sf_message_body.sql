﻿CREATE TABLE [dbo].[sf_message_body] (
    [nme]                       NVARCHAR (255)   NULL,
    [message_body_type]         INT              NOT NULL,
    [last_modified]             DATETIME         NOT NULL,
    [is_template]               TINYINT          NOT NULL,
    [internal_page_template_id] UNIQUEIDENTIFIER NULL,
    [id]                        UNIQUEIDENTIFIER NOT NULL,
    [body_text]                 NVARCHAR (MAX)   NULL,
    [application_name]          VARCHAR (255)    NULL,
    [voa_version]               SMALLINT         NOT NULL,
    [was_template_copied]       TINYINT          NULL,
    [plain_text_version]        NVARCHAR (MAX)   NULL,
    [copied_template_id]        UNIQUEIDENTIFIER NULL,
    CONSTRAINT [pk_sf_message_body] PRIMARY KEY CLUSTERED ([id] ASC) WITH (FILLFACTOR = 90)
);

