CREATE TABLE [dbo].[user] (
    [id]   BIGINT        IDENTITY (1, 1) NOT NULL,
    [name] VARCHAR (500) NULL,
    [uid]  VARCHAR (500) NOT NULL,
    [pwd]  VARCHAR (500) NOT NULL,
    [role] VARCHAR (500) NOT NULL,
    [time] DATETIME      CONSTRAINT [DF_user_time] DEFAULT (getdate()) NULL,
    CONSTRAINT [PK_user] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'管理员 下单员
 充值员', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'user', @level2type = N'COLUMN', @level2name = N'role';

