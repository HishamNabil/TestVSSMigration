CREATE TABLE [dbo].[sf_form_description_tags] (
    [content_id] UNIQUEIDENTIFIER NOT NULL,
    [seq]        INT              NOT NULL,
    [val]        UNIQUEIDENTIFIER NULL,
    CONSTRAINT [pk_sf_form_description_tags] PRIMARY KEY CLUSTERED ([content_id] ASC, [seq] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [ref_sf_frm_dscrptn_tgs_sf_frm_] FOREIGN KEY ([content_id]) REFERENCES [dbo].[sf_form_description] ([content_id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_frm_dscription_tags_val]
    ON [dbo].[sf_form_description_tags]([val] ASC) WITH (FILLFACTOR = 90);

