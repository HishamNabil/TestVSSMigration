CREATE TABLE [dbo].[sf_contactus] (
    [id]                            UNIQUEIDENTIFIER NOT NULL,
    [form_text_box__c009]           NVARCHAR (255)   NULL,
    [form_text_box__c008]           NVARCHAR (255)   NULL,
    [form_text_box__c007]           NVARCHAR (255)   NULL,
    [form_text_box__c005]           NVARCHAR (255)   NULL,
    [form_paragraph_text_box__c010] NVARCHAR (MAX)   NULL,
    [form_text_box__c012]           NVARCHAR (255)   NULL,
    CONSTRAINT [pk_sf_contactus] PRIMARY KEY CLUSTERED ([id] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [ref_sf_contactus_sf_form_entry] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_form_entry] ([id]) ON DELETE CASCADE
);

