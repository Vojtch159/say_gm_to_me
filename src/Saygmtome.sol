// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.6;

contract Saygmtome {

    address gm_address;
    uint last_gm;

    modifier OnlyGmAddress() {
        require(msg.sender == gm_address);
        _;
    }

    constructor() {
        gm_address = msg.sender;
        last_gm = block.timestamp;    
    }

    function gm() public payable OnlyGmAddress returns (string memory){
        if(last_gm + 1 days >= block.timestamp) {
            last_gm = block.timestamp;
            return("Gm to you too :)");
        } else {
            if(msg.value > 100 gwei) {
                last_gm = block.timestamp;
                return("Why didn't you said gm last morning? I'am very sad. At least you sent some ultrasound money...");
            } else {
                return("Don't even talk to me.");
            }
        }
    }
}