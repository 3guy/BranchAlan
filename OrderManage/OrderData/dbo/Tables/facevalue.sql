CREATE TABLE [dbo].[facevalue] (
    [id]       BIGINT          IDENTITY (1, 1) NOT NULL,
    [appid]    BIGINT          NOT NULL,
    [gamename] VARCHAR (500)   NULL,
    [price]    VARCHAR (500)   CONSTRAINT [DF_facevalue_price] DEFAULT ((0)) NOT NULL,
    [value]    DECIMAL (18, 3) CONSTRAINT [DF_facevalue_value] DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_facevalue] PRIMARY KEY CLUSTERED ([id] ASC)
);

