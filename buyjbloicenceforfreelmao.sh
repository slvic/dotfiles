#!/bin/bash

killall goland

rm -f ~/Library/Application\ Support/JetBrains/GoLand202*/options/other.xml
rm -f ~/Library/Application\ Support/JetBrains/GoLand202*/goland.key
rm -f ~/Library/Application\ Support/JetBrains/GoLand202*/goland.key.backup
rm -f ~/Library/Application\ Support/JetBrains/GoLand202*/goland.key.backup

rm -f ~/Library/Preferences/com.apple.java.util.prefs.plist
rm -f ~/Library/Preferences/com.jetbrains.*.plist
rm -f ~/Library/Preferences/jetbrains.*.*.plist

killall cfprefsd
