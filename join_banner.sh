ffmpeg -y -i $1/meteo_acapulco.mp4 -vf scale=-1:1080 $1/meteo_acapulco2.mp4
ffmpeg -y -i $1/meteo_acapulco2.mp4 -i $2/serieAcapulco.jpg  -filter_complex '[0:v]pad=1920:1080[int];[int][1:v]overlay=1356:0[vid]' -map [vid] -r 30 -c:v libx264 -pix_fmt yuv420p -crf 23 -preset veryfast $1/join_aca.mp4

ffmpeg -y -i $1/meteo_CDMX.mp4 -vf scale=-1:1080 $1/meteo_CDMX2.mp4
ffmpeg -y -i $1/meteo_CDMX2.mp4 -i $2/serieCDMX.jpg  -filter_complex '[0:v]pad=1920:1080[int];[int][1:v]overlay=1356:0[vid]' -map [vid] -c:v libx264 -pix_fmt yuv420p -crf 23 -preset veryfast $1/join_CDMX.mp4

ffmpeg -y -i $1/meteo_merida.mp4 -vf scale=-1:1080 $1/meteo_merida2.mp4
ffmpeg -y -i $1/meteo_merida2.mp4 -i $2/serieMerida.jpg  -filter_complex '[0:v]pad=1920:1080[int];[int][1:v]overlay=1356:0[vid]' -map [vid] -c:v libx264 -pix_fmt yuv420p -crf 23 -preset veryfast $1/join_merida.mp4

ffmpeg -y -i $1/meteo_mexicali.mp4 -vf scale=-1:1080 $1/meteo_mexicali2.mp4
ffmpeg -y -i $1/meteo_mexicali2.mp4 -i $2/serieMexicali.jpg  -filter_complex '[0:v]pad=1920:1080[int];[int][1:v]overlay=1356:0[vid]' -map [vid] -c:v libx264 -pix_fmt yuv420p -crf 23 -preset veryfast $1/join_mexicali.mp4

ffmpeg -y -i $1/meteo_UNAM.mp4 -vf scale=-1:1080 $1/meteo_UNAM2.mp4
ffmpeg -y -i $1/meteo_UNAM2.mp4 -i $2/serieCU.jpg  -filter_complex '[0:v]pad=1920:1080[int];[int][1:v]overlay=1356:0[vid]' -map [vid] -c:v libx264 -pix_fmt yuv420p -crf 23 -preset veryfast $1/join_UNAM.mp4

ffmpeg -y -i $1/meteo_vcruz.mp4 -vf scale=-1:1080 $1/meteo_vcruz2.mp4
ffmpeg -y -i $1/meteo_vcruz2.mp4 -i $2/serieVeracruz.jpg  -filter_complex '[0:v]pad=1920:1080[int];[int][1:v]overlay=1356:0[vid]' -map [vid] -c:v libx264 -pix_fmt yuv420p -crf 23 -preset veryfast $1/join_vcruz.mp4

ffmpeg -y -i $1/al_T2_d1.mp4 -vf scale=-1:1080 $1/al_T2_d1_2.mp4
ffmpeg -y -i $1/al_T2_d1_2.mp4 -i $2/TEMP_republica_informacionAlertas.jpg  -filter_complex '[0:v]pad=1920:1080[int];[int][1:v]overlay=1356:0[vid]' -map [vid] -c:v libx264 -pix_fmt yuv420p -crf 23 -preset veryfast $1/join_al_T2_d1.mp4

ffmpeg -y -i $1/al_T2M_d1.mp4 -vf scale=-1:1080 $1/al_T2_d1_2.mp4
ffmpeg -y -i $1/al_T2_d1_2.mp4 -i $2/TEMP_maxmin_republica_informacionAlertas.jpg  -filter_complex '[0:v]pad=1920:1080[int];[int][1:v]overlay=1356:0[vid]' -map [vid] -c:v libx264 -pix_fmt yuv420p -crf 23 -preset veryfast $1/join_al_T2M_d1.mp4

ffmpeg -y -i $1/al_vi_d1.mp4 -vf scale=-1:1080 $1/al_T2_d1_2.mp4
ffmpeg -y -i $1/al_T2_d1_2.mp4 -i $2/VIENTO_republica_informacionAlertas.jpg  -filter_complex '[0:v]pad=1920:1080[int];[int][1:v]overlay=1356:0[vid]' -map [vid] -c:v libx264 -pix_fmt yuv420p -crf 23 -preset veryfast $1/join_al_vi_d1.mp4

