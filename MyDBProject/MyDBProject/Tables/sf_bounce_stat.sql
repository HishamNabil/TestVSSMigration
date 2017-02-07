CREATE TABLE [dbo].[sf_bounce_stat] (
    [sf_subscriber_id] UNIQUEIDENTIFIER NULL,
    [smtp_status]      VARCHAR (255)    NULL,
    [last_modified]    DATETIME         NOT NULL,
    [id]               UNIQUEIDENTIFIER NOT NULL,
    [sf_campaign_id]   UNIQUEIDENTIFIER NULL,
    [application_name] VARCHAR (255)    NOT NULL,
    [additional_info]  VARCHAR (255)    NULL,
    [voa_version]      SMALLINT         NOT NULL,
    CONSTRAINT [pk_sf_bounce_stat] PRIMARY KEY CLUSTERED ([id] ASC) WITH (FILLFACTOR = 90)
);

