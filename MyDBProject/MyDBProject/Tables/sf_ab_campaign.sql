CREATE TABLE [dbo].[sf_ab_campaign] (
    [winning_condition]         INT              NULL,
    [testing_sample_percentage] INT              NULL,
    [testing_ends]              DATETIME         NULL,
    [last_modified]             DATETIME         NOT NULL,
    [id]                        UNIQUEIDENTIFIER NOT NULL,
    [campaign_b_id]             UNIQUEIDENTIFIER NULL,
    [campaign_a_id]             UNIQUEIDENTIFIER NULL,
    [application_name]          VARCHAR (255)    NULL,
    [a_b_testing_status]        INT              NULL,
    [voa_version]               SMALLINT         NOT NULL,
    CONSTRAINT [pk_sf_ab_campaign] PRIMARY KEY CLUSTERED ([id] ASC) WITH (FILLFACTOR = 90)
);

