using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace TEST.Models
{
    public class Pasajero
    {
        [Required, Key]
        public int Pasaporte { get; set; }

        [Required]
        public string Nombre { get; set; }

        [Required]
        public string Estado { get; set; }

        [Required]
        public int Reservacion { get; set; }

        [Required]
        public int Tiquete { get; set; }

        [Required]
        public int CantidadMaletas { get; set; }

        [Required]
        public int NTarjeta { get; set; }


    }
}