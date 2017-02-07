CREATE TABLE [dbo].[sf_page_node_translation_siblings] (
    [id]  UNIQUEIDENTIFIER NOT NULL,
    [id2] UNIQUEIDENTIFIER NOT NULL,
    CONSTRAINT [pk_sf_pg_nd_trnsltion_siblings] PRIMARY KEY CLUSTERED ([id] ASC, [id2] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [ref_sf_pg_nd_trnsltn_sblngs_s2] FOREIGN KEY ([id2]) REFERENCES [dbo].[sf_page_node] ([id]),
    CONSTRAINT [ref_sf_pg_nd_trnsltn_sblngs_sf] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_page_node] ([id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_pg_nd_trnsltn_sblngs_d2]
    ON [dbo].[sf_page_node_translation_siblings]([id2] ASC) WITH (FILLFACTOR = 90);

