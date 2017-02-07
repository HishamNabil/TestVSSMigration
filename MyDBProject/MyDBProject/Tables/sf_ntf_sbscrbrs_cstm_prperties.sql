CREATE TABLE [dbo].[sf_ntf_sbscrbrs_cstm_prperties] (
    [id]     UNIQUEIDENTIFIER NOT NULL,
    [mapkey] VARCHAR (255)    NOT NULL,
    [val]    VARCHAR (255)    NULL,
    CONSTRAINT [pk_sf_ntf_sbscrbrs_cstm_prprts] PRIMARY KEY CLUSTERED ([id] ASC, [mapkey] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [ref_sf_ntf_sbscrbrs_cstm_prprt] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_notif_subscribers] ([id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_ntf_sbscrbrs_cstm_prprt]
    ON [dbo].[sf_ntf_sbscrbrs_cstm_prperties]([val] ASC) WITH (FILLFACTOR = 90);

