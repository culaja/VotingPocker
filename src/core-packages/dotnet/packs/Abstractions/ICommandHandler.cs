using System.Threading.Tasks;

namespace VotingPocker.Abstractions
{
    public interface ICommandHandler<T>
    {
        Task Handle(T c);
    }
}