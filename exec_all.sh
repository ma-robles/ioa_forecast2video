date
python -VV
python forecast2video.py base_list.txt ~/videos_forecast
./join_banner.sh ~/videos_forecast/ ~/mordor/ioa_forecast2video/banner/
scp -i ~/.ssh/id_rsa  ~/videos_forecast/join*.mp4 pi@10.20.5.53:~/anima/
scp -i ~/.ssh/id_rsa  ~/videos_forecast/join*.mp4 pi@10.20.5.51:~/anima/
scp -i ~/.ssh/id_rsa  ~/videos_forecast/join*.mp4 pi@10.20.5.46:~/anima/
scp -i ~/.ssh/id_rsa  ~/videos_forecast/join*.mp4 pi@10.20.5.101:~/anima/
scp -i ~/.ssh/id_rsa  ~/videos_forecast/join*.mp4 pi@10.20.5.147:~/anima/
scp -i ~/.ssh/id_rsa  ~/videos_forecast/join*.mp4 pi@10.20.5.148:~/anima/

scp -i ~/.ssh/id_rsa  ~/videos_forecast/pom_120h_altura.mp4 pi@10.20.5.147:~/anima/
scp -i ~/.ssh/id_rsa  ~/videos_forecast/pom_120h_altura.mp4 pi@10.20.5.148:~/anima/
scp -i ~/.ssh/id_rsa  ~/videos_forecast/gom_120h_altura.mp4 pi@10.20.5.147:~/anima/
scp -i ~/.ssh/id_rsa  ~/videos_forecast/gom_120h_altura.mp4 pi@10.20.5.148:~/anima/
scp -i ~/.ssh/id_rsa  ~/videos_forecast/marea_pom.mp4 pi@10.20.5.147:~/anima/
scp -i ~/.ssh/id_rsa  ~/videos_forecast/marea_gom.mp4 pi@10.20.5.148:~/anima/
scp -i ~/.ssh/id_rsa  ~/videos_forecast/d1_temp_prnm.mp4 pi@10.20.5.147:~/anima/
scp -i ~/.ssh/id_rsa  ~/videos_forecast/d2_temp_prnm.mp4 pi@10.20.5.148:~/anima/
scp -i ~/.ssh/id_rsa  ~/videos_forecast/d1_viento_prnm_s.mp4 pi@10.20.5.147:~/anima/
scp -i ~/.ssh/id_rsa  ~/videos_forecast/d2_viento_prnm_s.mp4 pi@10.20.5.148:~/anima/

./shutdown_all.sh
date
