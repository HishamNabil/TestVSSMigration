﻿CREATE TABLE [dbo].[sf_media_content_category2] (
    [content_id] UNIQUEIDENTIFIER NOT NULL,
    [seq]        INT              NOT NULL,
    [val]        UNIQUEIDENTIFIER NULL,
    CONSTRAINT [pk_sf_media_content_category2] PRIMARY KEY CLUSTERED ([content_id] ASC, [seq] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [ref_sf_md_cntnt_ctgry2_sf_md_c] FOREIGN KEY ([content_id]) REFERENCES [dbo].[sf_media_content] ([content_id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_md_cntent_category2_val]
    ON [dbo].[sf_media_content_category2]([val] ASC) WITH (FILLFACTOR = 90);

