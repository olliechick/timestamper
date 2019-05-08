# timestamper
Create a timestamped video from a still image, and an audio file.

## How to run it

```bash
./timestamps.sh <seed-time> <audio> <image> <output> <x-offset> <y-offset> <colour> <seconds>
```

Only `seed-time` is compulsory, but if you want to specify a certain argument, you will also have to specify each argument before it.
To retain default behaviour, use the defaults listed in the table below.

Argument           | Default     | Description 
-------------------|-------------|-------------
`<seed-time>`      | N/A         | The starting timestamp. It should be in the format `yyyy-mm-dd hh:mm`.
`<audio>`          | `audio.mp3` | The filename of the audio file.
`<image>`          |`image.jpg`  | The filename of the image file.
`<output>`         |`output`     | The filename of the output video file (without the `.mp4` extension).
`<x-offset>`       |`65`         | How offset the timestamp should be from the left side of the screen.
`<y-offset>`       |`65`         | How offset the timestamp should be from the top of the screen.
`<colour>`         |`white`      | The colour of the timestamp text.
`<seconds>`        |`00`         | The seconds of the seed time.

### Pre-requisites

Install `ffmpeg`.


### Example

You can generate a video using files in the `sample` folder using the following command:

```bash
./timestamps.sh 2012-12-01 06:35 sample/recording.mp3 sample/background.jpg generated_video 200 100 black 30
```

## Splitting videos

If your videos are too long (e.g. because YouTube has a 12-hour limit for uploads), you can split them using `./split.sh`. This doesn't re-encode the video so it doesn't take long to process.

```bash
./split.sh <input-video> <seconds> <output-name>
```

Argument           | Default     | Description 
-------------------|-------------|-------------
`<input-video>`    | `video.mp4` | The filename of the video to split.
`<seconds>`        | `1800` (30 mins) | How long each split should be (in seconds).
`<output-name>`    | `output`    | The start of the output filenames. They will (by default) be named `output_000.mp4`, `output_001.mp4`, etc.

### Example

You can split the video generated by the `timestamps` example using the following command:

```bash
./split.sh generated_video.mp4 30 gen_vid
```