echo "Global wind"
scp -i ~/.ssh/id_raspi /home/miguel/owgis_videos/globalW.mp4 pi@10.20.5.53:/home/pi/anima/
scp -i ~/.ssh/id_raspi /home/miguel/owgis_videos/globalW.mp4 pi@10.20.5.51:/home/pi/anima/
scp -i ~/.ssh/id_raspi /home/miguel/owgis_videos/globalW.mp4 pi@10.20.5.46:/home/pi/anima/
scp -i ~/.ssh/id_raspi /home/miguel/owgis_videos/globalW.mp4 pi@10.20.5.101:/home/pi/anima/
echo "Local WS"
scp -i ~/.ssh/id_raspi /home/miguel/owgis_videos/local_WS.mp4   pi@10.20.5.147:/home/pi/anima/
echo "local Temperature"
scp -i ~/.ssh/id_raspi /home/miguel/owgis_videos/local_temp.mp4 pi@10.20.5.148:/home/pi/anima/
echo "global Temperature"
scp -i ~/.ssh/id_raspi /home/miguel/owgis_videos/globalT.mp4 pi@10.20.5.53:/home/pi/anima/
scp -i ~/.ssh/id_raspi /home/miguel/owgis_videos/globalT.mp4 pi@10.20.5.51:/home/pi/anima/
scp -i ~/.ssh/id_raspi /home/miguel/owgis_videos/globalT.mp4 pi@10.20.5.46:/home/pi/anima/
scp -i ~/.ssh/id_raspi /home/miguel/owgis_videos/globalT.mp4 pi@10.20.5.101:/home/pi/anima/
echo "oleaje"

scp -i ~/.ssh/id_raspi /home/miguel/owgis_videos/oleaje_comp.mp4 pi@10.20.5.46:/home/pi/anima/
scp -i ~/.ssh/id_raspi /home/miguel/owgis_videos/oleaje_comp.mp4 pi@10.20.5.101:/home/pi/anima/
scp -i ~/.ssh/id_raspi /home/miguel/owgis_videos/oleaje_comp.mp4 pi@10.20.5.53:/home/pi/anima/
scp -i ~/.ssh/id_raspi /home/miguel/owgis_videos/oleaje_comp.mp4 pi@10.20.5.51:/home/pi/anima/

echo "marea"

scp -i ~/.ssh/id_raspi /home/miguel/owgis_videos/marea_comp.mp4 pi@10.20.5.46:/home/pi/anima/
scp -i ~/.ssh/id_raspi /home/miguel/owgis_videos/marea_comp.mp4 pi@10.20.5.101:/home/pi/anima/
scp -i ~/.ssh/id_raspi /home/miguel/owgis_videos/marea_comp.mp4 pi@10.20.5.53:/home/pi/anima/
scp -i ~/.ssh/id_raspi /home/miguel/owgis_videos/marea_comp.mp4 pi@10.20.5.51:/home/pi/anima/

scp -i ~/.ssh/id_raspi /home/miguel/owgis_videos/HYCOMT.mp4 pi@10.20.5.53:/home/pi/anima/
scp -i ~/.ssh/id_raspi /home/miguel/owgis_videos/HYCOMT.mp4 pi@10.20.5.51:/home/pi/anima/
scp -i ~/.ssh/id_raspi /home/miguel/owgis_videos/HYCOMT.mp4 pi@10.20.5.46:/home/pi/anima/
scp -i ~/.ssh/id_raspi /home/miguel/owgis_videos/HYCOMT.mp4 pi@10.20.5.101:/home/pi/anima/
