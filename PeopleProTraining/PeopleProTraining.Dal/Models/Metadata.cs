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
    }

    public class DepartmentMetadata
    {
        [StringLength(50)]
        public string Name;
    }

    public class BuildingMetadata
    {
        [StringLength(50)]
        public string Name;

        [Display(Name = "Opens")]
        [DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:hh\\:mm tt}")]
        [RegularExpression(@"((([0-1][0-9])|(2[0-3]))(:[0-5][0-9])?)", ErrorMessage = "Time must be between 00:00 to 11:59 AM/PM")]
        public Nullable<System.TimeSpan> OpenTime;

        [Display(Name = "Closes")]
        [DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:hh\\:mm tt}")]
        [RegularExpression(@"((([0-1][0-9])|(2[0-3]))(:[0-5][0-9])?)", ErrorMessage = "Time must be between 00:00 to 11:59 AM/PM")]
        public Nullable<System.TimeSpan> CloseTime;
    }
}
