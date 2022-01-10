using API.Models;

namespace API.DataTransferObjects.MusiX
{
    public class ScrobbledTrack
    {
        public Track Track { get; set; }
        public int ScrobbleAmount { get; set; }
    }
}
