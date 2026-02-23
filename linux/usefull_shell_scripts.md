# Shell scripts

<br><br><br>

## reset date time of files and sub directories

```sh
find -type f -exec touch {} +
```

<br><br><br>

## path search

```sh
printf "%s" "$PATH" | tr ':' '\n' | grep "" -i | color_line
```

<br><br><br>

## open TCP server which replays a string

`-l` --> creates server connection

`-n` --> do not lookup DNS

`-v` --> verbose output

```sh
printf '%s' "TEXT TO SHARE" | nc -n -v -l PORT_NUMBER; c_notify_user 2 "server closed"
```

<br><br><br>

## port details

```sh
ss --all --processes --tcp --udp | color_line

netstat -p -u -t -a | color_line
```

<br><br><br>

## kill all processes by port number

`-t` --> show only process ID

`-i` --> show only internet connections related process

`-9` --> kill forcefully

```sh
kill -9 $(lsof -t -i:PORT_NUMBER)
```

<br><br><br>

## media_file_remove_metadata

```sh
# do not remove space character after =
Image-ExifTool/exiftool -all= $DIRECTORY_OR_FILE_TO_CLEAN/
```

Do not forget to check the media file also with `Metadata Cleaner` by `Romain Vigier` (`flatpak`). Because `exiftool` does not support all file types.

<br><br><br>

## media file print all metadata

all params are copied from here: https://exiftool.org/faq.html#Q30

```sh
Image-ExifTool/exiftool -ee3 -U -G3:1 -api requestall=3 -api largefilesupport $DIRECTORY_OR_FILE_TO_CLEAN/
```

<br><br><br>

## media file manipulation

All below ffmpeg parameter's order is important.
 
- convert only format (ffmpeg will auto recognize the source and target file extension):

```sh
ffmpeg -i input_file.mp4 ouput_file.mp3
```

- remove only sound from video:

```sh
ffmpeg -i input_video_file.mp4 -vcodec copy -an ouput_video_file.mp4
```

- remove video from video (the target file contains only sound):

```sh
ffmpeg -i input_video_file.mp4 -vn -acodec copy ouput_sound_file.mp4
```

- split video:

`-c` --> copy

`-ss` --> start time

`-to` --> end time

```sh
ffmpeg -i input_file.mp4 -c copy -ss 00:10:00 -to 00:11:00 output_1_minute_part.mp4
```

- merge (contationation) multiple videos:

```sh
ffmpeg -f concat -safe 0 -i list.txt -c copy video.mp4
```

`list.txt` should include this:

```
file /abc/video_part_1
file /abc/video_part_2
file /abc/video_part_3
```

<br><br><br>

## download media

- `yt-dlp` command downloads from many services. Not only from `Youtube`.
- If `zsh` will give `no matches found` error, make sure `URL` is quoted string with ".
- Do not use audio download command. Because it downloads the full video and then extracts the audio. Prefer the split video via `ffmpeg` command.

Update the application

```sh
yt-dlp -U
```

Adding `PhantomJS` to `PATH` for some web sites.

```sh
PATH=$PATH:PhantomJS/bin
```

download video:

`--write-sub` --> download subtitles. subtitle details are given in: `--sub-lang`

`-i` --> ignore errors. if any error happens then resumes with the next media (if the `URL` is list)

`--rm-cache-dir` --> it removes cache. sometimes cache make bugs. it does not store too much files. so it is better to clean everytime.

`-v` ---> show all logs

```sh
yt-dlp -v --rm-cache-dir -i --write-sub --sub-lang eng,tr,el,en,en-US,en-UK,en-GB $VIDEO_URL
```

<br><br><br>

## find string

below command prints: first the file name and than the founded line (for binary files founded line is not printed)

```sh
grep -r -i "text_to_search" /dir
```

`-l` --> do not print founded line

`-r` --> recursive directories

`-i` --> ignore case

`-n` --> print line number

`-C` --> print surronding (before and after) 5 line of founded file

`-w` --> match only whole words

`-x` --> match only whole lines

`-v` --> inverse match (non-match)

`-exclude '*.txt'` --> file name
`-include '*.txt'` --> file name

`-F` --> fixed string search (search text is not `regex`)

`-E` --> search string is `regex`

simple `regex` examples:

https://github.com/yusuf-daglioglu/tutorials/blob/master/tutorials/regex.md

test `regex` quickly:

```sh
echo 'test123\3' | grep -E '\\'
```