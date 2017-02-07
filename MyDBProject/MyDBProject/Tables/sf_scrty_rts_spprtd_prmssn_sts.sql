CREATE TABLE [dbo].[sf_scrty_rts_spprtd_prmssn_sts] (
    [id]  UNIQUEIDENTIFIER NOT NULL,
    [seq] INT              NOT NULL,
    [val] VARCHAR (255)    NULL,
    CONSTRAINT [pk_sf_scrty_rts_spprtd_prmssn_] PRIMARY KEY CLUSTERED ([id] ASC, [seq] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [ref_sf_scrty_rts_spprtd_prmssn] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_security_roots] ([id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_scrty_rts_spprtd_prmssn]
    ON [dbo].[sf_scrty_rts_spprtd_prmssn_sts]([val] ASC) WITH (FILLFACTOR = 90);

