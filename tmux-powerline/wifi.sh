# Prints the wifi status.

TMUX_POWERLINE_SEG_WIFI_FORMAT_DEFAULT="both"

generate_segmentrc() {
	read -d '' rccontents  << EORC
# Use status or wifiname or both format for the wifi. Can be {"status, wifiname, both"}.
export TMUX_POWERLINE_SEG_WIFI_FORMAT="${TMUX_POWERLINE_SEG_WIFI_FORMAT_DEFAULT}"
EORC
	echo "$rccontents"
}

__process_settings() {
	if [ -z "$TMUX_POWERLINE_SEG_WIFI_FORMAT" ]; then
		export TMUX_POWERLINE_SEG_WIFI_FORMAT="${TMUX_POWERLINE_SEG_WIFI_FORMAT_DEFAULT}"
	fi
}

__wifistatus() {
    status=$(networksetup -getairportpower en0 | sed 's/.*: \([a-zA-Z\.]*\)$/\1/')
    if [ $status == "On" ]; then
        echo "#[fg=colour46,bold]◉ #[fg=white,bold]"
    else
        echo "#[fg=red,bold]◎ #[fg=white,bold]"
    fi
}

__wifiname() {
    status=$(networksetup -getairportpower en0 | sed 's/.*: \([a-zA-Z\.]*\)$/\1/')
    wifiname=$(networksetup -getairportnetwork en0 | sed 's/.*: \(.*\)$/\1/')
    if [ $status == "On" ]; then
        echo $wifiname
    else
        echo "OFF"
    fi
}


run_segment() {
	__process_settings
	local opts=""
	if [ "$TMUX_POWERLINE_SEG_WIFI_FORMAT" == "status" ]; then
        wifi=$(__wifistatus)
    elif [ "$TMUX_POWERLINE_SEG_WIFI_FORMAT" == "wifiname" ]; then
        wifi=$(__wifiname)
    else
        wifi="$(__wifistatus)$(__wifiname)"
	fi

	echo $wifi
	return 0
}
