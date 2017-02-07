CREATE TABLE [dbo].[sf_campaign_sf_campaign_link] (
    [id]  UNIQUEIDENTIFIER NOT NULL,
    [seq] INT              NOT NULL,
    [id2] UNIQUEIDENTIFIER NULL,
    CONSTRAINT [pk_sf_cmpaign_sf_campaign_link] PRIMARY KEY CLUSTERED ([id] ASC, [seq] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [ref_sf_cmpgn_sf_cmpgn_lnk_sf_2] FOREIGN KEY ([id2]) REFERENCES [dbo].[sf_campaign_link] ([id]),
    CONSTRAINT [ref_sf_cmpgn_sf_cmpgn_lnk_sf_c] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_campaign] ([id])
);

