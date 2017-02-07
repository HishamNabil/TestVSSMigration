CREATE TABLE [dbo].[sf_scheduled_tasks] (
    [type_of_schedule]   NVARCHAR (255)   NULL,
    [title]              NVARCHAR (255)   NULL,
    [task_name]          NVARCHAR (255)   NOT NULL,
    [task_data]          NVARCHAR (MAX)   NULL,
    [schedule_data]      NVARCHAR (MAX)   NULL,
    [last_modified]      DATETIME         NULL,
    [last_executed_time] DATETIME         NULL,
    [ky]                 NVARCHAR (255)   NULL,
    [is_running]         TINYINT          NOT NULL,
    [is_recurring]       TINYINT          NOT NULL,
    [instance_name]      VARCHAR (255)    NULL,
    [id]                 UNIQUEIDENTIFIER NOT NULL,
    [execute_time]       DATETIME         NOT NULL,
    [enabled]            TINYINT          NOT NULL,
    [description]        NVARCHAR (255)   NULL,
    [application_name]   VARCHAR (255)    NOT NULL,
    [voa_version]        SMALLINT         NOT NULL,
    [language]           VARCHAR (255)    NULL,
    [status_message]     NVARCHAR (MAX)   NULL,
    [status]             INT              NOT NULL,
    [progress]           INT              NOT NULL,
    [subscr_lst_id]      UNIQUEIDENTIFIER NULL,
    CONSTRAINT [pk_sf_scheduled_tasks] PRIMARY KEY CLUSTERED ([id] ASC) WITH (FILLFACTOR = 90)
);


GO
CREATE NONCLUSTERED INDEX [appName]
    ON [dbo].[sf_scheduled_tasks]([application_name] ASC) WITH (FILLFACTOR = 90);


GO
CREATE NONCLUSTERED INDEX [excecutionDate]
    ON [dbo].[sf_scheduled_tasks]([execute_time] ASC) WITH (FILLFACTOR = 90);


GO
CREATE NONCLUSTERED INDEX [key]
    ON [dbo].[sf_scheduled_tasks]([ky] ASC) WITH (FILLFACTOR = 90);

