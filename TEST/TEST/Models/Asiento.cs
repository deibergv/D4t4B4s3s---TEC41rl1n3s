using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace TEST.Models
{
    public class Asiento
    {
        [Required]
        public int Numero { get; set; }

        [Required]
        public string Categoria { get; set; }


    }
}