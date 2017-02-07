CREATE TABLE [dbo].[sf_content_items_category] (
    [content_id] UNIQUEIDENTIFIER NOT NULL,
    [seq]        INT              NOT NULL,
    [val]        UNIQUEIDENTIFIER NULL,
    CONSTRAINT [pk_sf_content_items_category] PRIMARY KEY CLUSTERED ([content_id] ASC, [seq] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [ref_sf_cntnt_tms_ctgry_sf_cntn] FOREIGN KEY ([content_id]) REFERENCES [dbo].[sf_content_items] ([content_id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_cntnt_tems_category_val]
    ON [dbo].[sf_content_items_category]([val] ASC) WITH (FILLFACTOR = 90);

