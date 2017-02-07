CREATE TABLE [dbo].[sf_frm_dscrpton_sf_permissions] (
    [content_id] UNIQUEIDENTIFIER NOT NULL,
    [id]         UNIQUEIDENTIFIER NOT NULL,
    CONSTRAINT [pk_sf_frm_dscrptn_sf_prmssions] PRIMARY KEY CLUSTERED ([content_id] ASC, [id] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [ref_sf_frm_dscrptn_sf_prmssns_] FOREIGN KEY ([content_id]) REFERENCES [dbo].[sf_form_description] ([content_id]),
    CONSTRAINT [ref_sf_frm_dscrptn_sf_prmssns2] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_permissions] ([id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_frm_dscrptn_sf_prmssns_]
    ON [dbo].[sf_frm_dscrpton_sf_permissions]([id] ASC) WITH (FILLFACTOR = 90);

