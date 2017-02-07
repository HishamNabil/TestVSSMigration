CREATE TABLE [dbo].[sf_content_link_attrbutes] (
    [id]     UNIQUEIDENTIFIER NOT NULL,
    [mapkey] VARCHAR (255)    NOT NULL,
    [val]    NVARCHAR (1000)  NULL,
    CONSTRAINT [pk_sf_content_link_attrbutes] PRIMARY KEY CLUSTERED ([id] ASC, [mapkey] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [ref_sf_cntnt_lnk_ttrbts_sf_cnt] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_content_link] ([id])
);

