#!/bin/bash

# Quiz questions and options
questions=("What is the 'ls' command used for?"
           "What is the 'cat' command used for?"
           "What is the 'mkdir' command used for?"
           "What is the 'touch' command used for?"
           "What is the 'grep' command used for?"
           "What is the '>>' operator used for?"
           "What is the '>' operator used for?"
           "What is the 'useradd' command used for?"
           "What is the 'apt-get' command used for?"
           "What is the 'free' command used for?")

options=("a) List directory contents    b) Delete a file"
         "a) Create a file             b) Display the contents of a file"
         "a) Change directory          b) Create a new directory"
         "a) Modify file permissions   b) Create a new file or update the timestamp"
         "a) Edit a file               b) Search text in a file"
         "a) Redirect and append output to a file   b) Execute a command as another user"
         "a) Redirect output to a file, overwrite if exists   b) List file contents"
         "a) Add a new user            b) Remove a user"
         "a) Install packages          b) List installed packages"
         "a) Show memory usage         b) Display disk usage")

# Correct answers (must be 'a' or 'b')
correct_answers=("a" "b" "b" "b" "b" "a" "a" "a" "a" "a")

# Initialize score
score=0

# Function to ask questions and handle input
ask_question() {
    local valid_input=0
    while [ "$valid_input" -eq 0 ]; do
        echo "${questions[$1]}"
        echo "${options[$1]}"
        read -p "Choose the correct answer (a or b): " answer
        answer=$(echo "$answer" | tr '[:upper:]' '[:lower:]')  # Normalize to lowercase
        if [[ "$answer" != "a" && "$answer" != "b" ]]; then
            echo "Invalid input. Please enter 'a' or 'b' only."
            echo ""
        else
            valid_input=1
            if [[ "$answer" == "${correct_answers[$1]}" ]]; then
                echo "Correct!"
                ((score++))
            else
                echo "Wrong answer."
            fi
            echo ""
        fi
    done
}

# Loop through all questions
for i in "${!questions[@]}"; do
    ask_question $i
done

# Output the final score
echo "Quiz completed. Your score is $score out of ${#questions[@]}."

# Exit the script
exit 0
