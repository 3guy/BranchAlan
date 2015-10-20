CREATE TABLE [dbo].[inventory] (
    [id]    BIGINT          IDENTITY (1, 1) NOT NULL,
    [appid] VARCHAR (500)   NULL,
    [money] DECIMAL (18, 3) CONSTRAINT [DF_inventory_money] DEFAULT ((0)) NULL,
    [state] VARCHAR (500)   CONSTRAINT [DF_inventory_state] DEFAULT ('启用') NULL,
    [time]  DATETIME        CONSTRAINT [DF_inventory_time] DEFAULT (getdate()) NULL,
    CONSTRAINT [PK_inventory] PRIMARY KEY CLUSTERED ([id] ASC)
);

