CREATE TABLE [dbo].[sf_frm_dscrptn_pblshd_trnsltns] (
    [content_id] UNIQUEIDENTIFIER NOT NULL,
    [seq]        INT              NOT NULL,
    [val]        VARCHAR (255)    NULL,
    CONSTRAINT [pk_sf_frm_dscrptn_pblshd_trnsl] PRIMARY KEY CLUSTERED ([content_id] ASC, [seq] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [ref_sf_frm_dscrptn_pblshd_trns] FOREIGN KEY ([content_id]) REFERENCES [dbo].[sf_form_description] ([content_id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_frm_dscrptn_pblshd_trns]
    ON [dbo].[sf_frm_dscrptn_pblshd_trnsltns]([val] ASC) WITH (FILLFACTOR = 90);

