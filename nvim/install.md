# installing [neovim](https://github.com/neovim/neovim) from source 

step by step install 

1.install this packages 

```
sudo apt install ninja-build gettext cmake unzip curl
```

2. clone the neovim repository

```
git clone git@github.com:neovim/neovim.git
```

3. cd to neovim and go to the latest branch

```
$ cd neovim git checkout stable 
```

4. activate cmake and make the magic work

```
$ make CMAKE_BUILD_TYPE=RelWithDebInfo
```

5. activate the make install on the neovim directory 

```
$ sudo make install
```
