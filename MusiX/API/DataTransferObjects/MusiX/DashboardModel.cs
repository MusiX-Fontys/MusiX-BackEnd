namespace API.DataTransferObjects.MusiX
{
    public class DashboardModel
    {
        public string From { get; set; }
        public string To { get; set; }
        public long NewUsers { get; set; }
        public long ActiveUsers { get; set; }
        public long Scrobbles { get; set; }
        public long Tracks { get; set; }
        public long Albums { get; set; }
        public long Artists { get; set; }
    }
}
