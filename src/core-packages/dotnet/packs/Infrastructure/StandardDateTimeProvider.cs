using System;
using VotingPocker.Abstractions;

namespace VotingPocker.Infrastructure
{
    public sealed class StandardDateTimeProvider : IDateTimeProvider
    {
        public DateTime CurrentUtcDateTime => DateTime.UtcNow;
    }
}