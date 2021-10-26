using System;

namespace API.Models
{
    public abstract class DatabaseModel
    {
        public virtual int Id { get; set; }
        public virtual DateTime CreationDate { get; set; }
    }
}
