// SPDX-License-Identifier: MIT
pragma solidity >=0.5.16;

abstract contract IFlightSuretyData {
    function isOperational() external virtual returns(bool);
    function registerAirline(string calldata name, address account) external virtual returns (bool);
    function isAirline(address account) external virtual returns(bool);    
    function isAirlineFunded(address account) external virtual returns(bool);
    function fundAirline(address account) external virtual;
    function getRegisteredAirlines() external view virtual returns(address[] memory);
}