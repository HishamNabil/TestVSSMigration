CREATE TABLE [dbo].[sf_form_description_category] (
    [content_id] UNIQUEIDENTIFIER NOT NULL,
    [seq]        INT              NOT NULL,
    [val]        UNIQUEIDENTIFIER NULL,
    CONSTRAINT [pk_sf_frm_description_category] PRIMARY KEY CLUSTERED ([content_id] ASC, [seq] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [ref_sf_frm_dscrptn_ctgry_sf_fr] FOREIGN KEY ([content_id]) REFERENCES [dbo].[sf_form_description] ([content_id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_frm_dscrptn_ctegory_val]
    ON [dbo].[sf_form_description_category]([val] ASC) WITH (FILLFACTOR = 90);

