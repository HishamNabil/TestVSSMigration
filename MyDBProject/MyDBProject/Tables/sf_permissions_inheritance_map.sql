CREATE TABLE [dbo].[sf_permissions_inheritance_map] (
    [sf_prmssons_inheritance_map_id] INT              NOT NULL,
    [object_id]                      UNIQUEIDENTIFIER NULL,
    [child_object_id]                UNIQUEIDENTIFIER NULL,
    [child_object_type_name]         VARCHAR (255)    NULL,
    CONSTRAINT [pk_sf_prmssons_inheritance_map] PRIMARY KEY CLUSTERED ([sf_prmssons_inheritance_map_id] ASC) WITH (FILLFACTOR = 90)
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_pinhmap_object_id]
    ON [dbo].[sf_permissions_inheritance_map]([object_id] ASC, [child_object_id] ASC) WITH (FILLFACTOR = 90);

