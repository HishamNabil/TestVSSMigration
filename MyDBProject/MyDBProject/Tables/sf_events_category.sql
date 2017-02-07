CREATE TABLE [dbo].[sf_events_category] (
    [content_id] UNIQUEIDENTIFIER NOT NULL,
    [seq]        INT              NOT NULL,
    [val]        UNIQUEIDENTIFIER NULL,
    CONSTRAINT [pk_sf_events_category] PRIMARY KEY CLUSTERED ([content_id] ASC, [seq] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [ref_sf_vnts_category_sf_events] FOREIGN KEY ([content_id]) REFERENCES [dbo].[sf_events] ([content_id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_events_category_val]
    ON [dbo].[sf_events_category]([val] ASC) WITH (FILLFACTOR = 90);

