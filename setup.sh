#!binbash

echo Running script in rootros_ws

echo Updating apt packages...
apt update -y

echo Updating rosdep...
rosdep update

echo Installing dependencies with rosdep...
rosdep install --from-paths src --ignore-src --rosdistro noetic -y

echo Building catkin workspace...
catkin build

echo Sourcing setup.bash...
source develsetup.bash

echo Starting bash shell...
bash