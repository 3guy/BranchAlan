CREATE TABLE [dbo].[platform] (
    [id] BIGINT        IDENTITY (1, 1) NOT NULL,
    [账号] VARCHAR (500) NULL,
    [密码] VARCHAR (500) NULL,
    [平台] VARCHAR (50)  NULL,
    CONSTRAINT [PK_platform] PRIMARY KEY CLUSTERED ([id] ASC)
);

