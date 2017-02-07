CREATE TABLE [dbo].[sf_lst_sf_subscriber] (
    [id]  UNIQUEIDENTIFIER NOT NULL,
    [id2] UNIQUEIDENTIFIER NOT NULL,
    CONSTRAINT [pk_sf_lst_sf_subscriber] PRIMARY KEY CLUSTERED ([id] ASC, [id2] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [ref_sf_lst_sf_sbscrbr_sf_sbscr] FOREIGN KEY ([id2]) REFERENCES [dbo].[sf_subscriber] ([id]),
    CONSTRAINT [ref_sf_lst_sf_sbscriber_sf_lst] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_lst] ([id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_lst_sf_subscriber_id2]
    ON [dbo].[sf_lst_sf_subscriber]([id2] ASC) WITH (FILLFACTOR = 90);

