CREATE TABLE [dbo].[dynmc_7014cd5c944d378c01764f02] (
    [id]               UNIQUEIDENTIFIER NOT NULL,
    [username]         NVARCHAR (255)   NULL,
    [title]            NVARCHAR (255)   NULL,
    [summary]          NVARCHAR (255)   NULL,
    [publication_date] DATETIME         NULL,
    [owner_last_name]  NVARCHAR (255)   NULL,
    [owner_first_name] NVARCHAR (255)   NULL,
    [owner_email]      NVARCHAR (255)   NULL,
    [lnk]              NVARCHAR (255)   NULL,
    [item_hash]        NVARCHAR (255)   NULL,
    [expiration_date]  DATETIME         NULL,
    [content]          NVARCHAR (MAX)   NULL,
    [categories]       NVARCHAR (255)   NULL,
    CONSTRAINT [pk_dynmc_7014cd5c944d378c01764] PRIMARY KEY CLUSTERED ([id] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [ref_dynmc_7014cd5c944d378c0176] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_dynamic_type_base] ([id])
);

