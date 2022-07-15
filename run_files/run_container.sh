image_name=jackgray/pytrack_narc:v1.0.6
data_path=/home/jackgray/Code/PyTrack-NARC/MORE_Project
# data_path=/home/narclab/EYETRACKING/MORE_Project
container_data=/opt/MORE_Project

docker run \
-it \
-e DISPLAY=$DISPLAY \
-v /tmp/.X11-unix:/tmp/.X11-unix:rw \
--mount type=bind,source=${data_path},destination=${container_data} \
$image_name
