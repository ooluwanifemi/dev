#!/bin/bash

# Function to display the game header
show_header() {
    echo "----------------------------------"
    echo "   Rock, Paper, Scissors Game"
    echo "----------------------------------"
}

# Function to play the game
play_game() {
    choices=("Rock" "Paper" "Scissors")

    echo "Select your choice:"
    echo "1. Rock"
    echo "2. Paper"
    echo "3. Scissors"
    read -p "Enter your choice (1-3): " user_choice

    user_choice=${choices[$user_choice-1]}
    comp_choice=${choices[$RANDOM % ${#choices[@]}]}

    echo "You chose: $user_choice"
    echo "Computer chose: $comp_choice"

    case "$user_choice" in
        "Rock")
            case "$comp_choice" in
                "Rock") result="It's a tie!";;
                "Paper") result="Paper covers rock. You lose!";;
                "Scissors") result="Rock smashes scissors. You win!";;
            esac
        ;;
        "Paper")
            case "$comp_choice" in
                "Rock") result="Paper covers rock. You win!";;
                "Paper") result="It's a tie!";;
                "Scissors") result="Scissors cuts paper. You lose!";;
            esac
        ;;
        "Scissors")
            case "$comp_choice" in
                "Rock") result="Rock smashes scissors. You lose!";;
                "Paper") result="Scissors cuts paper. You win!";;
                "Scissors") result="It's a tie!";;
            esac
        ;;
    esac

    echo $result
}

# Main script execution
clear
show_header
play_game

