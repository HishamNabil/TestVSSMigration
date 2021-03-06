﻿CREATE TABLE [dbo].[dynmc_78481792f466c893dff0100b] (
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
    CONSTRAINT [pk_dynmc_78481792f466_2FD36701] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [ref_dynmc_78481792f46_EB004AAB] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_dynamic_type_base] ([id]) ON DELETE CASCADE
);

