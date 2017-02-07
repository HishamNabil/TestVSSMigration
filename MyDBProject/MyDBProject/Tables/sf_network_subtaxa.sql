CREATE TABLE [dbo].[sf_network_subtaxa] (
    [id]  UNIQUEIDENTIFIER NOT NULL,
    [id2] UNIQUEIDENTIFIER NOT NULL,
    CONSTRAINT [pk_sf_network_subtaxa] PRIMARY KEY CLUSTERED ([id] ASC, [id2] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [ref_sf_network_subtaxa_sf_tax2] FOREIGN KEY ([id2]) REFERENCES [dbo].[sf_taxa] ([id]),
    CONSTRAINT [ref_sf_network_subtaxa_sf_taxa] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_taxa] ([id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_network_subtaxa_id2]
    ON [dbo].[sf_network_subtaxa]([id2] ASC) WITH (FILLFACTOR = 90);

