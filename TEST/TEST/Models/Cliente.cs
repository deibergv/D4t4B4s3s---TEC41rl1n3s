using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace TEST.Models
{
    public class Cliente
    {

        public string NombreComp { get; set; }
        public int Telefono { get; set; }

        [Key]
        public string Correo { get; set; }

        public int Estudiante { get; set; }
        public string InfoU { get; set; }
        public int Carne { get; set; }
        public int millasEstudiante { get; set; }
        
    }
}

