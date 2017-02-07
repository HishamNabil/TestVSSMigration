CREATE TABLE [dbo].[sf_pblshng_pp_sttngs_ddtnl_dta] (
    [id]     UNIQUEIDENTIFIER NOT NULL,
    [mapkey] VARCHAR (255)    NOT NULL,
    [val]    VARCHAR (1000)   NULL,
    CONSTRAINT [pk_sf_pblshng_pp_sttngs_ddtnl_] PRIMARY KEY CLUSTERED ([id] ASC, [mapkey] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [ref_sf_pblshng_pp_sttngs_ddtnl] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_publishing_pipe_settings] ([id])
);

