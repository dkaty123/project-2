pragma solidity ^0.8.0;

contract talkTuah {
    // Mapping from address to a mapping of persona to blobId
    mapping(address => mapping(string => string)) private addressPersonaToBlobId;

    // Function to write a blobId for an address and persona
    function write(address _address, string memory _persona, string memory _blobId) public {
        addressPersonaToBlobId[_address][_persona] = _blobId;
    }

    // Function to read the blobId for an address and persona
    function read(address _address, string memory _persona) public view returns (string memory) {
        return addressPersonaToBlobId[_address][_persona];
    }
}

//proof of concept
//nested instances of mapping -> each eth address can store key value pairs
//maping of a string to a string, persona to blobId

//write stores the blobid for a given address and persona

//read retrieves the blobid for a given address and persona