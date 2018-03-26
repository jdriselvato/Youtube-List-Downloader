# Youtube-List-Downloader
Allows you to create a list of URLS and download them easily using Youtube-dl

## How to use:
Simply run youtube-playlist-creator.sh

```
./youtube-playlist-creator.sh
```

Then paste in URLS you'd like to download

Then the script will start Youtube-dl and download the videos in the folder of youtube-playlist-creator.sh

## Installation

If you wish to have this as a command in terminal simple add it to `.base_profile`

``
alias yt-playlist="/PATH_TO_SCRIPT/youtube-playlist-creator.sh"
``

To run simply type the following in the folder you wish the youtube videos to download to
```
$ yt-playlist
```
