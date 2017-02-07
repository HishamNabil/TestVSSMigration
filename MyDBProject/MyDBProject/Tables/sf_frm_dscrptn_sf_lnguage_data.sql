CREATE TABLE [dbo].[sf_frm_dscrptn_sf_lnguage_data] (
    [content_id] UNIQUEIDENTIFIER NOT NULL,
    [seq]        INT              NOT NULL,
    [id]         UNIQUEIDENTIFIER NULL,
    CONSTRAINT [pk_sf_frm_dscrptn_sf_lngg_data] PRIMARY KEY CLUSTERED ([content_id] ASC, [seq] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [ref_sf_frm_dscrptn_sf_lngg_dt_] FOREIGN KEY ([content_id]) REFERENCES [dbo].[sf_form_description] ([content_id]),
    CONSTRAINT [ref_sf_frm_dscrptn_sf_lngg_dt2] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_language_data] ([id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_frm_dscrptn_sf_lngg_dt_]
    ON [dbo].[sf_frm_dscrptn_sf_lnguage_data]([id] ASC) WITH (FILLFACTOR = 90);

