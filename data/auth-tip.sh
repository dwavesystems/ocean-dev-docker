#!/usr/bin/env bash

print_auth_tip() {
    cat <<-END
		Welcome to Ocean development environment!

		To authorize Ocean to access Leap (and retrieve your Solver API token) please run:

		    dwave setup --oob

		More details available in the documentation: https://docs.dwavequantum.com/auth.
	END
}

print_config_tip() {
    cat <<-END
		Since Ocean is already authorized to access Leap, to configure Solver API access please run:

		    dwave config create --auto-token

		More details available in the documentation: https://docs.dwavequantum.com/auth.
	END
}

# ocean configured? quick path
if grep token ~/.config/dwave/dwave.conf >/dev/null 2>&1; then exit; fi

if ! command -v dwave >/dev/null 2>&1; then
    # something is wrong, dwave command should be present
    exit
fi

if dwave auth get access-token >/dev/null 2>&1; then
    print_config_tip
else
    print_auth_tip
fi
