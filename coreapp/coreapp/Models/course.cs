using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace coreapp.Models
{
    public class course
    {
        [Key]
        public int stid { get; set; }
        [Required]
        public int stcre { get; set; }
        
    }
}
