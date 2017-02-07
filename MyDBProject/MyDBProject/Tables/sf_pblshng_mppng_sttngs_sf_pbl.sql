CREATE TABLE [dbo].[sf_pblshng_mppng_sttngs_sf_pbl] (
    [id]  UNIQUEIDENTIFIER NOT NULL,
    [seq] INT              NOT NULL,
    [id2] UNIQUEIDENTIFIER NULL,
    CONSTRAINT [pk_sf_pblshng_mppng_sttngs_sf_] PRIMARY KEY CLUSTERED ([id] ASC, [seq] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [ref_sf_pblshng_mppng_sttngs_s2] FOREIGN KEY ([id2]) REFERENCES [dbo].[sf_publishing_mapping] ([id]),
    CONSTRAINT [ref_sf_pblshng_mppng_sttngs_sf] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_publishing_mapping_settings] ([id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_pblshng_mppng_sttngs_sf]
    ON [dbo].[sf_pblshng_mppng_sttngs_sf_pbl]([id2] ASC) WITH (FILLFACTOR = 90);

