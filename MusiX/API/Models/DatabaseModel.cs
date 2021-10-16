using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace API.Models
{
    public abstract class DatabaseModel
    {
        public virtual int Id { get; set; }
        public virtual DateTime CreationDate { get; set; }
    }
}
