using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace TEST.Models
{
    public class Maleta
    {
        [Key, Required]
        public string CodigoM { get; set; }

        [Required]
        public int Peso { get; set; }

        [Required]
        public int IDPropietario { get; set; }

        [Required]
        public string InfoU { get; set; }

      

    }
}