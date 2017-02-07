CREATE TABLE [dbo].[sf_drft_pages_sf_language_data] (
    [id]  UNIQUEIDENTIFIER NOT NULL,
    [seq] INT              NOT NULL,
    [id2] UNIQUEIDENTIFIER NULL,
    CONSTRAINT [pk_sf_drft_pgs_sf_lnguage_data] PRIMARY KEY CLUSTERED ([id] ASC, [seq] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [ref_sf_drft_pgs_sf_lngg_dt_sf_] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_draft_pages] ([id]),
    CONSTRAINT [ref_sf_drft_pgs_sf_lngg_dt_sf2] FOREIGN KEY ([id2]) REFERENCES [dbo].[sf_language_data] ([id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_drft_pgs_sf_lngg_dt_id2]
    ON [dbo].[sf_drft_pages_sf_language_data]([id2] ASC) WITH (FILLFACTOR = 90);

