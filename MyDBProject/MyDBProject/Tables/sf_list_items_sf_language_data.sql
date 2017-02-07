CREATE TABLE [dbo].[sf_list_items_sf_language_data] (
    [content_id] UNIQUEIDENTIFIER NOT NULL,
    [seq]        INT              NOT NULL,
    [id]         UNIQUEIDENTIFIER NULL,
    CONSTRAINT [pk_sf_lst_tms_sf_language_data] PRIMARY KEY CLUSTERED ([content_id] ASC, [seq] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [ref_sf_lst_tms_sf_lngg_dt_sf_2] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_language_data] ([id]),
    CONSTRAINT [ref_sf_lst_tms_sf_lngg_dt_sf_l] FOREIGN KEY ([content_id]) REFERENCES [dbo].[sf_list_items] ([content_id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_lst_tms_sf_lngg_data_id]
    ON [dbo].[sf_list_items_sf_language_data]([id] ASC) WITH (FILLFACTOR = 90);

