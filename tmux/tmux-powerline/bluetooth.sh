# Prints the bluetooth status.

TMUX_POWERLINE_SEG_BLUETOOTH_FORMAT_DEFAULT="ON"

generate_segmentrc() {
	read -d '' rccontents  << EORC
# Use status format for the bluetooth. Can be {"ON", "OFF"}.
export TMUX_POWERLINE_SEG_BLUETOOTH_FORMAT="${TMUX_POWERLINE_SEG_BLUETOOTH_FORMAT_DEFAULT}"
EORC
	echo "$rccontents"
}

__process_settings() {
	if [ -z "$TMUX_POWERLINE_SEG_BLUETOOTH_FORMAT" ]; then
		export TMUX_POWERLINE_SEG_BLUETOOTH_FORMAT="${TMUX_POWERLINE_SEG_BLUETOOTH_FORMAT_DEFAULT}"
	fi
}

__bluetoothstatus() {
    status=$(blueutil status | sed 's/.*: \([a-zA-Z\.]*\)$/\1/')

    if [ $status == "on" ]; then
        echo "#[fg=colour46,bold]◉ #[fg=white,bold]"
    fi
}


run_segment() {
	__process_settings
	local opts=""
	if [ "$TMUX_POWERLINE_SEG_BLUETOOTH_FORMAT" == "ON" ]; then
        bluetooth=$(__bluetoothstatus)
	fi

	echo $bluetooth
	return 0
}
