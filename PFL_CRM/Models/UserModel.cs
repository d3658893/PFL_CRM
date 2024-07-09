using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PFL_CRM.Models
{
    public class UserModel
    {
        public int Id { get; set; }
        public int RoleId { get; set; }
        public string Username { get; set; }
        public int CountryId { get; set; }
        public string Name { get; set; }
        public string Designation { get; set; }
        public string Email { get; set; }
        public string City { get; set; }
        public string OfficeLocation { get; set; }
        public string PhoneNo { get; set; }
        // Other fields related to audit and status
        public int CreatedBy { get; set; }
        public DateTime CreatedOn { get; set; }
        public int? UpdatedBy { get; set; }
        public DateTime? UpdatedOn { get; set; }
        public bool IsActive { get; set; }
        public bool Deleted { get; set; }
    }
}