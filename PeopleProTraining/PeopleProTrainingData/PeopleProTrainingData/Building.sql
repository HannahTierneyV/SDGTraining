CREATE TABLE [dbo].[Building]
(
	[BuildingID]	INT IDENTITY (1, 1) NOT NULL,
	[Name]			NVARCHAR (50) NULL,
	[OpenTime]		TIME NULL,
	[CloseTime]		TIME NULL,
	PRIMARY KEY CLUSTERED ([BuildingID] ASC)
)
