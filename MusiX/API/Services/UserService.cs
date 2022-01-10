using API.DataAccess.Repositories;
using API.DataTransferObjects.MusiX;
using API.Models;
using AutoMapper;
using Microsoft.AspNetCore.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace API.Services
{
    public class UserService
    {
        private readonly UserRepository userRepository;
        private readonly MailService mailService;
        private readonly UserManager<IdentityUser> userManager;
        private readonly IMapper mapper;

        public UserService(UserRepository userRepository, MailService mailService, UserManager<IdentityUser> userManager, IMapper mapper)
        {
            this.userRepository = userRepository;
            this.mailService = mailService;
            this.userManager = userManager;
            this.mapper = mapper;
        }

        public async Task<User> GetUserModelById(string id) 
            => await userRepository.GetUserModelById(id);

        public async Task<User> GetUserModelByUsername(string username) 
            => await userRepository.GetUserModelByUsername(username);

        public async Task<User> GetUserModelByEmail(string email) 
            => await userRepository.GetUserModelByEmail(email);

        public async Task AddUserModel(User user) 
            => await userRepository.AddUserModel(user);

        public async Task UpdateUserModel(User user) 
            => await userRepository.UpdateUserModel(user);

        public async Task DeleteUserModel(User user) 
            => await userRepository.DeleteUserModel(user);

        public async Task<List<UserProfileModel>> GetUsers()
            => mapper.Map<List<User>, List<UserProfileModel>>(await userRepository.GetUserModels());

        public async Task<List<UserProfileModel>> GetUsers(string role)
        {
            var identityUsers = await userManager.GetUsersInRoleAsync(role);
            var users = mapper.Map<List<IdentityUser>, List<User>>(identityUsers.ToList());
            return mapper.Map<List<User>, List<UserProfileModel>>(users);
        }

        public async Task<List<UserProfileModel>> GetUsers(string role, string search)
        {
            var identityUsers = await userManager.GetUsersInRoleAsync(role);
            var users = mapper.Map<List<IdentityUser>, List<User>>(identityUsers.Where(m => m.UserName.IndexOf(search, StringComparison.OrdinalIgnoreCase) != -1).ToList());
            return mapper.Map<List<User>, List<UserProfileModel>>(users);
        }

        public async Task UpgradeToAdministrator(string id)
        {
            var user = await userManager.FindByIdAsync(id);
            await userManager.RemoveFromRoleAsync(user, "general");
            await userManager.AddToRoleAsync(user, "administrator");
            mailService.SendPromotionMail(mapper.Map<IdentityUser, User>(user), "administrator");
        }

        public async Task DowngradeToGeneral(string id)
        {
            var user = await userManager.FindByIdAsync(id);
            await userManager.RemoveFromRoleAsync(user, "administrator");
            await userManager.AddToRoleAsync(user, "general");
            mailService.SendDemotionMail(mapper.Map<IdentityUser, User>(user), "general");
        }
    }
}
