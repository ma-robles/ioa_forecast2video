date
pwd
python -VV
python forecast2video.py base_list.txt ../videos_forecast
./join_banner.sh ../videos_forecast/ ./banner
scp ../videos_forecast/join*.mp4 rpi1:~/anima/
scp ../videos_forecast/join*.mp4 rpi2:~/anima/
scp ../videos_forecast/join*.mp4 rpi3:~/anima/
scp ../videos_forecast/join*.mp4 rpi4:~/anima/
scp ../videos_forecast/join*.mp4 rpi5:~/anima/
scp ../videos_forecast/join*.mp4 rpi6:~/anima/

scp ../videos_forecast/pom_120h_altura.mp4 rpi5:~/anima/
scp ../videos_forecast/pom_120h_altura.mp4 rpi6:~/anima/
scp ../videos_forecast/gom_120h_altura.mp4 rpi5:~/anima/
scp ../videos_forecast/gom_120h_altura.mp4 rpi6:~/anima/
scp ../videos_forecast/marea_pom.mp4 rpi5:~/anima/
scp ../videos_forecast/marea_gom.mp4 rpi6:~/anima/
scp ../videos_forecast/d1_temp_prnm.mp4 rpi5:~/anima/
scp ../videos_forecast/d2_temp_prnm.mp4 rpi6:~/anima/
scp ../videos_forecast/d1_viento_prnm_s.mp4 rpi5:~/anima/
scp ../videos_forecast/d2_viento_prnm_s.mp4 rpi6:~/anima/

./owgis_all.sh
./copy_owgis.sh
./shutdown_all.sh
date
