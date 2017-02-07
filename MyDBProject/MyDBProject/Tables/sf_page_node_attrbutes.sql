CREATE TABLE [dbo].[sf_page_node_attrbutes] (
    [id]     UNIQUEIDENTIFIER NOT NULL,
    [mapkey] VARCHAR (255)    NOT NULL,
    [val]    NVARCHAR (1000)  NULL,
    CONSTRAINT [pk_sf_page_node_attrbutes] PRIMARY KEY CLUSTERED ([id] ASC, [mapkey] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [ref_sf_pg_nd_ttrbts_sf_pg_node] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_page_node] ([id])
);

