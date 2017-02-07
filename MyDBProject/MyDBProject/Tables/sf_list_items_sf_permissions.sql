CREATE TABLE [dbo].[sf_list_items_sf_permissions] (
    [content_id] UNIQUEIDENTIFIER NOT NULL,
    [id]         UNIQUEIDENTIFIER NOT NULL,
    CONSTRAINT [pk_sf_lst_items_sf_permissions] PRIMARY KEY CLUSTERED ([content_id] ASC, [id] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [ref_sf_lst_tms_sf_prmssns_sf_l] FOREIGN KEY ([content_id]) REFERENCES [dbo].[sf_list_items] ([content_id]),
    CONSTRAINT [ref_sf_lst_tms_sf_prmssns_sf_p] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_permissions] ([id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_lst_tms_sf_prmssions_id]
    ON [dbo].[sf_list_items_sf_permissions]([id] ASC) WITH (FILLFACTOR = 90);

