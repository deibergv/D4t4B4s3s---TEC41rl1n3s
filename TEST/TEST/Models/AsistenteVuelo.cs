using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace TEST.Models
{
    public class AsistenteVuelo
    {
        [Required, Key]
        public string ID { get; set; }
        
        [Required]
        public string Nombre { get; set; }

        [Required]
        public string Correo { get; set; }

        

    }
}