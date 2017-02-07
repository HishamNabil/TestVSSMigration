CREATE TABLE [dbo].[sf_blg_psts_pblshd_trnslations] (
    [content_id] UNIQUEIDENTIFIER NOT NULL,
    [seq]        INT              NOT NULL,
    [val]        VARCHAR (255)    NULL,
    CONSTRAINT [pk_sf_blg_psts_pblshd_trnsltns] PRIMARY KEY CLUSTERED ([content_id] ASC, [seq] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [ref_sf_blg_psts_pblshd_trnsltn] FOREIGN KEY ([content_id]) REFERENCES [dbo].[sf_blog_posts] ([content_id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_blg_psts_pblshd_trnsltn]
    ON [dbo].[sf_blg_psts_pblshd_trnslations]([val] ASC) WITH (FILLFACTOR = 90);