ffmpeg -y -i $1/al_viM_d1.mp4 -vf scale=-1:1080 $1/al_T2_d1_2.mp4
ffmpeg -y -i $1/al_T2_d1_2.mp4 -i $2/VIENTO_max_republica_informacionAlertas.jpg  -filter_complex '[0:v]pad=1920:1080[int];[int][1:v]overlay=1356:0[vid]' -map [vid] -c:v libx264 -pix_fmt yuv420p -crf 23 -preset veryfast $1/join_al_viM_d1.mp4

ffmpeg -y -i $1/al_pre_d1.mp4 -vf scale=-1:1080 $1/al_T2_d1_2.mp4
ffmpeg -y -i $1/al_T2_d1_2.mp4 -i $2/PREC_republica_informacionAlertas.jpg  -filter_complex '[0:v]pad=1920:1080[int];[int][1:v]overlay=1356:0[vid]' -map [vid] -c:v libx264 -pix_fmt yuv420p -crf 23 -preset veryfast $1/join_al_pre_d1.mp4

ffmpeg -y -i $1/al_preM_d1.mp4 -vf scale=-1:1080 $1/al_T2_d1_2.mp4
ffmpeg -y -i $1/al_T2_d1_2.mp4 -i $2/PREC_max_republica_informacionAlertas.jpg  -filter_complex '[0:v]pad=1920:1080[int];[int][1:v]overlay=1356:0[vid]' -map [vid] -c:v libx264 -pix_fmt yuv420p -crf 23 -preset veryfast $1/join_al_preM_d1.mp4

ffmpeg -y -i $1/al_T2_d2.mp4 -vf scale=-1:1080 $1/al_T2_d1_2.mp4
ffmpeg -y -i $1/al_T2_d1_2.mp4 -i $2/TEMP_centro_informacionAlertas.jpg  -filter_complex '[0:v]pad=1920:1080[int];[int][1:v]overlay=1356:0[vid]' -map [vid] -c:v libx264 -pix_fmt yuv420p -crf 23 -preset veryfast $1/join_al_T2_d2.mp4

ffmpeg -y -i $1/al_T2M_d2.mp4 -vf scale=-1:1080 $1/al_T2_d1_2.mp4
ffmpeg -y -i $1/al_T2_d1_2.mp4 -i $2/TEMP_maxmin_centro_informacionAlertas.jpg  -filter_complex '[0:v]pad=1920:1080[int];[int][1:v]overlay=1356:0[vid]' -map [vid] -c:v libx264 -pix_fmt yuv420p -crf 23 -preset veryfast $1/join_al_T2M_d2.mp4

ffmpeg -y -i $1/al_vi_d2.mp4 -vf scale=-1:1080 $1/al_T2_d1_2.mp4
ffmpeg -y -i $1/al_T2_d1_2.mp4 -i $2/VIENTO_centro_informacionAlertas.jpg  -filter_complex '[0:v]pad=1920:1080[int];[int][1:v]overlay=1356:0[vid]' -map [vid] -c:v libx264 -pix_fmt yuv420p -crf 23 -preset veryfast $1/join_al_vi_d2.mp4

ffmpeg -y -i $1/al_viM_d2.mp4 -vf scale=-1:1080 $1/al_T2_d1_2.mp4
ffmpeg -y -i $1/al_T2_d1_2.mp4 -i $2/VIENTO_max_centro_informacionAlertas.jpg  -filter_complex '[0:v]pad=1920:1080[int];[int][1:v]overlay=1356:0[vid]' -map [vid] -c:v libx264 -pix_fmt yuv420p -crf 23 -preset veryfast $1/join_al_viM_d2.mp4

ffmpeg -y -i $1/al_pre_d2.mp4 -vf scale=-1:1080 $1/al_T2_d1_2.mp4
ffmpeg -y -i $1/al_T2_d1_2.mp4 -i $2/PREC_centro_informacionAlertas.jpg  -filter_complex '[0:v]pad=1920:1080[int];[int][1:v]overlay=1356:0[vid]' -map [vid] -c:v libx264 -pix_fmt yuv420p -crf 23 -preset veryfast $1/join_al_pre_d2.mp4

ffmpeg -y -i $1/al_preM_d2.mp4 -vf scale=-1:1080 $1/al_T2_d1_2.mp4
ffmpeg -y -i $1/al_T2_d1_2.mp4 -i $2/PREC_max_centro_informacionAlertas.jpg  -filter_complex '[0:v]pad=1920:1080[int];[int][1:v]overlay=1356:0[vid]' -map [vid] -c:v libx264 -pix_fmt yuv420p -crf 23 -preset veryfast $1/join_al_preM_d2.mp4
