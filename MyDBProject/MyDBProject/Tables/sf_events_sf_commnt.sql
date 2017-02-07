CREATE TABLE [dbo].[sf_events_sf_commnt] (
    [content_id]  UNIQUEIDENTIFIER NOT NULL,
    [seq]         INT              NOT NULL,
    [content_id2] UNIQUEIDENTIFIER NULL,
    CONSTRAINT [pk_sf_events_sf_commnt] PRIMARY KEY CLUSTERED ([content_id] ASC, [seq] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [ref_sf_vnts_sf_cmmnt_sf_commnt] FOREIGN KEY ([content_id2]) REFERENCES [dbo].[sf_commnt] ([content_id]),
    CONSTRAINT [ref_sf_vnts_sf_cmmnt_sf_events] FOREIGN KEY ([content_id]) REFERENCES [dbo].[sf_events] ([content_id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_vnts_sf_cmmnt_cntnt_id2]
    ON [dbo].[sf_events_sf_commnt]([content_id2] ASC) WITH (FILLFACTOR = 90);

