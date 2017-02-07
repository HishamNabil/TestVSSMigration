CREATE TABLE [dbo].[sf_pg_nd_prmssnst_bjct_ttl_rs_] (
    [id]     UNIQUEIDENTIFIER NOT NULL,
    [mapkey] VARCHAR (255)    NOT NULL,
    [val]    VARCHAR (255)    NULL,
    CONSTRAINT [pk_sf_pg_nd_prmssnst_bjct_ttl_] PRIMARY KEY CLUSTERED ([id] ASC, [mapkey] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [ref_sf_pg_nd_prmssnst_bjct_ttl] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_page_node] ([id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_pg_nd_prmssnst_bjct_ttl]
    ON [dbo].[sf_pg_nd_prmssnst_bjct_ttl_rs_]([val] ASC) WITH (FILLFACTOR = 90);

