using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace TEST.Models
{
    public class Escala
    {
        [Required]
        public int Millas { get; set; }
        [Required]
        public int Duracion { get; set; }
        [Required]
        public int Fecha { get; set; }


    }
}