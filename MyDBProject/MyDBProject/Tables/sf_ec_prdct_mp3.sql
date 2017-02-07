CREATE TABLE [dbo].[sf_ec_prdct_mp3] (
    [id]           UNIQUEIDENTIFIER NOT NULL,
    [release_year] INT              NULL,
    [length]       NVARCHAR (255)   NULL,
    [artist]       NVARCHAR (255)   NULL,
    [album]        NVARCHAR (255)   NULL,
    CONSTRAINT [pk_sf_ec_prdct_mp3] PRIMARY KEY CLUSTERED ([id] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [ref_sf_c_prdct_mp3_sf_c_prduct] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_ec_product] ([id])
);

