using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using TEST.Models;
using TEST.Repositories;

namespace TEST.Processors
{
    public class ClienteProcessor
    {
        public static bool ProcessCliente(Cliente cliente)
        {
            //processing, formating, validating

            return ClienteRepository.addClienteToDB(cliente);

        }

    }
}