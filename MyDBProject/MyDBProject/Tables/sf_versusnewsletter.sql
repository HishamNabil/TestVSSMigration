CREATE TABLE [dbo].[sf_versusnewsletter] (
    [id]                            UNIQUEIDENTIFIER NOT NULL,
    [form_text_box__c005]           NVARCHAR (255)   NULL,
    [form_text_box__c004]           NVARCHAR (255)   NULL,
    [form_text_box__c003]           NVARCHAR (255)   NULL,
    [form_text_box__c001]           NVARCHAR (255)   NULL,
    [form_paragraph_text_box__c006] NVARCHAR (MAX)   NULL,
    CONSTRAINT [pk_sf_versusnewsletter] PRIMARY KEY CLUSTERED ([id] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [ref_sf_vrssnwslttr_sf_ECFB22C2] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_form_entry] ([id]) ON DELETE CASCADE
);

