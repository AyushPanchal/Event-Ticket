// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

// My first ever blockchain project, yaay!!!

// A simple event management system (for learning purpose)
contract EventTicket {
    
    // State variables
    uint ticketPrice;
    uint ticketCount;
    uint totalCash;
    uint eventStartTime;
    uint eventEndTime;
    string eventName;

    // constructor to initialize statevariables
    constructor(uint _ticketPrice, string memory _eventName) {
        ticketPrice = _ticketPrice;
        ticketCount = 0;
        totalCash = 0;
        eventName = _eventName;
        eventStartTime = block.timestamp; // Set start time as current timestamp
        eventEndTime = eventStartTime + (7 days); // Set end time as 7 days ahead of start time
    }

    // function to purchase ticket
    function buyTicket(uint _ticketCount) public returns (uint totalBill) {
        totalBill = _ticketCount * ticketPrice;
        ticketCount += _ticketCount;
        totalCash += totalBill;
    }

    // getters for state variables
    function getTicketPrice() external view returns (uint) {
        return ticketPrice;
    }

    function getTicketCount() external view returns (uint) {
        return ticketCount;
    }

    function getTotalCash() external view returns (uint) {
        return totalCash;
    }

    function getEventStartTime() external view returns (uint) {
        return eventStartTime;
    }

    function getEventEndTime() external view returns (uint) {
        return eventEndTime;
    }

    function getEventName() external view returns (string memory) {
        return eventName;
    }

}