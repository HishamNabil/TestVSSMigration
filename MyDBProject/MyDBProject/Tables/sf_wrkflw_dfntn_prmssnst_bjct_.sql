CREATE TABLE [dbo].[sf_wrkflw_dfntn_prmssnst_bjct_] (
    [id]     UNIQUEIDENTIFIER NOT NULL,
    [mapkey] VARCHAR (255)    NOT NULL,
    [val]    VARCHAR (255)    NULL,
    CONSTRAINT [pk_sf_wrkflw_dfntn_prmssnst_bj] PRIMARY KEY CLUSTERED ([id] ASC, [mapkey] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [ref_sf_wrkflw_dfntn_prmssnst_b] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_workflow_definition] ([id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_wrkflw_dfntn_prmssnst_b]
    ON [dbo].[sf_wrkflw_dfntn_prmssnst_bjct_]([val] ASC) WITH (FILLFACTOR = 90);

