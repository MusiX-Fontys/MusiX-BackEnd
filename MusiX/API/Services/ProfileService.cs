using API.DataAccess.Repositories;
using API.DataTransferObjects.MusiX;
using API.Models;
using AutoMapper;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace API.Services
{
    public class ProfileService
    {
        private readonly UserRepository userRepository;
        private readonly CommentRepository commentRepository;
        private readonly MailService mailService;
        private readonly IMapper mapper;

        public ProfileService(UserRepository userRepository, CommentRepository commentRepository, MailService mailService, IMapper mapper)
        {
            this.userRepository = userRepository;
            this.commentRepository = commentRepository;
            this.mailService = mailService;
            this.mapper = mapper;
        }

        public async Task<UserProfileModel> GetProfileById(string id)
        {
            var user = await userRepository.GetUserModelById(id);
            user.ProfileComments = await commentRepository.GetProfileComments(id);
            return mapper.Map<User, UserProfileModel>(user);
        }

        public async Task<List<UserProfileModel>> GetProfilesBySearchQuery(string search)
        {
            var users = await userRepository.GetUserModelsBySearch(search);
            foreach(var user in users)
            {
                user.ProfileComments = await commentRepository.GetProfileComments(user.Id);
            }
            return mapper.Map<List<User>, List<UserProfileModel>>(users);
        }

        public async Task FollowUser(User followingUser, User followedUser)
        {
            followingUser.Following.Add(followedUser);
            await userRepository.UpdateUserModel(followingUser);
            mailService.SendUserFollowingMail(followedUser, followingUser.Name);
        }

        public async Task UnfollowUser(User followingUser, User followedUser)
        {
            followingUser.Following.Remove(followingUser.Following.FirstOrDefault(i => i.Name == followedUser.Name));
            await userRepository.UpdateUserModel(followingUser);
        }
    }
}
