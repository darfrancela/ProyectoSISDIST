﻿namespace VotacionUCAWebApplication.Models
{
    public class Votaciones
    {
        public int Id { get; set; }
        public string Descripcion { get; set; }
        public string CodGrupo { get; set; }
        public bool Abierto { get; set; }
    }
}