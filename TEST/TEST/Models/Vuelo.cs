using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace TEST.Models
{
    public class Vuelo
    {
        [Required]
        public string Pasajeros { get; set; }

        [Required]
        public int CantMaletas { get; set; }

        [Required]
        public int Ruta { get; set; }

        [Required]
        public int Fecha { get; set; }

        [Required]
        public string Destino { get; set; }

        [Required]
        public int PesoTotal { get; set; }

    }
}