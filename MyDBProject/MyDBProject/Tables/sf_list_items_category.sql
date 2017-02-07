CREATE TABLE [dbo].[sf_list_items_category] (
    [content_id] UNIQUEIDENTIFIER NOT NULL,
    [seq]        INT              NOT NULL,
    [val]        UNIQUEIDENTIFIER NULL,
    CONSTRAINT [pk_sf_list_items_category] PRIMARY KEY CLUSTERED ([content_id] ASC, [seq] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [ref_sf_lst_tms_ctgry_sf_lst_tm] FOREIGN KEY ([content_id]) REFERENCES [dbo].[sf_list_items] ([content_id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_list_items_category_val]
    ON [dbo].[sf_list_items_category]([val] ASC) WITH (FILLFACTOR = 90);

