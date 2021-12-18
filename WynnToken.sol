pragma solidity ^0.5.8;

import "./Context.sol";
import "./ITRC20.sol";
import "./BaseTRC20.sol";

contract WynnToken is ITRC20, TRC20Detailed {
    constructor(address gr) public TRC20Detailed("WYNN GAMES", "WYNN", 6){
        require(gr != address(0), "invalid gr");
        _mint(gr, 50000000 * 10 ** 6);
    }
}
