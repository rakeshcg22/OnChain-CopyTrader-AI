// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract AgentRegistry {
    struct Agent {
        address creator;
        string name;
        string strategyHash;
        uint256 twelveMonthReturn;
        uint256 copierCount;
    }

    mapping(uint256 => Agent) public agents;
    uint256 public nextAgentId;

    event AgentRegistered(uint256 agentId, address creator, string name);
    event AgentCopied(uint256 agentId, address copier);

    function registerAgent(string memory name, string memory strategyHash, uint256 return12M) external {
        agents[nextAgentId] = Agent({
            creator: msg.sender,
            name: name,
            strategyHash: strategyHash,
            twelveMonthReturn: return12M,
            copierCount: 0
        });

        emit AgentRegistered(nextAgentId, msg.sender, name);
        nextAgentId++;
    }

    function copyAgent(uint256 agentId) external {
        agents[agentId].copierCount += 1;
        emit AgentCopied(agentId, msg.sender);
    }

    function getAgent(uint256 agentId) external view returns (Agent memory) {
        return agents[agentId];
    }
}
