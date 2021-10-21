// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.6;

import "ds-test/test.sol";
import "./Saygmtome.sol";

interface Ihevm {
    function warp(uint x) external;
}

contract SaygmtomeTest is DSTest {
    Saygmtome me;
    address hevm = 0x7109709ECfa91a80626fF3989D68f67F5b1DD12D;

    function setUp() public {
        me = new Saygmtome();
    }

    function test_say_gm() public {
        string memory returned_value = me.gm();
        assertEq("Gm to you too :)", returned_value);
    }

    function test_say_gm_late_and_pay() public {
        Ihevm(hevm).warp(block.timestamp + 2 days);
        string memory returned_value = me.gm{value: 101 gwei}();
        assertEq("Why didn't you said gm last morning? I'am very sad. At least you sent some ultrasound money...", returned_value);
    }

    function test_say_gm_late() public {
        Ihevm(hevm).warp(block.timestamp + 2 days);
        string memory returned_value = me.gm();
        assertEq("Don't even talk to me.", returned_value);
    }
}