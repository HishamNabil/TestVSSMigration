CREATE TABLE [dbo].[sf_scrty_rts_prmssnst_bjct_ttl] (
    [id]     UNIQUEIDENTIFIER NOT NULL,
    [mapkey] VARCHAR (255)    NOT NULL,
    [val]    VARCHAR (255)    NULL,
    CONSTRAINT [pk_sf_scrty_rts_prmssnst_bjct_] PRIMARY KEY CLUSTERED ([id] ASC, [mapkey] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [ref_sf_scrty_rts_prmssnst_bjct] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_security_roots] ([id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_scrty_rts_prmssnst_bjct]
    ON [dbo].[sf_scrty_rts_prmssnst_bjct_ttl]([val] ASC) WITH (FILLFACTOR = 90);

