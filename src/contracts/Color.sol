pragma solidity >=0.4.21 <0.6.0;

import "./ERC721Full.sol";

contract Color is ERC721Full {
  string[] public colors;
  mapping(string => bool) _colorExists;

  constructor() ERC721Full("Color", "COLOR") public {
  }

  // E.G. color = "#FFFFFF"
  function mint(string memory _color) public {
    require(!_colorExists[_color],"color already exists");
    uint _id = colors.push(_color);
    _mint(msg.sender, _id);
    _colorExists[_color] = true;
  }

}