# ----------------------------------------------------------#
# 					Ubuntu Bootstrapper v0.2 				#
# 						by @DCdeBrabander 					#
# ----------------------------------------------------------#
#							    							#
# Created to make a clean installation of Ubuntu complete   #
# OR to allow the user more to modify it to owns liking     #
#							    							#
# ----------------------------------------------------------#

echo "Started Ubuntu Bootstrapper, needs root only for installing via APT, don't worry..."
echo;

#first update all installed software to latest stable version
sudo apt -qq update && sudo apt -qq upgrade -y
echo "Software and repositories updated!"
echo;

# Install missing codecs and restricted extra's
sudo apt -qq install ubuntu-restricted-extras
echo "Restricted Extras done!"
echo;

# Install Tweak tool to allow the user to modify Gnome Shell a bit.
sudo apt -qq install gnome-tweaks
echo "Gnome Tweak tool done!"
echo;

# Enable setting: 'minimize to dock' when clicking active window.
# Should be a default setting in Ubuntu if you ask me...
gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize' 
echo "Setting 'minimize active window to dock' enabled!"
echo;

echo "All Done, you can use your Ubuntu even more freely now ;). DCdeBrabander"
echo;
