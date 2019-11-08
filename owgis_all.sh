#python3 owgis_rec_local.py http://pronosticos.unam.mx:8080/global GFS Wind ~/owgis_videos/globalW.mp4 "0.35,[0,0]"
#sleep 2
#python3 owgis_rec_local.py http://pronosticos.unam.mx:8080/global GFS Temperature ~/owgis_videos/globalT.mp4 "0.35,[0,0]"
#sleep 2
python3 owgis_rec_local.py http://pronosticos.unam.mx:8080/meteorologico "República Mexicana" Viento ~/owgis_videos/globalW.mp4 "3.0,[-93.0,22]"
sleep 2
python3 owgis_rec_local.py http://pronosticos.unam.mx:8080/meteorologico "República Mexicana" "Temperatura a 2 metros" ~/owgis_videos/globalT.mp4 "3.0,[-93.0,22]"
sleep 2
./ow_comp_oleaje.sh
./ow_comp_marea.sh
