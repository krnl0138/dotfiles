#!/bin/sh
#### Basic timer

usage() {                                      # Function: Print a help message.
  echo "Usage: $0 [ -s SEC ] [ -m MIN ] [ -h HRS ] [ -l MESSAGE ]" 1>&2
}
exit_abnormal() {                              # Function: Exit with error.
  usage
  exit 1
}
period_check() {
    re_isanum='^[0-9]+$'                     # Regex: match whole numbers only
    if ! [[ $PERIOD =~ $re_isanum ]] ; then   # if $TIMES not a whole number:
        echo "Error: PERIOD must be a positive, whole number."
        exit_abnormal
        exit 1
    elif [ $PERIOD -eq "0" ]; then            # If it's zero:
        echo "Error: PERIOD must be greater than zero."
        exit_abnormal                          # Exit abnormally.
    fi
}
pomodoro() {
    JOB_TIME=25
    BREAK_TIME=5
    JOB_MES="1POMODORO Job!"
    BREAK_MES="1POMODORO Break!"
    # while true; do
        notify-send $JOB_MES && sleep $JOB_TIME && notify-send $BREAK_MES && sleep $BREAK_TIME
    # done
}

while getopts ":s:m:h:l:" options; do              # Loop: Get the next option;
                                               # use silent error checking;
                                               # options n and t take arguments.
  case "${options}" in                         #
    s)                                         # If the option is n,
      PERIOD=${OPTARG}                         # set $NAME to specified value.
      period_check "$PERIOD"
      ;;
    m)                                         # If the option is t,
      PERIOD=${OPTARG}                         # Set $TIMES to specified value.
      period_check "$PERIOD"
      PERIOD=$((PERIOD*60))                    # Set $TIMES to specified value.
      ;;
    h)                                         # If the option is n,
      PERIOD=${OPTARG}                         # Set $TIMES to specified value.
      period_check "$PERIOD"
      PERIOD=$((PERIOD*3600))                  # Set $TIMES to specified value.
      ;;
    l)                                         # If the option is n,
      MESSAGE=${OPTARG}                        # Set $TIMES to specified value.
      ;;
    # p)                                         # If the option is n,
    #   pomodoro
    #   ;;
    :)                                         # If expected argument omitted:
      echo "Error: -${OPTARG} requires an argument."
      exit_abnormal                            # Exit abnormally.
      ;;
    *)                                         # If unknown (any other) option:
      exit_abnormal                            # Exit abnormally.
      ;;
  esac
done

if [[ $1 == "pomodoro" ]]; then
    pomodoro
fi

notif_time=12000
sleep $PERIOD && notify-send "TIMER" "${MESSAGE:-Timer!!}"
exit 0                                         # Exit normally.
