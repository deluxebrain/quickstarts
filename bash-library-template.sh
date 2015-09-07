#!/bin/bash
#
# Template for Bash library file to provide cohesive collection of Bash functions;
# 1. File should be sourced from calling script to ensure that the functions are added
# 	to the corresponding environment;
# 2. File should not have any dependencies of its own; any additional custom functions
# 	required for the correct operation of this file should be sourced by the calling
#	script;
#

# Export environment variables
export ENV_VAR="..."

# Private functions, should begin __
__func_1 () {
        # Declare local variables
        # Note, local scopes to current and all called functions
        local variable_1="..."

	# Write out any required information to stdout
	echo "..." >

	# Return status code
	return 0 # or 1 for error
}

# Public functions (to be exported)
public_func () {
}

# Export and protect all public functions from being redeclared
export -f public_func && readonly -f public_func

# Remove all environmental side effects
unset -f __func_1
