sshfile="~/.ssh/id_rsa"
echo "Global wind"
eval scp -i $sshfile /home/miguel/owgis_videos/globalW.mp4 pi@10.20.5.53:/home/pi/anima/
eval scp -i $sshfile /home/miguel/owgis_videos/globalW.mp4 pi@10.20.5.51:/home/pi/anima/
eval scp -i $sshfile /home/miguel/owgis_videos/globalW.mp4 pi@10.20.5.46:/home/pi/anima/
eval scp -i $sshfile /home/miguel/owgis_videos/globalW.mp4 pi@10.20.5.101:/home/pi/anima/
echo "global Temperature"
eval scp -i $sshfile /home/miguel/owgis_videos/globalT.mp4 pi@10.20.5.53:/home/pi/anima/
eval scp -i $sshfile /home/miguel/owgis_videos/globalT.mp4 pi@10.20.5.51:/home/pi/anima/
eval scp -i $sshfile /home/miguel/owgis_videos/globalT.mp4 pi@10.20.5.46:/home/pi/anima/
eval scp -i $sshfile /home/miguel/owgis_videos/globalT.mp4 pi@10.20.5.101:/home/pi/anima/
echo "oleaje"

eval scp -i $sshfile /home/miguel/owgis_videos/oleaje_comp.mp4 pi@10.20.5.46:/home/pi/anima/
eval scp -i $sshfile /home/miguel/owgis_videos/oleaje_comp.mp4 pi@10.20.5.101:/home/pi/anima/
eval scp -i $sshfile /home/miguel/owgis_videos/oleaje_comp.mp4 pi@10.20.5.53:/home/pi/anima/
eval scp -i $sshfile /home/miguel/owgis_videos/oleaje_comp.mp4 pi@10.20.5.51:/home/pi/anima/

echo "marea"

eval scp -i $sshfile /home/miguel/owgis_videos/marea_comp.mp4 pi@10.20.5.46:/home/pi/anima/
eval scp -i $sshfile /home/miguel/owgis_videos/marea_comp.mp4 pi@10.20.5.101:/home/pi/anima/
eval scp -i $sshfile /home/miguel/owgis_videos/marea_comp.mp4 pi@10.20.5.53:/home/pi/anima/
eval scp -i $sshfile /home/miguel/owgis_videos/marea_comp.mp4 pi@10.20.5.51:/home/pi/anima/

