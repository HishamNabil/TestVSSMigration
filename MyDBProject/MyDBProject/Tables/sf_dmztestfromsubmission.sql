CREATE TABLE [dbo].[sf_dmztestfromsubmission] (
    [id]                            UNIQUEIDENTIFIER NOT NULL,
    [form_text_box]                 NVARCHAR (255)   NULL,
    [form_paragraph_text_box__c004] NVARCHAR (MAX)   NULL,
    CONSTRAINT [pk_sf_dmztestfromsubmission] PRIMARY KEY CLUSTERED ([id] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [ref_sf_dmztstfrmsbmss_9F8AC725] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_form_entry] ([id]) ON DELETE CASCADE
);

