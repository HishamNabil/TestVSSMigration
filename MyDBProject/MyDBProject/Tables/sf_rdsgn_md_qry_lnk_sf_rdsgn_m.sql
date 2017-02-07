CREATE TABLE [dbo].[sf_rdsgn_md_qry_lnk_sf_rdsgn_m] (
    [id]  UNIQUEIDENTIFIER NOT NULL,
    [id2] UNIQUEIDENTIFIER NOT NULL,
    CONSTRAINT [pk_sf_rdsgn_md_qry_lnk_sf_rdsg] PRIMARY KEY CLUSTERED ([id] ASC, [id2] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [ref_sf_rdsgn_md_qry_lnk_sf_rd2] FOREIGN KEY ([id2]) REFERENCES [dbo].[sf_rdsgn_media_query] ([id]),
    CONSTRAINT [ref_sf_rdsgn_md_qry_lnk_sf_rds] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_rdsgn_media_query_link] ([id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_rdsgn_md_qry_lnk_sf_rds]
    ON [dbo].[sf_rdsgn_md_qry_lnk_sf_rdsgn_m]([id2] ASC) WITH (FILLFACTOR = 90);

