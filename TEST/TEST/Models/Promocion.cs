using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace TEST.Models
{
    public class Promocion
    {
        [Required]
        public int Costo { get; set; }

        [Required]
        public string Ruta { get; set; }

        [Required]
        public string Fecha { get; set; }

    }
}