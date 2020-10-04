using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace CSMS.Models
{
    public class Officer
    {
        [Key]
        public int officer_id { get; set; }
        [Required]
        [Column (TypeName="nvarchar(20)")]
        public string officer_name { get; set; }
        [Required]
        [Column(TypeName = "nvarchar(20)")]
        public string officer_email { get; set; }
        [Required]
        [Column(TypeName = "nvarchar(20)")]
        public string officer_emp_id { get; set; }
        [Required]
        [Column(TypeName = "binary(64)")]
        public string officer_password { get; set; }
        [Required]
        [Column(TypeName = "nvarchar(20)")]
        public string officer_workplace { get; set; }
    }
}
