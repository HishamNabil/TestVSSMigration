CREATE TABLE [dbo].[sf_ec_prdct_book] (
    [id]              UNIQUEIDENTIFIER NOT NULL,
    [release_date]    DATETIME         NULL,
    [publisher]       NVARCHAR (255)   NULL,
    [number_of_pages] INT              NULL,
    [i_s_b_n]         NVARCHAR (255)   NULL,
    [author]          NVARCHAR (255)   NULL,
    CONSTRAINT [pk_sf_ec_prdct_book] PRIMARY KEY CLUSTERED ([id] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [ref_sf_c_prdct_bk_sf_c_product] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_ec_product] ([id])
);

