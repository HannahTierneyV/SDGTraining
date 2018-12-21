CREATE TABLE [dbo].[Employee]
(
	[EmployeeID]	INT				IDENTITY (1, 1) NOT NULL,
	[FirstName]		NVARCHAR (50)	NULL,
	[LastName]		NVARCHAR (50)	NULL,
	[DepartmentID]	INT NOT NULL,
	PRIMARY KEY CLUSTERED ([EmployeeID] ASC),
	CONSTRAINT [FK_dbo.Employee_dbo.Department_DepartmentID] FOREIGN KEY ([DepartmentID])
		REFERENCES [dbo].[Department] ([DepartmentID]) ON DELETE CASCADE
)
