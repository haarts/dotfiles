function fish_right_prompt
    set -l previous_status $status
    if test $CMD_DURATION -gt 1000
        set -l duration (date -u -d@(echo "$CMD_DURATION/1000"|bc -l) +%H:%M:%S)
        echo $duration
        echo '/'
    end

    echo $previous_status
    echo '/'
    set -l load1m (uptime | grep -o '[0-9]\+\.[0-9]\+' | head -n1)
    echo $load1m
end
