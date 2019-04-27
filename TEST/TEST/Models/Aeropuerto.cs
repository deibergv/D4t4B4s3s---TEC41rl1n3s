using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace TEST.Models
{
    public class Aeropuerto
    {
        [Required,Key]
        public string Nombre { get; set; }


    }
}