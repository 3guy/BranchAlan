CREATE TABLE [dbo].[processOrders] (
    [id]      BIGINT          IDENTITY (1, 1) NOT NULL,
    [userid]  BIGINT          NULL,
    [orderid] BIGINT          NULL,
    [pdid]    BIGINT          NULL,
    [money]   DECIMAL (18, 3) NULL,
    [price]   DECIMAL (18, 3) NULL,
    [note]    TEXT            NULL,
    [time]    DATETIME        CONSTRAINT [DF_processOrders_处理时间] DEFAULT (getdate()) NULL,
    CONSTRAINT [PK_processOrders] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_processOrders]
    ON [dbo].[processOrders]([orderid] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'扣款前余额', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'processOrders', @level2type = N'COLUMN', @level2name = N'money';

