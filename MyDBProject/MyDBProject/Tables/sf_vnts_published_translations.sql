CREATE TABLE [dbo].[sf_vnts_published_translations] (
    [content_id] UNIQUEIDENTIFIER NOT NULL,
    [seq]        INT              NOT NULL,
    [val]        VARCHAR (255)    NULL,
    CONSTRAINT [pk_sf_vnts_pblshd_translations] PRIMARY KEY CLUSTERED ([content_id] ASC, [seq] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [ref_sf_vnts_pblshd_trnsltns_sf] FOREIGN KEY ([content_id]) REFERENCES [dbo].[sf_events] ([content_id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_vnts_pblshd_trnsltns_vl]
    ON [dbo].[sf_vnts_published_translations]([val] ASC) WITH (FILLFACTOR = 90);

