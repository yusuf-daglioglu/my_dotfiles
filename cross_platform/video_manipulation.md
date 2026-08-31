# VIDEO MANIPULATION

## CROP

- open `kdenlive`

- drag and drop video to under `sequences`

- move with mouse the video from `sequences` to 2nd `timeline` (not first one!)

- `effects` tab

- search `edge crop`

- move with mouse that effect to 2nd `timeline` (not first one!)

- click on effect inside 2nd `timeline`, then you will the on the right side the pixel settings

- `project` --> `render`

## EKRANDA BIR BOLGEYI KAPATMA

### 1

```sh
ffmpeg  -i input.mp4 -vf "drawbox=x=847:y=665:w=425:h=51:color=black@1:t=fill" -c:v libx264 -crf 15 -preset veryfast -c:a copy output.mp4
```

Check the above parameter values `7th` step of below of `Kdenlive`. On `7th` step, `Kdenlive` will show you the `X`,`Y`,`W`,`H` values at the above of UI window.

But before click `add title clip...` `Kdenlive` may show you (a suggestion) to convert resolution. You should accept that to see the correct values.

### 2

- open `kdenlive`

- drag and drop video to under `sequences`

- move with mouse the video from `sequences` to 2nd `timeline` (not first one!)

- right click on the right (empty side) of 2nd `timeline`

- `add clip` --> `add title clip...`

  if it is disabled restart the `kdenlive` or try `appimage`.

- it will open a popup. click and enable `show background` (to see the video on background).

- click `add rectangle` icon

- select an area from center and move the rectangle whenever you want.

- click `create title`.

- move with mouse the `title clip` from sequences to 1st `timeline` (not second one!)

- `project` --> `render`
