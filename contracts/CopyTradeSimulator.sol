// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract CopyTradeSimulator {
    struct Trade {
        uint256 agentId;
        address user;
        string action;
        uint256 timestamp;
    }

    Trade[] public tradeHistory;

    event TradeExecuted(uint256 agentId, address user, string action);

    function executeTrade(uint256 agentId, string memory action) external {
        tradeHistory.push(Trade({
            agentId: agentId,
            user: msg.sender,
            action: action,
            timestamp: block.timestamp
        }));

        emit TradeExecuted(agentId, msg.sender, action);
    }

    function getTradeHistory() external view returns (Trade[] memory) {
        return tradeHistory;
    }
}
