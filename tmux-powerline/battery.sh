# LICENSE This code is not under the same license as the rest of the project as it's "stolen". It's cloned from https://github.com/richoH/dotfiles/blob/master/bin/battery and just some modifications are done so it works for my laptop. Check that URL for more recent versions.

TMUX_POWERLINE_SEG_BATTERY_TYPE_DEFAULT="percentage"
TMUX_POWERLINE_SEG_BATTERY_NUM_HEARTS_DEFAULT=5

HEART_FULL="🔋"
HEART_EMPTY=" "
CHARGE="🔌"

generate_segmentrc() {
	read -d '' rccontents  << EORC
# How to display battery remaining. Can be {percentage, cute}.
export TMUX_POWERLINE_SEG_BATTERY_TYPE="${TMUX_POWERLINE_SEG_BATTERY_TYPE_DEFAULT}"
# How may hearts to show if cute indicators are used.
export TMUX_POWERLINE_SEG_BATTERY_NUM_HEARTS="${TMUX_POWERLINE_SEG_BATTERY_NUM_HEARTS_DEFAULT}"
EORC
	echo "$rccontents"
}

run_segment() {
	__process_settings
	if shell_is_osx; then
		battery_status=$(__battery_osx)
	else
		battery_status=$(__battery_linux)
	fi
	[ -z "$battery_status" ] && return


	case "$TMUX_POWERLINE_SEG_BATTERY_TYPE" in
		"percentage")
            if [[ "$battery_status" =~ ^\+[0-9]+$ ]]; then  # charging
                battery_status=$(echo $battery_status | sed s/+//)  # get rid of '+'
                blink=$(expr $(date "+%s") % 2) # make a blink thunderboltz
                if [ $blink == 1 ]; then
                    output="${CHARGE} #[fg=colour46,bold]${battery_status}%"
                else
                    output="${CHARGE} #[fg=white,bold]${battery_status}%"
                fi
            else  # non-charging
                output="${HEART_FULL} ${battery_status}%"
            fi 
			;;
		"cute")
			output=$(__cutinate $battery_status)
	esac
	if [ -n "$output" ]; then
		echo "$output"
	fi
}

__process_settings() {
	if [ -z "$TMUX_POWERLINE_SEG_BATTERY_TYPE" ]; then
		export TMUX_POWERLINE_SEG_BATTERY_TYPE="${TMUX_POWERLINE_SEG_BATTERY_TYPE_DEFAULT}"
	fi
	if [ -z "$TMUX_POWERLINE_SEG_BATTERY_NUM_HEARTS" ]; then
		export TMUX_POWERLINE_SEG_BATTERY_NUM_HEARTS="${TMUX_POWERLINE_SEG_BATTERY_NUM_HEARTS_DEFAULT}"
	fi
}

__battery_osx() {
    ioreg -c AppleSmartBattery -w0 | \
        grep -o '"[^"]*" = [^ ]*' | \
		sed -e 's/= //g' -e 's/"//g' | \
		sort | \
    while read key value; do
        case $key in
            "MaxCapacity")
                export maxcap=$value;;
            "CurrentCapacity")
                export curcap=$value;;
            "ExternalConnected")
                export extconnect=$value;;
            "FullyCharged")
                export fully_charged=$value;;
        esac
        if [[ -n $maxcap && -n $curcap && -n $extconnect ]]; then
           # turn on battery even charging
           # if [[ "$curcap" == "$maxcap" || "$fully_charged" == "Yes" && $extconnect == "Yes"  ]]; then
           #     return
           # fi
            charge=`pmset -g batt | grep -o "[0-9][0-9]*\%" | rev | cut -c 2- | rev`
            # if charging or not
            if [[ "$extconnect" == "Yes" ]]; then
                echo "+$charge" # charging has '+' character
            else
                # charge % color 
                if [ $charge -lt 61 ] && [ $charge -gt 30 ]; then  # 31~60%
                    echo -n "#[fg=colour3,bold]"
                elif [ $charge -lt 31 ] && [ $charge -gt 15 ]; then  # 16~30%
                    echo -n "#[fg=colour202,bold]"
                elif [ $charge -lt 16 ]; then  # 0~15%
                    blink=$(expr $(date "+%s") % 2) # make a blink thunderboltz
                    if [ $blink == 1 ]; then
                        echo -n "#[fg=red,bold]"
                    else
                        echo -n "#[fg=white,bold]"
                    fi
                else  # 61~100%
                    echo -n "#[fg=colour46,bold]"
                fi
                echo "$charge"
            fi
            break
        fi
    done
}

__battery_linux() {
    case "$SHELL_PLATFORM" in
        "linux")
            BATPATH=/sys/class/power_supply/BAT0
            if [ ! -d $BATPATH ]; then
                BATPATH=/sys/class/power_supply/BAT1
            fi
            STATUS=$BATPATH/status
            BAT_FULL=$BATPATH/charge_full
            if [ ! -r $BAT_FULL ]; then
                BAT_FULL=$BATPATH/energy_full
            fi
            BAT_NOW=$BATPATH/charge_now
            if [ ! -r $BAT_NOW ]; then
                BAT_NOW=$BATPATH/energy_now
            fi

            if [ "$1" = `cat $STATUS` -o "$1" = "" ]; then
                __linux_get_bat
            fi
            ;;
        "bsd")
            STATUS=`sysctl -n hw.acpi.battery.state`
            case $1 in
                "Discharging")
                    if [ $STATUS -eq 1 ]; then
                        __freebsd_get_bat
                    fi
                    ;;
                "Charging")
                    if [ $STATUS -eq 2 ]; then
                        __freebsd_get_bat
                    fi
                    ;;
                "")
                    __freebsd_get_bat
                    ;;
            esac
            ;;
    esac
}

__cutinate() {
    perc=$1
    inc=$(( 100 / $TMUX_POWERLINE_SEG_BATTERY_NUM_HEARTS ))


    for i in `seq $TMUX_POWERLINE_SEG_BATTERY_NUM_HEARTS`; do
        if [ $perc -lt 99 ]; then
            echo -n $HEART_EMPTY
        else
            echo -n $HEART_FULL
        fi
        echo -n " "
        perc=$(( $perc + $inc ))
    done
}

__linux_get_bat() {
    bf=$(cat $BAT_FULL)
    bn=$(cat $BAT_NOW)
    if [ $bn -gt $bf ]; then
        bn=$bf
    fi
    echo $(( 100 * $bn / $bf ))
}

__freebsd_get_bat() {
    echo "$(sysctl -n hw.acpi.battery.life)"
}
