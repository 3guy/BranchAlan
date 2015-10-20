CREATE TABLE [dbo].[commission] (
    [id]     BIGINT          IDENTITY (1, 1) NOT NULL,
    [gameid] BIGINT          NOT NULL,
    [price]  DECIMAL (18, 3) NULL,
    [type]   VARCHAR (500)   CONSTRAINT [DF_commission_type] DEFAULT ('其它') NULL,
    [time]   DATETIME        CONSTRAINT [DF_commission_time] DEFAULT (getdate()) NULL
);

