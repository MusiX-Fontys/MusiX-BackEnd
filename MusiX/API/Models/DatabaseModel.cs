using System;

namespace API.Models
{
    public abstract class DatabaseModel
    {
        public virtual string Id { get; set; } = Guid.NewGuid().ToString();
        public virtual DateTime CreationDate { get; set; } = DateTime.Now;
    }
}
