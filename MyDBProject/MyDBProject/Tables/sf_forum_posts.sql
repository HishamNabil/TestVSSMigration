CREATE TABLE [dbo].[sf_forum_posts] (
    [title]            NVARCHAR (255)   NULL,
    [thread_id]        UNIQUEIDENTIFIER NULL,
    [reply_to_post_id] UNIQUEIDENTIFIER NULL,
    [ownr]             UNIQUEIDENTIFIER NULL,
    [last_modified_by] UNIQUEIDENTIFIER NULL,
    [last_modified]    DATETIME         NOT NULL,
    [is_published]     TINYINT          NOT NULL,
    [is_marked_spam]   TINYINT          NOT NULL,
    [is_featured]      TINYINT          NOT NULL,
    [id]               UNIQUEIDENTIFIER NOT NULL,
    [date_created]     DATETIME         NOT NULL,
    [content]          NVARCHAR (MAX)   NULL,
    [app_name]         VARCHAR (255)    NULL,
    CONSTRAINT [pk_sf_forum_posts] PRIMARY KEY CLUSTERED ([id] ASC) WITH (FILLFACTOR = 90)
);


GO
CREATE NONCLUSTERED INDEX [idx_thread_posts]
    ON [dbo].[sf_forum_posts]([thread_id] ASC, [date_created] ASC) WITH (FILLFACTOR = 90);

