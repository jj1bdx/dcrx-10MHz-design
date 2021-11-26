arecord -q -N --disable-softvol --use-strftime -D plughw:4,0 -c 1 -f S16_LE -t wav -r 8000 -d 300 ./RAW_JJ1BDX_Z__%Y-%m-%d_%H-%M-%S.wav
