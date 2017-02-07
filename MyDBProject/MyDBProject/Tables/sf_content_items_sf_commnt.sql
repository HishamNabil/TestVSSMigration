CREATE TABLE [dbo].[sf_content_items_sf_commnt] (
    [content_id]  UNIQUEIDENTIFIER NOT NULL,
    [seq]         INT              NOT NULL,
    [content_id2] UNIQUEIDENTIFIER NULL,
    CONSTRAINT [pk_sf_content_items_sf_commnt] PRIMARY KEY CLUSTERED ([content_id] ASC, [seq] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [ref_sf_cntnt_tms_sf_cmmnt_sf_2] FOREIGN KEY ([content_id2]) REFERENCES [dbo].[sf_commnt] ([content_id]),
    CONSTRAINT [ref_sf_cntnt_tms_sf_cmmnt_sf_c] FOREIGN KEY ([content_id]) REFERENCES [dbo].[sf_content_items] ([content_id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_cntnt_tms_sf_cmmnt_cntn]
    ON [dbo].[sf_content_items_sf_commnt]([content_id2] ASC) WITH (FILLFACTOR = 90);

