pragma solidity >=0.4.22 <0.8.0;

contract Election {
    //Model a Candidate
    struct Candidate {
        uint id;
        string name;
        uint voteCount;
    }
    //store candidates
    mapping(uint => Candidate) public candidates;
    uint public candidatesCount;
    //fetch candidate
    
    //Constructor
    constructor () public {
        addCandidate("candidate 1");
        addCandidate("candidate 2");
    }

    function addCandidate(string memory _name) private{
        candidatesCount++;
        candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
    }

}