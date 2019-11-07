/home/miguel/ioa_forecast2video/copy_anima.sh /home/miguel/img/join_aca.mp4
/home/miguel/ioa_forecast2video/copy_anima.sh /home/miguel/img/join_CDMX.mp4
/home/miguel/ioa_forecast2video/copy_anima.sh /home/miguel/img/join_merida.mp4
/home/miguel/ioa_forecast2video/copy_anima.sh /home/miguel/img/join_mexicali.mp4
/home/miguel/ioa_forecast2video/copy_anima.sh /home/miguel/img/join_UNAM.mp4
/home/miguel/ioa_forecast2video/copy_anima.sh /home/miguel/img/join_vcruz.mp4
/home/miguel/ioa_forecast2video/copy_anima.sh /home/miguel/img/d1_pcpcn_acum_3hrs.mp4
/home/miguel/ioa_forecast2video/copy_anima.sh /home/miguel/img/d1_temp_prnm.mp4
/home/miguel/ioa_forecast2video/copy_anima.sh /home/miguel/img/d1_viento_prnm_s.mp4
/home/miguel/ioa_forecast2video/copy_anima.sh /home/miguel/img/d2_pcpcn_acum_3hrs.mp4
/home/miguel/ioa_forecast2video/copy_anima.sh /home/miguel/img/d2_temp_prnm.mp4
/home/miguel/ioa_forecast2video/copy_anima.sh /home/miguel/img/d2_viento_prnm_s.mp4
/home/miguel/ioa_forecast2video/copy_anima.sh /home/miguel/img/gom_120h_altura.mp4
/home/miguel/ioa_forecast2video/copy_anima.sh /home/miguel/img/marea_gom.mp4
/home/miguel/ioa_forecast2video/copy_anima.sh /home/miguel/img/marea_pom.mp4
/home/miguel/ioa_forecast2video/copy_anima.sh /home/miguel/img/pom_120h_altura.mp4
/home/miguel/ioa_forecast2video/copy_anima.sh /home/miguel/img/wo_120h_altura.mp4

scp -i ~/.ssh/id_rsa  /home/miguel/img/join_al_T2_d1.mp4 pi@10.20.5.53:/home/pi/anima/ 
scp -i ~/.ssh/id_rsa  /home/miguel/img/join_al_T2M_d1.mp4 pi@10.20.5.51:/home/pi/anima/
scp -i ~/.ssh/id_rsa  /home/miguel/img/join_al_vi_d1.mp4 pi@10.20.5.46:/home/pi/anima/
scp -i ~/.ssh/id_rsa  /home/miguel/img/join_al_viM_d1.mp4 pi@10.20.5.101:/home/pi/anima/
scp -i ~/.ssh/id_rsa  /home/miguel/img/join_al_pre_d1.mp4 pi@10.20.5.147:/home/pi/anima/
scp -i ~/.ssh/id_rsa  /home/miguel/img/join_al_preM_d1.mp4 pi@10.20.5.148:/home/pi/anima/
scp -i ~/.ssh/id_rsa  /home/miguel/img/join_al_T2_d2.mp4 pi@10.20.5.53:/home/pi/anima/
scp -i ~/.ssh/id_rsa  /home/miguel/img/join_al_T2M_d2.mp4 pi@10.20.5.51:/home/pi/anima/
scp -i ~/.ssh/id_rsa  /home/miguel/img/join_al_vi_d2.mp4 pi@10.20.5.46:/home/pi/anima/
scp -i ~/.ssh/id_rsa  /home/miguel/img/join_al_viM_d2.mp4 pi@10.20.5.101:/home/pi/anima/
scp -i ~/.ssh/id_rsa  /home/miguel/img/join_al_pre_d2.mp4 pi@10.20.5.147:/home/pi/anima/
scp -i ~/.ssh/id_rsa  /home/miguel/img/join_al_preM_d2.mp4 pi@10.20.5.148:/home/pi/anima/
