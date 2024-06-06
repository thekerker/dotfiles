
cmd_start=$(date +%s.%N)
ls -l
cmd_end=$(date +%s.%N)
#cmd_dur=$(bc -l <<< "scale=3; ${cmd_end}-${cmd_start}")
cmd_dur=$(echo ${cmd_end} ${cmd_start} | awk '{printf "%.3f", $1 - $2}')
echo "${cmd_dur}s"

