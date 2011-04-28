#!/usr/bin/env ruby -wKU

require File.expand_path('../lib/android-adb', File.dirname(__FILE__))

adb = AndroidAdb::Adb.new({:dry_run => true})
puts "Packages:"
adb.get_packages

puts "Devices:"
adb.get_devices

puts "Uninstall:"
adb.uninstall("com.example.package")
adb.uninstall("com.example.package", {:forwardlock => true})
adb.uninstall("com.example.package", {:reinstall => true})
adb.uninstall("com.example.package", {:sdcard => true})
adb.uninstall("com.example.package", {:forwardlock => true, :reinstall => true, :sdcard => true})
