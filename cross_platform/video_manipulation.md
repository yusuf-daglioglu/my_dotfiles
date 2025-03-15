# EKRANDA BIR BOLGEYI KAPATMA

# 1
ffmpeg -i input.mp4 -vf "drawbox=x=1391:y=937:w=517:h=143:color=black@1:t=fill" -c:a copy output.mp4

Check the above parameter values 7th step of below of Kdenlive. On 7th step, Kdenlive will show you the X,Y,W,H values at the above of UI window.

But before clieck "add title clip..." Kdenlive may show you (a suggestion) to convert resolution. You should accept that to see the correct values.

# 2
- open kdenlive

- drag and drop video to under "sequences"

- move with mouse the video from sequences to 2nd timeline (not first one!)

- project --> "add title clip..." (if it is disabled restart the kdenlive or try appimage.) 

- it will open a popup. click and enable "show background".

- click "add rectangle" icon

- select an area from center and move the rectangle whenever you want.

- click "create title".

- move with mouse the "title clip" from sequences to 1st timeline (not second one!)

- project --> render