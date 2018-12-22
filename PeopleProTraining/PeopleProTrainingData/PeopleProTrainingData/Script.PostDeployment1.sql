MERGE INTO Building AS Target
USING (VALUES
		(1, 'Dearborn', '09AM', '06PM'),
		(2, 'Graf', '10AM', '05PM'),
		(3, 'Batcheller', '08AM', '04PM'),
		(4, 'Rogers', '09AM', '06PM')
)
AS Source (BuildingID, Name, OpenTime, CloseTime)
ON Target.BuildingID = Source.BuildingID
WHEN NOT MATCHED BY TARGET THEN
INSERT (Name, OpenTime, CloseTime)
VALUES (Name, OpenTime, CloseTime);

MERGE INTO Department AS Target
USING (VALUES
		(1, 'Marketing', 1000.0, 1),
		(2, 'Purchasing', 1500.0, 2),
		(3, 'Human Resources Management', 2000.0, 3),
		(4, 'Media Management', 500.0, 4)
)
AS Source (DepartmentID, Name, Budget, BuildingID)
ON Target.DepartmentID = Source.DepartmentID
WHEN NOT MATCHED BY TARGET THEN
INSERT (Name, Budget, BuildingID)
VALUES (Name, Budget, BuildingID);

MERGE INTO Employee AS Target
USING (VALUES
		(1, 'Donnie', 'Tibbetts', 'Analyst', 2),
		(2, 'Liza', 'Guzman', 'Media Specialist', 4),
		(3, 'Phil', 'Catlett', 'Accountant', 1),
		(4, 'Judy', 'Simmons', 'Secretary', 3),
		(5, 'Alexandria', 'Walters', 'Manager', 2),
		(6, 'Simone', 'Smith', 'Assistant Manager', 3)
)
AS Source (EmployeeID, FirstName, LastName, Position, DepartmentID)
ON Target.EmployeeID = Source.EmployeeID
WHEN NOT MATCHED BY TARGET THEN
INSERT (FirstName, LastName, Position, DepartmentID)
VALUES (FirstName, LastName, Position, DepartmentID);