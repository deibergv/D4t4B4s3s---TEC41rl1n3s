using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace TEST.Models
{
    public class Universidad
    {
        [Key ,Required]
        public string NombreComp { get; set; }

        [Required]
        public int MillaEstudiante { get; set; }

        [Required]
        public int Carne { get; set; }




    }
}