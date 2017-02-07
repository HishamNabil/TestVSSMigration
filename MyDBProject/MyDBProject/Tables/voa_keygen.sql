CREATE TABLE [dbo].[voa_keygen] (
    [table_name]   VARCHAR (64) NOT NULL,
    [last_used_id] INT          NOT NULL,
    CONSTRAINT [pk_voa_keygen] PRIMARY KEY CLUSTERED ([table_name] ASC) WITH (FILLFACTOR = 90)
);

