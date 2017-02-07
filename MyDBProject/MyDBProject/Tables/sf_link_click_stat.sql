CREATE TABLE [dbo].[sf_link_click_stat] (
    [sf_link_click_stat_id] INT              NOT NULL,
    [url]                   VARCHAR (255)    NULL,
    [subscriber_id]         UNIQUEIDENTIFIER NULL,
    [date_time_clicked]     DATETIME         NOT NULL,
    [campaign_id]           UNIQUEIDENTIFIER NULL,
    [voa_version]           SMALLINT         NOT NULL,
    CONSTRAINT [pk_sf_link_click_stat] PRIMARY KEY CLUSTERED ([sf_link_click_stat_id] ASC) WITH (FILLFACTOR = 90)
);

