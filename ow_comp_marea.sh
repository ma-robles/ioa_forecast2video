python3 owgis_rec_local.py http://pronosticos.unam.mx:8080/mareatormenta/ "Pacífico" "Elevación" ../owgis_videos/marea_PAC.mp4 "3.0,[-93.0,22]"
#sleep 2
python3 owgis_rec_local.py http://pronosticos.unam.mx:8080/mareatormenta/ "Golfo de México" "Elevación" ../owgis_videos/marea_GOM.mp4 "3.0,[-93.0,22]"
#sleep 2
ffmpeg -y -i ../owgis_videos/marea_GOM.mp4 -i ../owgis_videos/marea_PAC.mp4 -filter_complex "blend=all_expr='if(gt(X,Y*1.3),A,B)'" -pix_fmt yuv420p ../owgis_videos/marea_comp.mp4 

