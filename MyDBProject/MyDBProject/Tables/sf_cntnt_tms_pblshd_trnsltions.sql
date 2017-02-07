CREATE TABLE [dbo].[sf_cntnt_tms_pblshd_trnsltions] (
    [content_id] UNIQUEIDENTIFIER NOT NULL,
    [seq]        INT              NOT NULL,
    [val]        VARCHAR (255)    NULL,
    CONSTRAINT [pk_sf_cntnt_tms_pblshd_trnsltn] PRIMARY KEY CLUSTERED ([content_id] ASC, [seq] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [ref_sf_cntnt_tms_pblshd_trnslt] FOREIGN KEY ([content_id]) REFERENCES [dbo].[sf_content_items] ([content_id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_cntnt_tms_pblshd_trnslt]
    ON [dbo].[sf_cntnt_tms_pblshd_trnsltions]([val] ASC) WITH (FILLFACTOR = 90);

