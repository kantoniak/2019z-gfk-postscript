# PostScript Movie

<p align="center">
  <img src="readme/screenshot-release.png" alt="Release version preview" style="max-width: 100%;" />
</p>

This project is an animation rendered frame by frame from PostScript scripts. Written for the computer graphics assignment.

Watch it online:
* [YouTube: Release version (4K, 60 FPS, 30 seconds)](https://www.youtube.com/watch?v=JQitSqX0GTQ)
* [YouTube: Debug version (4K, 60 FPS, 30 seconds)](https://www.youtube.com/watch?v=3wc4Mt-X6zU)

## Implemented features:

* Path clipping
* Movement along path with rotation
* L-system-based plant modeling
* FPS-independent animations

## Building

Bash script generates PostScript files for each frame (see `frames-ps` folder). Each frame script provides variables like FPS, current frame, current time etc. Then it runs main script file (`frame.ps`) which renders the frame. All frames all converted to a movie using `ffmpeg`.

### Build order

To build the movie enter the main directory and run:

	./setup-deps.sh
    ./setup-frames.sh
    ./render-frames.sh # It takes a while!
    ./render-movie.sh

See `constants.ps` for FPS settings etc.

### Debug mode

<p align="center">
  <img src="readme/screenshot-debug.png" alt="Debug version preview" style="max-width: 100%;" />
</p>

Debug mode renders some helper curves on top of the animation. Debug mode is enabled by default. To turn it off, set `/debug` to `0` in the `frame.ps` file.
