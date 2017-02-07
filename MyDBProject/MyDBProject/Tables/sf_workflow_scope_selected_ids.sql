CREATE TABLE [dbo].[sf_workflow_scope_selected_ids] (
    [id]  UNIQUEIDENTIFIER NOT NULL,
    [seq] INT              NOT NULL,
    [val] VARCHAR (255)    NULL,
    CONSTRAINT [pk_sf_wrkflw_scpe_selected_ids] PRIMARY KEY CLUSTERED ([id] ASC, [seq] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [ref_sf_wrkflw_scp_slctd_ds_sf_] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_workflow_scope] ([id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_wrkflw_scp_slctd_ds_val]
    ON [dbo].[sf_workflow_scope_selected_ids]([val] ASC) WITH (FILLFACTOR = 90);

