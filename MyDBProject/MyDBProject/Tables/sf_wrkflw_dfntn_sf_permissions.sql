CREATE TABLE [dbo].[sf_wrkflw_dfntn_sf_permissions] (
    [id]  UNIQUEIDENTIFIER NOT NULL,
    [id2] UNIQUEIDENTIFIER NOT NULL,
    CONSTRAINT [pk_sf_wrkflw_dfntn_sf_prmssons] PRIMARY KEY CLUSTERED ([id] ASC, [id2] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [ref_sf_wrkflw_dfntn_sf_prmssn2] FOREIGN KEY ([id2]) REFERENCES [dbo].[sf_permissions] ([id]),
    CONSTRAINT [ref_sf_wrkflw_dfntn_sf_prmssns] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_workflow_definition] ([id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_wrkflw_dfntn_sf_prmssns]
    ON [dbo].[sf_wrkflw_dfntn_sf_permissions]([id2] ASC) WITH (FILLFACTOR = 90);

