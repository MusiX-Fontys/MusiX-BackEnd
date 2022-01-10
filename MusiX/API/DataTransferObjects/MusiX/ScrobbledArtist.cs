using API.Models;

namespace API.DataTransferObjects.MusiX
{
    public class ScrobbledArtist
    {
        public Artist Artist { get; set; }
        public int ScrobbleAmount { get; set; }
    }
}
