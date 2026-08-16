contract Voting {

    // ENUM
    enum Status {
        NotStarted,
        Active,
        Finished
    }

    // STRUCT
    struct Candidate {
        string name;
        uint voteCount;
    }

    // STATE VARIABLE
    Status public electionStatus;

    // MAPPING
    mapping(address => bool) public hasVoted;

    // STATE VARIABLE
    Candidate[] public candidates;
}
