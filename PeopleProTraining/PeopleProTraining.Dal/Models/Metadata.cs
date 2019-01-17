using System;
using System.ComponentModel.DataAnnotations;

namespace PeopleProTraining.Dal.Models
{
    public class EmployeeMetaData
    {
        [StringLength(50)]
        [Display(Name = "First Name")]
        public string FirstName;

        [StringLength(50)]
        [Display(Name = "Last Name")]
        public string LastName;

        [StringLength(100)]
        public string Position;

        [Display(Name = "Department")]
        public int DepartmentID;
    }

    public class DepartmentMetadata
    {
        [StringLength(50)]
        [Display(Name="Department")]
        public string Name;

        [Display(Name = "Building")]
        public int BuildingID;
    }

    public class BuildingMetadata
    {
        [StringLength(50)]
        [Display(Name="Building")]
        public string Name;

        [Display(Name = "Opens")]
        public Nullable<System.TimeSpan> OpenTime;

        [Display(Name = "Closes")]
        public Nullable<System.TimeSpan> CloseTime;
    }
}
