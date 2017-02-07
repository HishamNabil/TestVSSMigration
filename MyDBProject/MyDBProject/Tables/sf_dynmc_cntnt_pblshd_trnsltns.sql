CREATE TABLE [dbo].[sf_dynmc_cntnt_pblshd_trnsltns] (
    [base_id] UNIQUEIDENTIFIER NOT NULL,
    [seq]     INT              NOT NULL,
    [val]     VARCHAR (255)    NULL,
    CONSTRAINT [pk_sf_dynmc_cntnt_pblshd_trnsl] PRIMARY KEY CLUSTERED ([base_id] ASC, [seq] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [ref_sf_dynmc_cntnt_pblshd_trns] FOREIGN KEY ([base_id]) REFERENCES [dbo].[sf_dynamic_content] ([base_id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_dynmc_cntnt_pblshd_trns]
    ON [dbo].[sf_dynmc_cntnt_pblshd_trnsltns]([val] ASC) WITH (FILLFACTOR = 90);

