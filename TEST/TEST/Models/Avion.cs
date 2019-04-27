using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace TEST.Models
{
    public class Avion
    {
        [Required]
        public string Tipo { get; set; }

        [Required, Key]
        public string ID { get; set; }

        [Required]
        public int AsientosDisponibles { get; set; }

        [Required]
        public int PrimClase { get; set; }

        [Required]
        public int EconClase { get; set; }



    }
}