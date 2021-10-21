// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.6;

import "ds-test/test.sol";

import "./Saygmtome.sol";

contract SaygmtomeTest is DSTest {
    Saygmtome me;

    function setUp() public {
        me = new Saygmtome();
    }

    function testFail_basic_sanity() public {
        assertTrue(false);
    }

    function test_basic_sanity() public {
        assertTrue(true);
    }
}
