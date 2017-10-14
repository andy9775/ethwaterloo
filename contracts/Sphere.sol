pragma solidity ^0.4.2;

contract Sphere {


  uint256 one;
  mapping(address => bool) public memberExists;
  address[] public members;

 function Sphere(uint256 _one) {
   one = _one;

   memberExists[0xBd79c7E5ae6a8604418832Cf8596b56Fb4D40eC9] = true;
   memberExists[0x3b3F565B900cE367e989909C2cE470CD0ce62BA7] = true;
   memberExists[0xCAf4ad7eddb82994B33D5a60b565E3129af80032] = true;
   memberExists[0x8e6a7eEc280a7CB433d9ef66cC60f88F12eDf8a9] = true;

   members[0] = 0xBd79c7E5ae6a8604418832Cf8596b56Fb4D40eC9;
   members[1] = 0x3b3F565B900cE367e989909C2cE470CD0ce62BA7;
   members[2] = 0xCAf4ad7eddb82994B33D5a60b565E3129af80032;
   members[3] = 0x8e6a7eEc280a7CB433d9ef66cC60f88F12eDf8a9;
 }

  modifier fromMember() {
    require(memberExists[msg.sender]);
    _;
  }

  /**
   * Rating
   * * addRatingToMember(address, uint)
   * * * check if we completed last survey round
   * * * set new base/total
   * * * check if we completed this survey, emit LogCompleteRating event
   * * LogCompleteRating
   * * getRatingForMember
   */

    struct Rating {
      uint256 count;
      uint256 total;
    }

    mapping(address => Rating) public ratings;

    event LogCompleteRating(address member, uint256 avgRating);

    function addRatingToMember(address member, uint256 rating) public fromMember returns(bool success) {
      // TODO: restrict 1 rating per period.

      ratings[member].count += one;
      ratings[member].total += rating;

      return true;
    }

    /*function getRatingForMember(address member) public returns(uint rating);*/

}
