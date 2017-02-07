CREATE TABLE [dbo].[sf_pg_templates_sf_permissions] (
    [id]  UNIQUEIDENTIFIER NOT NULL,
    [id2] UNIQUEIDENTIFIER NOT NULL,
    CONSTRAINT [pk_sf_pg_tmplts_sf_permissions] PRIMARY KEY CLUSTERED ([id] ASC, [id2] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [ref_sf_pg_tmplts_sf_prmssns_s2] FOREIGN KEY ([id2]) REFERENCES [dbo].[sf_permissions] ([id]),
    CONSTRAINT [ref_sf_pg_tmplts_sf_prmssns_sf] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_page_templates] ([id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_pg_tmplts_sf_prmssns_d2]
    ON [dbo].[sf_pg_templates_sf_permissions]([id2] ASC) WITH (FILLFACTOR = 90);

