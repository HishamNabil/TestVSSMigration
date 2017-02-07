CREATE TABLE [dbo].[sf_delivery_entry] (
    [sf_delivery_entry_id] INT              NOT NULL,
    [subscriber_id]        UNIQUEIDENTIFIER NULL,
    [delivery_status]      INT              NOT NULL,
    [delivery_date]        DATETIME         NOT NULL,
    [campaign_id]          UNIQUEIDENTIFIER NULL,
    [voa_version]          SMALLINT         NOT NULL,
    CONSTRAINT [pk_sf_delivery_entry] PRIMARY KEY CLUSTERED ([sf_delivery_entry_id] ASC) WITH (FILLFACTOR = 90)
);

