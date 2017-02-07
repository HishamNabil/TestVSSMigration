CREATE TABLE [dbo].[sf_lists_sf_commnt] (
    [content_id]  UNIQUEIDENTIFIER NOT NULL,
    [seq]         INT              NOT NULL,
    [content_id2] UNIQUEIDENTIFIER NULL,
    CONSTRAINT [pk_sf_lists_sf_commnt] PRIMARY KEY CLUSTERED ([content_id] ASC, [seq] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [ref_sf_lsts_sf_cmmnt_sf_commnt] FOREIGN KEY ([content_id2]) REFERENCES [dbo].[sf_commnt] ([content_id]),
    CONSTRAINT [ref_sf_lsts_sf_commnt_sf_lists] FOREIGN KEY ([content_id]) REFERENCES [dbo].[sf_lists] ([content_id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_lsts_sf_cmmnt_cntnt_id2]
    ON [dbo].[sf_lists_sf_commnt]([content_id2] ASC) WITH (FILLFACTOR = 90);

