CREATE TABLE [dbo].[game] (
    [id]       BIGINT        IDENTITY (1, 1) NOT NULL,
    [gamename] VARCHAR (500) NULL,
    [time]     DATETIME      CONSTRAINT [DF_game_time] DEFAULT (getdate()) NULL
);

