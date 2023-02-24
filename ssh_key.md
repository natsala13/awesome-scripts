# generate key pair

Run the command above, choose the default location with some meaningful name, and don't use a passphrase.

`ssh-keygen -t rsa -b 4096 -C "comment"`

This will generate a new key pair id_rsa_name and id_rsa_name.pub in `~/.ssh/`


# Add the key to the ssh-agent so that the machine will know to use it.

`ssh-add ~/.ssh/id_rsa_<name>`

# Copy the key to remote server

`ssh-copy-id remote_username@server_ip_address`

This command will send the key to the remote machine which will add it to its known hosts.

# Verify known hosts of remote machine

Go on the remote machine and cat the file `~/.ssh/known_hosts`

## Voila
