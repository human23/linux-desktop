#linux-desktop

## cd into 
cd linux-desktop/wm




## make sure windows.c is called windows.c and not windows

mv windows windows.c





## compile program

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


>>>>>>> parent of 7a6e0e8 (Merge branch 'main' of https://github.com/human23/linux-desktop)

[start]
script = { path = "~/Documents/mount_data_disk.sh" }
```

## Dependencies
- [tomlc99](https://github.com/cktan/tomlc99) by [@cktan](https://github.com/cktan)
