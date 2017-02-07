CREATE TABLE [dbo].[sf_cntnt_tems_sf_language_data] (
    [content_id] UNIQUEIDENTIFIER NOT NULL,
    [seq]        INT              NOT NULL,
    [id]         UNIQUEIDENTIFIER NULL,
    CONSTRAINT [pk_sf_cntnt_tms_sf_lngage_data] PRIMARY KEY CLUSTERED ([content_id] ASC, [seq] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [ref_sf_cntnt_tms_sf_lngg_dt_s2] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_language_data] ([id]),
    CONSTRAINT [ref_sf_cntnt_tms_sf_lngg_dt_sf] FOREIGN KEY ([content_id]) REFERENCES [dbo].[sf_content_items] ([content_id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_cntnt_tms_sf_lngg_dt_id]
    ON [dbo].[sf_cntnt_tems_sf_language_data]([id] ASC) WITH (FILLFACTOR = 90);

