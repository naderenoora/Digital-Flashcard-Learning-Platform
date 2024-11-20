
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Flashcards {
    struct Flashcard {
        string question;
        string answer;
    }

    mapping(address => Flashcard[]) public userFlashcards;

    function addFlashcard(string memory question, string memory answer) public {
        userFlashcards[msg.sender].push(Flashcard(question, answer));
    }

    function getFlashcards() public view returns (Flashcard[] memory) {
        return userFlashcards[msg.sender];
    }
}
