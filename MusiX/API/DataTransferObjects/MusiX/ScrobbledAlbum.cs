using API.Models;

namespace API.DataTransferObjects.MusiX
{
    public class ScrobbledAlbum
    {
        public Album Album { get; set; }
        public int ScrobbleAmount { get; set; }
    }
}
