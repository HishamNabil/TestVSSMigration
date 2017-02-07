CREATE TABLE [dbo].[sf_libraries_sf_commnt] (
    [content_id]  UNIQUEIDENTIFIER NOT NULL,
    [seq]         INT              NOT NULL,
    [content_id2] UNIQUEIDENTIFIER NULL,
    CONSTRAINT [pk_sf_libraries_sf_commnt] PRIMARY KEY CLUSTERED ([content_id] ASC, [seq] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [ref_sf_lbrrs_sf_cmmnt_sf_cmmnt] FOREIGN KEY ([content_id2]) REFERENCES [dbo].[sf_commnt] ([content_id]),
    CONSTRAINT [ref_sf_lbrrs_sf_cmmnt_sf_lbrrs] FOREIGN KEY ([content_id]) REFERENCES [dbo].[sf_libraries] ([content_id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_lbrrs_sf_cmmnt_cntnt_d2]
    ON [dbo].[sf_libraries_sf_commnt]([content_id2] ASC) WITH (FILLFACTOR = 90);

