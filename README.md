# Configure and Bind your [dev-qa](https://github.com/didalik/role-based-org) leaf

Here, I am trying to follow the good old <i>configure; make; sudo make install</i> [adage](https://tldp.org/LDP/LG/current/smith.html), so <i>make</i> is required to run
```bash
make bash_profile vim_rc
```

Consider also
```bash
echo "$USER ALL=(ALL:ALL) NOPASSWD: ALL" | sudo tee "/etc/sudoers.d/dont-prompt-$USER-for-sudo-password"
```
