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

            HasManyToMany<User>(i => i.Following)
                .Cascade.Merge()
                .Not.LazyLoad()
                .Table("Follow")
                .ParentKeyColumn("FollowingUserId")
                .ChildKeyColumn("FollowedUserId");

            HasManyToMany<User>(i => i.Followers)
                .Cascade.Merge()
                .Not.LazyLoad()
                .Inverse()
                .Table("Follow")
                .ParentKeyColumn("FollowedUserId")
                .ChildKeyColumn("FollowingUserId");

            HasMany<ProfileComment>(i => i.ProfileComments)
                .Inverse()
                .KeyColumns.Add("ProfileUserId", mapping => mapping.Name("ProfileUserId"));
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

    public class ProfileCommentModelMapper : ClassMap<ProfileComment>
    {
        public ProfileCommentModelMapper()
        {
            Table("comment");
            Id(i => i.Id);
            Map(i => i.CreationDate);
            Map(i => i.Comment);
            Map(i => i.ProfileUserId);
            Map(i => i.CommentUserId);

            References(i => i.ProfileUser)
                .Cascade.SaveUpdate()
                .Not.LazyLoad()
                .Class<User>()
                .Columns("ProfileUserId")
                .ReadOnly();

            References(i => i.CommentUser)
                .Cascade.SaveUpdate()
                .Not.LazyLoad()
                .Class<User>()
                .Columns("CommentUserId")
                .ReadOnly();
        }
    }
}
