#!/bin/zsh

echo -n "Enter email address: "
read mail
#mail='example@mail'

# Generate ssh keys
ssh-keygen -t ed25519 -C $mail
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519

