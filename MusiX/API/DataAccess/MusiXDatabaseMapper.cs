using API.Models;
using FluentNHibernate.Mapping;

namespace API.DataAccess
{
    public class UserModelMapper : ClassMap<User>
    {
        public UserModelMapper()
        {
            Table("user");
            Id(i => i.Id);
            Map(i => i.CreationDate);
            Map(i => i.Name);
            Map(i => i.Email);
            Map(i => i.HasSetupSpotifyConnection);
            Map(i => i.SpotifyConnectionSetAt);

            HasMany<Scrobble>(i => i.Scrobbles)
                .Inverse()
                .KeyColumns.Add("UserId", mapping => mapping.Name("UserId"));
        }
    }

    public class ScrobbleModelMapper : ClassMap<Scrobble>
    {
        public ScrobbleModelMapper()
        {
            Table("scrobble");
            Id(i => i.Id);
            Map(i => i.CreationDate);
            Map(i => i.PlayedAt);
            Map(i => i.TrackId);
            Map(i => i.UserId);

            References(i => i.Track)
                .Cascade.SaveUpdate()
                .Not.LazyLoad()
                .Class<Track>()
                .Columns("TrackId")
                .ReadOnly();

            References(i => i.User)
                .Class<User>()
                .Columns("UserId")
                .ReadOnly();
        }
    }

    public class TrackModelMapper : ClassMap<Track>
    {
        public TrackModelMapper()
        {
            Table("track");
            Id(i => i.Id);
            Map(i => i.CreationDate);
            Map(i => i.Name);
            Map(i => i.Image);
            Map(i => i.AlbumId);

            References(i => i.Album)
                .Cascade.SaveUpdate()
                .Not.LazyLoad()
                .Class<Album>()
                .Columns("AlbumId")
                .ReadOnly();

            HasManyToMany<Artist>(i => i.Artists)
                .Cascade.SaveUpdate()
                .Not.LazyLoad()
                .Table("TrackArtist")
                .ParentKeyColumn("TrackId")
                .ChildKeyColumn("ArtistId");
        }
    }

    public class AlbumModelMapper : ClassMap<Album>
    {
        public AlbumModelMapper()
        {
            Table("album");
            Id(i => i.Id);
            Map(i => i.CreationDate);
            Map(i => i.Name);
            Map(i => i.Image);
        }
    }

    public class ArtistsModelMapper : ClassMap<Artist>
    {
        public ArtistsModelMapper()
        {
            Table("artist");
            Id(i => i.Id);
            Map(i => i.CreationDate);
            Map(i => i.Name);
            Map(i => i.Image);
        }
    }
}
