CREATE TABLE [dbo].[sf_pblshng_pp_sttngs_cntnt_lnk] (
    [id]  UNIQUEIDENTIFIER NOT NULL,
    [seq] INT              NOT NULL,
    [val] UNIQUEIDENTIFIER NULL,
    CONSTRAINT [pk_sf_pblshng_pp_sttngs_cntnt_] PRIMARY KEY CLUSTERED ([id] ASC, [seq] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [ref_sf_pblshng_pp_sttngs_cntnt] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_publishing_pipe_settings] ([id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_pblshng_pp_sttngs_cntnt]
    ON [dbo].[sf_pblshng_pp_sttngs_cntnt_lnk]([val] ASC) WITH (FILLFACTOR = 90);

