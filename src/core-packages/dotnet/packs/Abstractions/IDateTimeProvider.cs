using System;

namespace VotingPocker.Abstractions
{
    public interface IDateTimeProvider
    {
        DateTime CurrentUtcDateTime { get; }
    }
}