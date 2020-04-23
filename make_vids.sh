#For mpeg from jpeg
cd output-train/
#mencoder "mf://*.jpg" -mf type=jpg:fps=15 -o output.mpg -speed 1 -ofps 30 -ovc lavc -lavcopts vcodec=mpeg2video:vbitrate=2500 -oac copy -of mpeg

#For mp4 rom jpg
ffmpeg -framerate 25 -i "frame%04d.jpg" -c:v libx264 -profile:v high -crf 20 -pix_fmt yuv420p ../det_output.mp4