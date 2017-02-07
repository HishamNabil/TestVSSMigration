CREATE TABLE [dbo].[sf_mb_dnc_cnt_prvdr_sf_prmssns] (
    [id]  UNIQUEIDENTIFIER NOT NULL,
    [id2] UNIQUEIDENTIFIER NOT NULL,
    CONSTRAINT [pk_sf_mb_dnc_cnt_prvdr_sf_prms] PRIMARY KEY CLUSTERED ([id] ASC, [id2] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [ref_sf_mb_dnc_cnt_prvdr_sf_pr2] FOREIGN KEY ([id2]) REFERENCES [dbo].[sf_permissions] ([id]),
    CONSTRAINT [ref_sf_mb_dnc_cnt_prvdr_sf_prm] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_mb_dnc_cnt_provider] ([id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_mb_dnc_cnt_prvdr_sf_prm]
    ON [dbo].[sf_mb_dnc_cnt_prvdr_sf_prmssns]([id2] ASC) WITH (FILLFACTOR = 90);

