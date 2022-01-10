using API.DataTransferObjects.MusiX;
using API.DataTransferObjects.Spotify;
using API.Models;
using AutoMapper;
using Microsoft.AspNetCore.Identity;
using System;
using System.Linq;

namespace API.DataAccess
{
    public class ProfileMapper : Profile
    {
        public ProfileMapper()
        {
            ConfigureMappings();
        }

        private void ConfigureMappings()
        {
            CreateMap<IdentityUser, User>()
                .ForMember(dest => dest.Id, opt => opt.MapFrom(src => src.Id))
                .ForMember(dest => dest.Name, opt => opt.MapFrom(src => src.UserName))
                .ForMember(dest => dest.Email, opt => opt.MapFrom(src => src.Email))
                .ForAllOtherMembers(opt => opt.Ignore());

            CreateMap<SpotifyScrobble, Scrobble>()
                .ForMember(dest => dest.TrackId, opt => opt.MapFrom(src => src.Track.Id))
                .ForMember(dest => dest.Track, opt => opt.MapFrom(src => new Track() { 
                    Id = src.Track.Id, 
                    Name = src.Track.Name, 
                    Image = src.Track.Album.Images.Count > 0 ? src.Track.Album.Images[0].Url : null,
                    AlbumId = src.Track.Album.Id,
                    Album = new Album() {
                        Id = src.Track.Album.Id,
                        Name = src.Track.Album.Name,
                        Image = src.Track.Album.Images.Count > 0 ? src.Track.Album.Images[0].Url : null
                    },
                    Artists = src.Track.Artists.Select(artist => new Artist() {
                        Id = artist.Id,
                        Name = artist.Name
                    }).ToList()
                }))
                .ForMember(dest => dest.PlayedAt, opt => opt.MapFrom(src => ((DateTimeOffset)src.PlayedAt).ToUnixTimeMilliseconds()))
                .ForAllOtherMembers(opt => opt.Ignore());

            CreateMap<User, UserProfileModel>()
                .ForMember(dest => dest.Id, opt => opt.MapFrom(src => src.Id))
                .ForMember(dest => dest.Username, opt => opt.MapFrom(src => src.Name))
                .ForMember(dest => dest.JoinDate, opt => opt.MapFrom(src => src.CreationDate))
                .ForMember(dest => dest.Following, opt => opt.MapFrom(src => src.Following.Select(user => user.Id)))
                .ForMember(dest => dest.Followers, opt => opt.MapFrom(src => src.Followers.Select(user => user.Id)))
                .ForMember(dest => dest.Comments, opt => opt.MapFrom(src => src.ProfileComments.Select(comment => new ProfileCommentModel() {
                        Id = comment.CommentUser.Id,
                        Name = comment.CommentUser.Name,
                        Comment = comment.Comment
                    }).ToList()
                ))
                .ForAllOtherMembers(opt => opt.Ignore());
        }
    }
}
