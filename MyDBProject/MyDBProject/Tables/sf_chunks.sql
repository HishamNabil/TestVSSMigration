﻿CREATE TABLE [dbo].[sf_chunks] (
    [sze]         INT              NOT NULL,
    [ordinal]     INT              NOT NULL,
    [file_id]     UNIQUEIDENTIFIER NOT NULL,
    [dta]         IMAGE            NULL,
    [voa_version] SMALLINT         NOT NULL,
    CONSTRAINT [pk_sf_chunks] PRIMARY KEY CLUSTERED ([ordinal] ASC, [file_id] ASC) WITH (FILLFACTOR = 90)
);

