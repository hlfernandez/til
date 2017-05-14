### Convert flac to mp3

I wanted to convert some flac files to mp3. After a quick search, I found out the following solution:

```bash
ffmpeg -i input.flac -ab 320k -map_metadata 0 -id3v2_version 3 output.mp3
```
