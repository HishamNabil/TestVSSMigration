CREATE TABLE [dbo].[sf_page_node_sf_permissions] (
    [id]  UNIQUEIDENTIFIER NOT NULL,
    [id2] UNIQUEIDENTIFIER NOT NULL,
    CONSTRAINT [pk_sf_page_node_sf_permissions] PRIMARY KEY CLUSTERED ([id] ASC, [id2] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [ref_sf_pg_nd_sf_prmssns_sf_pg_] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_page_node] ([id]),
    CONSTRAINT [ref_sf_pg_nd_sf_prmssns_sf_prm] FOREIGN KEY ([id2]) REFERENCES [dbo].[sf_permissions] ([id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_pg_nd_sf_prmissions_id2]
    ON [dbo].[sf_page_node_sf_permissions]([id2] ASC) WITH (FILLFACTOR = 90);

