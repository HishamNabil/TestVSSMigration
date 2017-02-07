CREATE TABLE [dbo].[sf_ntf_msg_jb_cstm_mssg_haders] (
    [id]     UNIQUEIDENTIFIER NOT NULL,
    [mapkey] VARCHAR (255)    NOT NULL,
    [val]    VARCHAR (255)    NULL,
    CONSTRAINT [pk_sf_ntf_msg_jb_cstm_mssg_hdr] PRIMARY KEY CLUSTERED ([id] ASC, [mapkey] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [ref_sf_ntf_msg_jb_cstm_mssg_hd] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_notif_msg_job] ([id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_ntf_msg_jb_cstm_mssg_hd]
    ON [dbo].[sf_ntf_msg_jb_cstm_mssg_haders]([val] ASC) WITH (FILLFACTOR = 90);

