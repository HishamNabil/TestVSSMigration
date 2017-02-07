CREATE TABLE [dbo].[sf_meta_attribute] (
    [id]          UNIQUEIDENTIFIER NOT NULL,
    [nme]         VARCHAR (255)    NULL,
    [val]         NVARCHAR (MAX)   NULL,
    [voa_class]   INT              NOT NULL,
    [voa_version] SMALLINT         NOT NULL,
    [id2]         UNIQUEIDENTIFIER NULL,
    [id3]         UNIQUEIDENTIFIER NULL,
    CONSTRAINT [pk_sf_meta_attribute] PRIMARY KEY CLUSTERED ([id] ASC) WITH (FILLFACTOR = 90)
);

