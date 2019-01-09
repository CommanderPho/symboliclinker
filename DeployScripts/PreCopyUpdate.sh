#!/bin/sh

#  PreCopyUpdate.sh
#  
#
#  Created by Pho Hale on 01/08/19.
#

# SRCROOT="/Users/pho/Repo/symboliclinker"
#SRCROOT="/Users/pho/Dropbox/Coding/Executables/symboliclinker"
echo "SRCROOT: $SRCROOT"

# //touch "/Users/pho/Dropbox/Coding/Executables/symboliclinker/English.lproj/ServicesMenu.strings"
echo "touching: $(SRCROOT)/English.lproj/ServicesMenu.strings"
#touch "$(SRCROOT)/English.lproj/ServicesMenu.strings"

# //touch "/Users/pho/Dropbox/Coding/Executables/symboliclinker/English.lproj/InfoPlist.strings"
echo "touching: $(SRCROOT)/English.lproj/InfoPlist.strings"
#touch "$(SRCROOT)/English.lproj/InfoPlist.strings"

# //touch "/Users/pho/Dropbox/Coding/Executables/symboliclinker/English.lproj/Localizable.strings"
echo "touching: $(SRCROOT)/English.lproj/Localizable.strings"
#touch "$(SRCROOT)/English.lproj/Localizable.strings"

# //touch "/Users/pho/Dropbox/Coding/Executables/symboliclinker/SymbolicLinkerService-Info.plist"
echo "touching: $(SRCROOT)/English.lproj/SymbolicLinkerService-Info.plist"
#touch "$(SRCROOT)/English.lproj/SymbolicLinkerService-Info.plist"

# “Show environment variables in build log” = TRUE

## Input Files
$(SRCROOT)/English.lproj/ServicesMenu.strings
$(SRCROOT)/English.lproj/InfoPlist.strings
$(SRCROOT)/English.lproj/Localizable.strings
$(SRCROOT)/SymbolicLinkerService-Info.plist