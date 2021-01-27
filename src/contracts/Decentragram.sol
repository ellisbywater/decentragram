pragma solidity ^0.5.0;

contract Decentragram {
  // Code goes here...
  string public name = "Decentragram";
  uint public imageCount = 0;
  // Store Images
  mapping(uint => Image) public images;

  struct Image {
    uint id;
    string hash;
    string description;
    uint tipAmount;
    address payable author;
  }  

  event ImageCreated (
    uint id,
    string hash,
    string description,
    uint tipAmount,
    address payable author
  );

  // Create Images
  function uploadImage(string memory _imageHash, string memory _description) public {
    imageCount = imageCount++;
    images[imageCount] = Image(imageCount, _imageHash, _description, 0, msg.sender);

    //Trigger an event
    emit ImageCreated(imageCount, _imageHash, _description, 0, msg.sender);
  }

  // Tip Images


}