CREATE TABLE [dbo].[sf_c_prdct_pblshd_translations] (
    [id]  UNIQUEIDENTIFIER NOT NULL,
    [seq] INT              NOT NULL,
    [val] VARCHAR (255)    NULL,
    CONSTRAINT [pk_sf_c_prdct_pblshd_trnsltons] PRIMARY KEY CLUSTERED ([id] ASC, [seq] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [ref_sf_c_prdct_pblshd_trnsltns] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_ec_product] ([id])
);

