CREATE TABLE [dbo].[sf_media_thumbnails] (
    [content_id]       UNIQUEIDENTIFIER NULL,
    [mime_type]        VARCHAR (255)    NULL,
    [dta]              IMAGE            NULL,
    [voa_version]      SMALLINT         NOT NULL,
    [id]               UNIQUEIDENTIFIER NOT NULL,
    [nme]              NVARCHAR (10)    NULL,
    [width]            INT              NULL,
    [typ]              INT              NOT NULL,
    [total_size]       BIGINT           NOT NULL,
    [height]           INT              NULL,
    [file_id]          UNIQUEIDENTIFIER NULL,
    [uploaded]         TINYINT          NOT NULL,
    [number_of_chunks] INT              NOT NULL,
    [chunk_size]       INT              NOT NULL,
    [culture]          VARCHAR (255)    NULL,
    CONSTRAINT [pk_sf_media_thumbnails] PRIMARY KEY CLUSTERED ([id] ASC) WITH (FILLFACTOR = 90)
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_md_thmbnails_content_id]
    ON [dbo].[sf_media_thumbnails]([content_id] ASC) WITH (FILLFACTOR = 90);

