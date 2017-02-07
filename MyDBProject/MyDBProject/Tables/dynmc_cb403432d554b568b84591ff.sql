CREATE TABLE [dbo].[dynmc_cb403432d554b568b84591ff] (
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
    CONSTRAINT [pk_dynmc_cb403432d554b568b8459] PRIMARY KEY CLUSTERED ([id] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [ref_dynmc_cb403432d554b568b845] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_dynamic_type_base] ([id])
);

