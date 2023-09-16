# Hoyo-mirror downloader

Your ISP sucks? Or Aliyun sucks. Poor network resource? Or you don't have nough stupid disk free to store a **zip** copy to extract it

## How to use

- ### Prepare the directory tree
    - Required tree (some names are optional if you sure know what this thing does)
    ```
    Games
    `-- Mihoyo
        |-- _INSTALL_.bat (copy from bin)
        |-- bin
        |   `-- .. CLONED RELEASE
        |   `-- dispatch.txt
        `-- .. your game dirs here
    ```
    - *(Optional)* Required dependencies, within `bin` directory
        - [`busybox.exe`](https://sourceforge.net/projects/busybox-for-windows/)
        - [`zstd.exe`](https://github.com/facebook/zstd/releases) *because it good*
        - GNU [`wget.exe`](https://eternallybored.org/misc/wget/) *(OPTIONAL)* *it have progress bar so you don't get bored, for god sake*
- ### Know your distributor

    Make sure the http directory have:

    - `_latest` (which will point to the `*.tar.zst` file, relatively, this is good for caching at the edge)
 
    Now you have the download directory which contain both `_latest` and the archive file, put that directory path in `dispatch.txt`. If you unsure what to fill in, read below
  
- ### Run the script (not in the `bin` please)

## How to redistribute

> I will publish the source for the cloner later, but here are the needs to know
>
> The server only need a zstandard'ed tarball of a game. Proposal: The game must be at the root of the archive. Zstd compresion level is optional at your choice. (wget might reject extra `Content-Encoding` anyway)
> 
> The second need is a file named `_latest` which will have content like `files/abfb33c785.tar.zst`, 
>
> *so the client which fill in `dispatch.txt` like `https://mirror.bigblack.co/4e`*
>
> *need  `https://mirror.bigblack.co/4e/latest` and `https://mirror.bigblack.co/4e/files/abfb33c785.tar.zst`*






