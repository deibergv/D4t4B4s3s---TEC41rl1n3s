using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace TEST.Models
{
    public class Reservacion
    {
        [Key, Required]
        public int ID { get; set; }

        [Required]
        public int CantidadTiquetes { get; set; }

        [Required]
        public string IDPropietario { get; set; }


    }
}