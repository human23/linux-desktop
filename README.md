# linux-desktop

## clone github onto system

git clone https://github.com/human23/linux-desktop.git




## or

git pull





## cd into 
cd linux-desktop/wm




## make sure windows.c is called windows.c and not windows

mv windows windows.c





## manual compile program(skip)

gcc windows.c -o windows -lX11 -lGL -lGLU


## run program
./windows



## remove program

rm -rf linux-desktop






## cmake compile

sudo apt install cmake build-essential



mv CMakeLists CMakeLists.txt



cmake CMakeLists.txt


cmake -S . -B build


cmake --build build


startx ./build/linux-desktop




