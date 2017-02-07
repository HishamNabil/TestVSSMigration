CREATE TABLE [dbo].[dynmc_f951bbf21114073bb4c9d8d9] (
    [id]               UNIQUEIDENTIFIER NOT NULL,
    [username]         NVARCHAR (255)   NULL,
    [title]            NVARCHAR (255)   NULL,
    [summary]          NVARCHAR (MAX)   NULL,
    [publication_date] DATETIME         NULL,
    [pipe_id]          NVARCHAR (255)   NULL,
    [owner_last_name]  NVARCHAR (255)   NULL,
    [owner_first_name] NVARCHAR (255)   NULL,
    [owner_email]      NVARCHAR (255)   NULL,
    [lnk]              NVARCHAR (255)   NULL,
    [lang_id]          NVARCHAR (255)   NULL,
    [item_hash]        NVARCHAR (255)   NULL,
    [expiration_date]  DATETIME         NULL,
    [content_type]     NVARCHAR (255)   NULL,
    [content]          NVARCHAR (MAX)   NULL,
    [categories]       NVARCHAR (MAX)   NULL,
    CONSTRAINT [pk_dynmc_f951bbf21114073bb4c9d] PRIMARY KEY CLUSTERED ([id] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [ref_dynmc_f951bbf21114073bb4c9] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_dynamic_type_base] ([id])
);

