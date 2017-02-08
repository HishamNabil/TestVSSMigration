﻿CREATE TABLE [dbo].[sf_meta_types_section_names] (
    [id]  UNIQUEIDENTIFIER NOT NULL,
    [seq] INT              NOT NULL,
    [val] VARCHAR (255)    NULL,
    CONSTRAINT [pk_sf_meta_types_section_names] PRIMARY KEY CLUSTERED ([id] ASC, [seq] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [ref_sf_mt_typs_sctn_nms_sf_mt_] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_meta_types] ([id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_mt_typs_scton_names_val]
    ON [dbo].[sf_meta_types_section_names]([val] ASC) WITH (FILLFACTOR = 90);

