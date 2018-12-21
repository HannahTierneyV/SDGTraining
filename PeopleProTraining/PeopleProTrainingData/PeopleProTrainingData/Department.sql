CREATE TABLE [dbo].[Department]
(
	[DepartmentID]		INT	IDENTITY (1, 1) NOT NULL,
	[Name]				NVARCHAR (50) NULL,
	[Budget]			DECIMAL	NULL,
	[BuildingID]		INT NOT NULL,
	PRIMARY KEY CLUSTERED ([DepartmentID] ASC),
	CONSTRAINT [FK_dbo.Department_dbo.Building_BuildingID] FOREIGN KEY ([BuildingID])
		REFERENCES [dbo].[Building] ([BuildingID]) ON DELETE CASCADE
)
