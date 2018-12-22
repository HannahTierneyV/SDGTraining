using System;
using System.ComponentModel.DataAnnotations;

namespace PeopleProTraining.Dal.Models
{
    [MetadataType(typeof(EmployeeMetaData))]
    public partial class Employee
    {
    }

    [MetadataType(typeof(DepartmentMetadata))]
    public partial class Department
    {
    }

    [MetadataType(typeof(BuildingMetadata))]
    public partial class Building
    {
    }
}
