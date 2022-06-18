silence.wav:
	ffmpeg -y -f lavfi -i anullsrc=channel_layout=stereo:sample_rate=44100 -acodec pcm_s24le -t 1 silence.wav
