# timestamper
Create a timestamped video from a still image, and an audio file.

## How to run it

```
./timestamps.sh <seed-time> <audio-filename> <image-filename> <x-offset> <y-offset>
```

Argument          | Default     | Description 
------------------|-------------|-------------
`<seed-time>`     | N/A         | The starting timestamp. It should be in the format `yyyy-mm-dd hh:mm` (e.g. `2012-12-01 06:35`).
`<audio-filename>`| `audio.mp3` | The filename of the audio file.
`<image-filename>`|`image.jpg`  | The filename of the image file.
`<x-offset>`      |`65`         | How offset the timestamp should be from the left side of the screen.
`<y-offset>`      |`65`         | How offset the timestamp should be from the top of the screen.


### Example

```
./timestamps.sh 2012-12-01 06:35 recording.mp3 background.jpg 200 200
```
