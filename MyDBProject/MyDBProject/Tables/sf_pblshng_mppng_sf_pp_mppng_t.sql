CREATE TABLE [dbo].[sf_pblshng_mppng_sf_pp_mppng_t] (
    [id]  UNIQUEIDENTIFIER NOT NULL,
    [seq] INT              NOT NULL,
    [id2] UNIQUEIDENTIFIER NULL,
    CONSTRAINT [pk_sf_pblshng_mppng_sf_pp_mppn] PRIMARY KEY CLUSTERED ([id] ASC, [seq] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [ref_sf_pblshng_mppng_sf_pp_mp2] FOREIGN KEY ([id2]) REFERENCES [dbo].[sf_pipe_mapping_translation] ([id]),
    CONSTRAINT [ref_sf_pblshng_mppng_sf_pp_mpp] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_publishing_mapping] ([id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_pblshng_mppng_sf_pp_mpp]
    ON [dbo].[sf_pblshng_mppng_sf_pp_mppng_t]([id2] ASC) WITH (FILLFACTOR = 90);

