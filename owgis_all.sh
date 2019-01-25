date
cd /home/miguel/test_selenium
python3 owgis_rec_local.py http://pronosticos.unam.mx:8080/global GFS Wind ~/owgis_videos/globalW.mp4 "0.1,[-100,0]"
sleep 2
python3 owgis_rec_local.py http://pronosticos.unam.mx:8080/global GFS Temperature ~/owgis_videos/globalT.mp4 "0.1,[-100,0]"
sleep 2
#python3 owgis_rec_global.py http://pronosticos.unam.mx:8080/global HYCOM Temperature ~/owgis_videos/HYCOMT.mp4
#sleep 2
#######
#python3 owgis_rec_local.py http://pronosticos.unam.mx:8080/meteorologico "República Mexicana" "Temperatura a 2 metros" ~/owgis_videos/local_temp.mp4 None
#sleep 2
#python3 owgis_rec_local.py http://pronosticos.unam.mx:8080/meteorologico "República Mexicana" "Viento" ~/owgis_videos/local_WS.mp4 None
#sleep 2
#python3 owgis_rec_local.py http://pronosticos.unam.mx:8080/oleaje/ "Pacífico" "Altura" ~/owgis_videos/oleaje_PAC.mp4 "3,[-100.5,22]"
#sleep 2
#python3 owgis_rec_local.py http://pronosticos.unam.mx:8080/oleaje/ "Golfo de México" "Altura" ~/owgis_videos/oleaje_GOM.mp4 "3.25,[-93.5,24]"
#sleep 2
#python3 owgis_rec_local.py http://pronosticos.unam.mx:8080/mareatormenta/ "Pacífico" "Elevación" ~/owgis_videos/marea_PAC.mp4 "3,[-100.5,22]"
#sleep 2
#python3 owgis_rec_local.py http://pronosticos.unam.mx:8080/mareatormenta/ "Golfo de México" "Elevación" ~/owgis_videos/marea_GOM.mp4 "3.25,[-93.5,24]"
#sleep 2
./ow_comp_oleaje.sh
./ow_comp_marea.sh
date
