namespace VotingPocker.Abstractions
{
    public interface ICommand
    {
        CommandMetadata Metadata { get; }
    }
}