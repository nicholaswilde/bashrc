# ~/.bashrc: executed by bash(1) for non-login shells.
# Based off of Simple but Cute and Helpful (TM) Bash Settings, https://github.com/rkirti/bashrc

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# Loop over the files in the .shells folder
for file in welcome aliases defaults exports prompt functions screens; do
     if [ -f .shells/$file ]; then
         source .shells/$file
     fi
done
