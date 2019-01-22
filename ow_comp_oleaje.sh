python3 owgis_rec_local.py http://pronosticos.unam.mx:8080/oleaje/ "Pacífico" "Altura" ~/owgis_videos/oleaje_PAC.mp4 "2.5,[-94.0,23]"
#sleep 2
python3 owgis_rec_local.py http://pronosticos.unam.mx:8080/oleaje/ "Golfo de México" "Altura" ~/owgis_videos/oleaje_GOM.mp4 "2.5,[-94,23]"
#sleep 2
ffmpeg -y -i ~/owgis_videos/oleaje_GOM.mp4 -i ~/owgis_videos/oleaje_PAC.mp4 -filter_complex "blend=all_expr='if(gt(X,Y*1.32),A,B)'" -pix_fmt yuv420p ~/owgis_videos/oleaje_comp.mp4 

