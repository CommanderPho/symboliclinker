#!/bin/sh

#  InstallScript.command
#  
#
#  Created by Pho Hale on 2/16/17.
#
GLOBAL_SERVICES_DIR="/Library/Services"
SHARED_SERVICES_DIR="/Users/Shared/Library/Services"
USER_SERVICES_DIR="~/Library/Services"

SERVICE_NAME="SymbolicLinker.service"

GLOBAL_SERVICE=${GLOBAL_SERVICES_DIR}"/"${SERVICE_NAME}
SHARED_SERVICE=${SHARED_SERVICES_DIR}"/"${SERVICE_NAME}
USER_SERVICE=${USER_SERVICES_DIR}"/"${SERVICE_NAME}


LOG_FILE=$(DERIVED_FILE_DIR)"/outputLog.txt"
NEW_TARGET_SERVICE=${TARGET_BUILD_DIR}"/"${SERVICE_NAME}

function makeDir {
NEW_DIR=${1-"test_DIR_error"}
OUTPUT="$(mkdir -p "${NEW_DIR}")"
echo "${OUTPUT}"
}

function rmService {
OLD_DIR=${1-"test_SERVICE_error"}
OUTPUT="$(rm -rvf "${OLD_DIR}")"
echo "${OUTPUT}"
}

function makeDirectories {
	echo "Making the Library Directories..."
	makeDir "${GLOBAL_SERVICES_DIR}"
	makeDir "${SHARED_SERVICES_DIR}"
	makeDir "${USER_SERVICES_DIR}"
	echo "...done."
}

function removeExisting {
	echo "Removing existing SymbolicLinker.service instances..."
echo "...Global..."
	rmService "${GLOBAL_SERVICE}"
echo "...Shared..."
	rmService "${SHARED_SERVICE}"
echo "...User..."
	rmService "${USER_SERVICE}"
echo "...done."
}

function echoBuildEnv {
	echo "Echoing Build Env..."
	OUTPUT="$(env)"
	echo "${OUTPUT}" >> "${LOG_FILE}"
	open "${LOG_FILE}"
	echo "...done."
}

function installBuilt {
	echo "Installing newly built service..."
	echo "Copying from ${NEW_TARGET_SERVICE}  -->>>--  ${GLOBAL_SERVICE}"
	cp -R "${NEW_TARGET_SERVICE}" "${GLOBAL_SERVICE}"
	echo "...done."
}

#	Main:
##		Body of code for execution.
echo
echo "Setting-UP SymbolicLinker Service:"
makeDirectories
removeExisting
#echoBuildEnv
installBuilt
echo "Script Complete."
echo

#	End of Program




