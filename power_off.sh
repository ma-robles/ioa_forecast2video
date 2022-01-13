ids=("rpi1" "rpi2" "rpi3" "rpi4" "rpi5" "rpi6")
for id in ${ids[@]}; do
    ssh -t $id "sudo shutdown -hP now"
done
