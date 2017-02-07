CREATE TABLE [dbo].[sf_frm_dscrptn_sf_prsnttn_data] (
    [content_id] UNIQUEIDENTIFIER NOT NULL,
    [seq]        INT              NOT NULL,
    [id]         UNIQUEIDENTIFIER NULL,
    CONSTRAINT [pk_sf_frm_dscrptn_sf_prsnttn_d] PRIMARY KEY CLUSTERED ([content_id] ASC, [seq] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [ref_sf_frm_dscrptn_sf_prsnttn_] FOREIGN KEY ([content_id]) REFERENCES [dbo].[sf_form_description] ([content_id]),
    CONSTRAINT [ref_sf_frm_dscrptn_sf_prsnttn2] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_presentation_data] ([id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_frm_dscrptn_sf_prsnttn_]
    ON [dbo].[sf_frm_dscrptn_sf_prsnttn_data]([id] ASC) WITH (FILLFACTOR = 90);

