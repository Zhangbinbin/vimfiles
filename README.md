# 利用bundle管理vim插件

## Intallation
1. mv ~/.vimrc ~/.vimrcbk
2. mv ~/.vim ~/.vimbk
3. mkdir ~/.vim
4. git clone git@github.com:Zhangbinbin/vimfiles.git ~/.vim
5. ln -s vimrc ~/.vimrc 
6. Enjoy it



## Refer to the following links and diy your vim

 1.[How To Use Vundle to Manage Vim Plugins on a Linux](https://www.digitalocean.com/community/tutorials/how-to-use-vundle-to-manage-vim-plugins-on-a-linux-vpsgg)

 2.[Archlinux下YouCompleteMe自动补全,爽](http://blog.csdn.net/u010826976/article/details/38659137#plain)

 3.[YouCompleteMe项目主页](https://github.com/Valloric/YouCompleteMe#ubuntu-linux-x64-super-quick-installation)

---
## ArchLinux下配置YouCompleteMe
### 详细步骤请参照链接2 

多少有一点麻烦,主要是clang库的需要在手动编译.

具体操作如下:

    cd ~
    mkdir ycm_build
    cd ycm_build
    cmake -G "Unix Makefiles" -DEXTERNAL_LIBCLANG_PATH=/usr/lib/libclang.so. ~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp
    make ycm_support_libs


