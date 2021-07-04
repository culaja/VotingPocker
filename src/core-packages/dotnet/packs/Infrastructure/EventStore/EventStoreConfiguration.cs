using System.Collections.Generic;
using EventStore.Client;
using VotingPocker.Abstractions;

namespace VotingPocker.Infrastructure.EventStore
{
    public sealed class EventStoreConfiguration : ValueObject
    {
        public string ConnectionString { get; }
        public UserCredentials UserCredentials { get; }

        public EventStoreConfiguration(
            string connectionString,
            UserCredentials userCredentials)
        {
            ConnectionString = connectionString;
            UserCredentials = userCredentials;
        }
        
        protected override IEnumerable<object> GetEqualityComponents()
        {
            yield return ConnectionString;
            yield return UserCredentials;
        }

        public override string ToString()
        {
            return $"{nameof(ConnectionString)}: {ConnectionString}, {nameof(UserCredentials)}: {UserCredentials.Username}";
        }
    }
}