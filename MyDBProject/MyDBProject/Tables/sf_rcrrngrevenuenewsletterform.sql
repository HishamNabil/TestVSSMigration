CREATE TABLE [dbo].[sf_rcrrngrevenuenewsletterform] (
    [id]                            UNIQUEIDENTIFIER NOT NULL,
    [form_text_box__c006]           NVARCHAR (255)   NULL,
    [form_text_box__c004]           NVARCHAR (255)   NULL,
    [form_text_box__c003]           NVARCHAR (255)   NULL,
    [form_text_box__c001]           NVARCHAR (255)   NULL,
    [form_paragraph_text_box__c005] NVARCHAR (MAX)   NULL,
    CONSTRAINT [pk_sf_rcrrngrvnenewsletterform] PRIMARY KEY CLUSTERED ([id] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [ref_sf_rcrrngrvnnwslt_E7563D52] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_form_entry] ([id]) ON DELETE CASCADE
);

