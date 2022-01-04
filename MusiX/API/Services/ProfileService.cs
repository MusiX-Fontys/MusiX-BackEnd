using API.DataAccess.Repositories;
using API.DataTransferObjects.MusiX;
using API.Models;
using AutoMapper;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace API.Services
{
    public class ProfileService
    {
        private readonly UserRepository userRepository;
        private readonly IMapper mapper;

        public ProfileService(UserRepository userRepository, IMapper mapper)
        {
            this.userRepository = userRepository;
            this.mapper = mapper;
        }

        public async Task<ProfileSearchModel> GetProfileById(string id)
            => mapper.Map<User, ProfileSearchModel>(await userRepository.GetUserModelById(id));

        public async Task<List<ProfileSearchModel>> GetProfilesBySearchQuery(string search)
            => mapper.Map<List<User>, List<ProfileSearchModel>>(await userRepository.GetUserModelsBySearch(search));
    }
}
