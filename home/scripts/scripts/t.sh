#!/bin/bash
# https://www.putorius.net/how-to-make-countdown-timer-in-bash.html

# countdown() {
#     while [ $min -ge 0 ]; do
#         while [ $sec -ge 0 ]; do
#             echo -ne "$message$min:$sec\033[0K\r"
#             let "sec=sec-1"
#             sleep 1
#         done
#         sec=59
#         let "min=min-1"
#     done

# }

countdown() {
    sec=4
    while [[ $sec -ge 0 ]]; do
        echo "$sec"
        sec=$((sec-1))
        sleep 1
    done

}

job_time () {
    min=0
    sec=3
    message="JOB: "
    countdown "$min" "$sec" "$message"
}

break_time () {
    min=0
    sec=5
    message="BREAK: "
    countdown "$min" "$sec" "$message"
}

# sec=6
# notify-send -t 1000 "$sec"
# echo $((sec-1))
# sleep 1
# pkill -RTMIN+8 waybar
# notify-send -t 1000 "$sec"
# echo $((sec-1))
# sleep 1
# pkill -RTMIN+8 waybar
# notify-send -t 1000 "$sec"
# echo $((sec-1))
# sleep 1
# pkill -RTMIN+8 waybar

sec=4
echo ${sec}
sec=$((sec-1))
echo ${sec}
sec=$sec
echo ${sec}
sec=$sec
echo $((sec-1))
echo ${sec}

# echo "$(date +%S)"
