﻿CREATE TABLE [dbo].[sf_commnt_parent_group_ids] (
    [content_id] UNIQUEIDENTIFIER NOT NULL,
    [seq]        INT              NOT NULL,
    [val]        UNIQUEIDENTIFIER NULL,
    CONSTRAINT [pk_sf_commnt_parent_group_ids] PRIMARY KEY CLUSTERED ([content_id] ASC, [seq] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [ref_sf_cmmnt_prnt_grp_ds_sf_cm] FOREIGN KEY ([content_id]) REFERENCES [dbo].[sf_commnt] ([content_id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_cmmnt_prnt_grup_ids_val]
    ON [dbo].[sf_commnt_parent_group_ids]([val] ASC) WITH (FILLFACTOR = 90);

