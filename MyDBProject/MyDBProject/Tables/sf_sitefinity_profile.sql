﻿CREATE TABLE [dbo].[sf_sitefinity_profile] (
    [id]                             UNIQUEIDENTIFIER NOT NULL,
    [preferred_language]             NVARCHAR (255)   NULL,
    [last_name]                      NVARCHAR (255)   NULL,
    [first_name]                     NVARCHAR (255)   NULL,
    [about]                          NVARCHAR (MAX)   NULL,
    [author_banner_link3]            NVARCHAR (255)   NULL,
    [author_banner_link8]            NVARCHAR (255)   NULL,
    [author_banner_link4]            NVARCHAR (255)   NULL,
    [author_banner_link7]            NVARCHAR (255)   NULL,
    [author_banner_link1]            NVARCHAR (255)   NULL,
    [author_banner_link10]           NVARCHAR (255)   NULL,
    [author_title_brief]             NVARCHAR (255)   NULL,
    [author_linked_in_profile_url]   NVARCHAR (255)   NULL,
    [author_banner_link2]            NVARCHAR (255)   NULL,
    [author_banner_link9]            NVARCHAR (255)   NULL,
    [display_profile_photo]          BIT              NULL,
    [author_title]                   NVARCHAR (255)   NULL,
    [author_banner_link6]            NVARCHAR (255)   NULL,
    [author_banner_link5]            NVARCHAR (255)   NULL,
    [custome1]                       NVARCHAR (255)   NULL,
    [disclosure]                     NVARCHAR (MAX)   NULL,
    [display_author_podcast_section] BIT              NULL,
    [author_podcasts_link]           NVARCHAR (255)   NULL,
    [author_podcasts_link_text]      NVARCHAR (255)   NULL,
    [author_podcasts_link2]          NVARCHAR (255)   NULL,
    [author_podcasts_link_text2]     NVARCHAR (255)   NULL,
    [author_podcasts_link3]          NVARCHAR (255)   NULL,
    [author_podcasts_link_text3]     NVARCHAR (255)   NULL,
    [nickname]                       NVARCHAR (64)    NULL,
    CONSTRAINT [pk_sf_sitefinity_profile] PRIMARY KEY CLUSTERED ([id] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [ref_sf_stfnty_prfl_sf_125BEED3] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_user_profile] ([id]) ON DELETE CASCADE
);
