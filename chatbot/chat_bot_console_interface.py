# This will be the script that runs for the interface for the chatbot
# Author: Luis Bobadilla

import chat_bot_test2 as cb

print('--------------------------------------------------------')
print("\t\t\t Welcome to Luis' Chatbot Service")
while True:
    current = input("Me: ")
#    cb.classify(current)
    cb.response(current)
