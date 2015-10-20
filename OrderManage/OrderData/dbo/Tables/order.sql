CREATE TABLE [dbo].[order] (
    [id]   BIGINT          IDENTITY (1, 1) NOT NULL,
    [订单号]  VARCHAR (500)   NULL,
    [订单详情] NTEXT           NULL,
    [状态]   VARCHAR (50)    CONSTRAINT [DF_order_状态] DEFAULT ('等待充值') NULL,
    [提成]   DECIMAL (18, 3) CONSTRAINT [DF_order_提成] DEFAULT ((0.5)) NULL,
    [创建人]  BIGINT          NOT NULL,
    [创建时间] DATETIME        CONSTRAINT [DF_order_time] DEFAULT (getdate()) NULL,
    [备注]   TEXT            NULL,
    CONSTRAINT [PK_order] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_order]
    ON [dbo].[order]([订单号] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'order';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'等待充值 正在充值 充值成功 取消充值', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'order', @level2type = N'COLUMN', @level2name = N'状态';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'订单导入时间', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'order', @level2type = N'COLUMN', @level2name = N'创建时间';

