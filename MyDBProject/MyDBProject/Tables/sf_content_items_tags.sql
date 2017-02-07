CREATE TABLE [dbo].[sf_content_items_tags] (
    [content_id] UNIQUEIDENTIFIER NOT NULL,
    [seq]        INT              NOT NULL,
    [val]        UNIQUEIDENTIFIER NULL,
    CONSTRAINT [pk_sf_content_items_tags] PRIMARY KEY CLUSTERED ([content_id] ASC, [seq] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [ref_sf_cntnt_tms_tgs_sf_cntnt_] FOREIGN KEY ([content_id]) REFERENCES [dbo].[sf_content_items] ([content_id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_content_items_tags_val]
    ON [dbo].[sf_content_items_tags]([val] ASC) WITH (FILLFACTOR = 90);

