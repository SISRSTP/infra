#you can add your own aliases here an then run source ~/.bash_aliases to update the aliases on the current terminal session,
# note that you need to be in the same directory as this file to run the commands (infra/scripts).

# Alias to update repositories
alias update_repos='bash ./pullchanges.bash'

# Alias to update Docker images
alias update_images='bash ./update_push_images.bash'

# Compose up alias
alias up='docker compose -f ../docker/docker-compose.yaml up'