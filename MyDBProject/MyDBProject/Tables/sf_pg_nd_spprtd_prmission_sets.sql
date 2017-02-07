CREATE TABLE [dbo].[sf_pg_nd_spprtd_prmission_sets] (
    [id]  UNIQUEIDENTIFIER NOT NULL,
    [seq] INT              NOT NULL,
    [val] VARCHAR (255)    NULL,
    CONSTRAINT [pk_sf_pg_nd_spprtd_prmssn_sets] PRIMARY KEY CLUSTERED ([id] ASC, [seq] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [ref_sf_pg_nd_spprtd_prmssn_sts] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_page_node] ([id])
);

