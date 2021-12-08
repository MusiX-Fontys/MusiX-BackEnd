using API.DataAccess.Repositories;
using API.Models;
using System.Threading.Tasks;

namespace API.Services
{
    public class UserService
    {
        private readonly UserRepository userRepository;

        public UserService(UserRepository userRepository)
        {
            this.userRepository = userRepository;
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
    }
}
