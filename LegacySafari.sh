#!/bin/bash

# Set paths
PREFERENCES="/Library/Preferences"
FLAG_DIR="FeatureFlags/Domain/"
FLAG_COMPLETE_DIR="${PREFERENCES}/${FLAG_DIR}"
SAFARI_PLIST="https://raw.githubusercontent.com/InternalStore/LegacySafari/HEAD/Safari.plist"

enableLegacyTabBar () {
  echo
  echo "Creating ${FLAG_COMPLETE_DIR}..."
  mkdir -p "${FLAG_COMPLETE_DIR}"
  echo "Done!"
  
  echo
  echo "Creating Safari.plist..."
  cd "${FLAG_COMPLETE_DIR}"
  curl -fsSL "${SAFARI_PLIST}" -O
  cd "$OLDPWD"
  echo "Done!"
  
  echo
  echo "The legacy tab bar has been applied successfully."
}

enableDefaultTabBar () {
  echo
  echo "Reverting to default tab bar..."
  cd "${PREFERENCES}"
  rm -r "${FLAG_DIR}"
  cd "$OLDPWD"
  echo "Done!"
  
  echo
  echo "The default tab bar has been applied successfully."
}

askToRebootDevice () {
  echo
  echo "Reboot your Mac to apply the changes. Do you want to reboot now?"
  echo "1. Reboot now"
  echo "2. Nevermind"
  read -r rebootNow
  echo
  if [ "$rebootNow" = "1" ] ; then
    echo "Your Mac will now reboot..."
    reboot
  else
    echo "Your changes will apply after the next reboot."
  fi
}

# Welcome message
echo "Welcome to LegacySafari v1.0!"
echo "Please select an option:"
echo "1. Enable Legacy Tab Bar"
echo "2. Revert to Default Tab Bar"
read -r option

if [ "$option" = "1" ]; then
  enableLegacyTabBar
  askToRebootDevice
elif [ "$option" = "2" ]; then
  enableDefaultTabBar
  askToRebootDevice
fi

