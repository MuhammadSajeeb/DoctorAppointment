using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DA.Core.Models
{
    public class Doctors
    {
        public int Id { get; set; }
        public int DoctorId { get; set; }
        public string Name { get; set; }
        public string Email { get; set; }
        public string Details { get; set; }
        public int DepartmentId { get; set; }
        public int HolidayId { get; set; }
        public decimal Fees { get; set; }
        public string StartTime { get; set; }
        public string EndTime { get; set; }
        public string Images { get; set; }
        public string Status { get; set; }

    }
}
