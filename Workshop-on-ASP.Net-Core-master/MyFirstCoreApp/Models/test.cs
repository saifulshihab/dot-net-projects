using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace MyFirstCoreApp.Models
{
    public class test
    {
        [Key]
        public int hid { get; set; }
        [Required]
        public int StudentId { get; set; }
        public Student Student { get; set; }

    }
}
