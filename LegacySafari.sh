#!/bin/bash
echo Welcome to LegacySafari v1.0!
echo Please select an option:
echo 1. Enable Legacy Tab Bar
echo 2. Revert to Stock
read -r option
if [ "$option" = "1" ] ; then
  echo
  echo "Creating /Library/Preferences/FeatureFlags/Domain/Safari.plist..."
  cd /Library/Preferences/
  mkdir FeatureFlags/Domain/
  
