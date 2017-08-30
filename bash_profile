[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s ~/.bashrc ]] && source ~/.bashrc

##
# Your previous /Users/anbranin/.bash_profile file was backed up as /Users/anbranin/.bash_profile.macports-saved_2016-12-01_at_19:13:22
##

# MacPorts Installer addition on 2016-12-01_at_19:13:22: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.
