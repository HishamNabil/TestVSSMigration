CREATE TABLE [dbo].[sf_events_sf_language_data] (
    [content_id] UNIQUEIDENTIFIER NOT NULL,
    [seq]        INT              NOT NULL,
    [id]         UNIQUEIDENTIFIER NULL,
    CONSTRAINT [pk_sf_events_sf_language_data] PRIMARY KEY CLUSTERED ([content_id] ASC, [seq] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [ref_sf_vnts_sf_lngg_dt_sf_lngg] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_language_data] ([id]),
    CONSTRAINT [ref_sf_vnts_sf_lngg_dt_sf_vnts] FOREIGN KEY ([content_id]) REFERENCES [dbo].[sf_events] ([content_id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_vnts_sf_lnguage_data_id]
    ON [dbo].[sf_events_sf_language_data]([id] ASC) WITH (FILLFACTOR = 90);

