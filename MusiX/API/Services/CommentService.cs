using API.DataAccess.Repositories;
using API.DataTransferObjects.MusiX;
using API.Models;
using System.Threading.Tasks;

namespace API.Services
{
    public class CommentService
    {
        private readonly CommentRepository commentRepository;
        private readonly MailService mailService;

        public CommentService(CommentRepository commentRepository, MailService mailService)
        {
            this.commentRepository = commentRepository;
            this.mailService = mailService;
        }

        public async Task AddComment(User profileUser, User commentUser, CommentModel commentModel)
        {
            var comment = new ProfileComment() 
            { 
                Comment = commentModel.Comment,
                ProfileUserId = profileUser.Id,
                CommentUserId = commentUser.Id,
            };

            await commentRepository.AddComment(comment);
            mailService.SendCommentMail(profileUser, commentUser.Name);
            foreach(var follower in commentUser.Followers)
            {
                mailService.SendFollowersCommentMail(follower, commentUser.Name, profileUser.Name);
            }
        }
    }
}
