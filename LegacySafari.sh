#!/bin/bash
echo Welcome to LegacySafari v1.0!
echo Please select an option:
echo 1. Enable Legacy Tab Bar
echo 2. Revert to Default Tab Bar
read -r option
if [ "$option" = "1" ] ; then
  echo
  echo "Creating /Library/Preferences/FeatureFlags/Domain/..."
  cd /Library/Preferences
  mkdir /FeatureFlags/Domain/
  echo "Done!"
  echo
  echo "Creating Safari.plist..."
  cd /Library/Preferences/FeatureFlags/Domain/
  mv /Downloads/LegacySafari-main/Safari.plist /Library/Preferences/FeatureFlags/Domain/
  echo "Done!"
  echo
  echo "The legacy tab bar has been applied successfully."
  echo "Your Mac will now reboot..."
  reboot
  
  elif [ "$option" = "2" ] ; then
  echo
  echo "Reverting to default tab bar..."
  cd /Library/Preferences
  rm -r /FeatureFlags/Domain/
  echo "Done!"
  echo
  echo "The default tab bar has been applied successfully."
  echo "Your Mac will now reboot..."
  reboot
fi
  
  
  
  
