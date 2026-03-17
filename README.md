# linux-desktop

## clone github onto system

git clone https://github.com/human23/linux-desktop.git




## or

git pull




## remove program

rm -rf linux-desktop






## cmake compile

sudo apt install cmake build-essential



mv CMakeLists CMakeLists.txt



cmake CMakeLists.txt


cmake -S . -B build


cmake --build build


startx ./build/linux-desktop




