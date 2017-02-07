CREATE TABLE [dbo].[sf_wrkflw_dfntn_spprtd_prmssn_] (
    [id]  UNIQUEIDENTIFIER NOT NULL,
    [seq] INT              NOT NULL,
    [val] VARCHAR (255)    NULL,
    CONSTRAINT [pk_sf_wrkflw_dfntn_spprtd_prms] PRIMARY KEY CLUSTERED ([id] ASC, [seq] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [ref_sf_wrkflw_dfntn_spprtd_prm] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_workflow_definition] ([id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_wrkflw_dfntn_spprtd_prm]
    ON [dbo].[sf_wrkflw_dfntn_spprtd_prmssn_]([val] ASC) WITH (FILLFACTOR = 90);

