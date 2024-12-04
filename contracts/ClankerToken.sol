// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

import {ERC20Upgradeable} from "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";

contract ClankerToken is Initializable, ERC20Upgradeable {
    string private _name;
    string private _symbol;
    uint8 private immutable _decimals;

    address private _deployer;
    uint256 private _fid;
    string private _image;
    string private _castHash;

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(
        string memory name_,
        string memory symbol_,
        uint256 maxSupply_,
        address deployer_,
        uint256 fid_,
        string memory image_,
        string memory castHash_
    ) initializer public {
        __ERC20_init(name_, symbol_);
        _deployer = deployer_;
        _fid = fid_;
        _image = image_;
        _castHash = castHash_;
        _mint(msg.sender, maxSupply_);
    }

    function fid() public view returns (uint256) {
        return _fid;
    }

    function deployer() public view returns (address) {
        return _deployer;
    }

    function image() public view returns (string memory) {
        return _image;
    }

    function castHash() public view returns (string memory) {
        return _castHash;
    }
}