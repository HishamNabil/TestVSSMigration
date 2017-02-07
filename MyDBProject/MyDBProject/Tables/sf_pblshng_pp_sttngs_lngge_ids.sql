CREATE TABLE [dbo].[sf_pblshng_pp_sttngs_lngge_ids] (
    [id]  UNIQUEIDENTIFIER NOT NULL,
    [seq] INT              NOT NULL,
    [val] VARCHAR (255)    NULL,
    CONSTRAINT [pk_sf_pblshng_pp_sttngs_lngg_d] PRIMARY KEY CLUSTERED ([id] ASC, [seq] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [ref_sf_pblshng_pp_sttngs_lngg_] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_publishing_pipe_settings] ([id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_pblshng_pp_sttngs_lngg_]
    ON [dbo].[sf_pblshng_pp_sttngs_lngge_ids]([val] ASC) WITH (FILLFACTOR = 90);

